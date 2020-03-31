/*
 * webs.c -- GoAhead Embedded HTTP webs server
 *
 * Copyright (c) GoAhead Software Inc., 1995-2000. All Rights Reserved.
 *
 * See the file "license.txt" for usage and redistribution license requirements
 *
 * $Id: webs.c,v 1.16 2009/09/03 05:04:41 keith_huang Exp $
 */

/******************************** Description *********************************/

/*
 *	This module implements an embedded HTTP/1.1 web server. It supports
 *	loadable URL handlers that define the nature of URL processing performed.
 */

/********************************* Includes ***********************************/
#include <malloc.h>
#include	"wsIntrn.h"
#ifdef DIGEST_ACCESS_SUPPORT
	#include	"websda.h"
#endif


/********************************** Defines ***********************************/
#define  CTYPE_MULTIPART		T("multipart/form-data")
#define  BOUNDARY_KWD           "boundary="
#if defined(HTTP_FILE_SERVER_SUPPORTED)
extern void websReSettimeout(webs_t wp);
extern void websCheckRequest(webs_t wp, char_t *request_key, char_t *request_data);
extern void websCheckAction(webs_t wp);
extern void websConfirmtimeout(webs_t wp, int read_len);
extern void websCheckSort(webs_t wp, char_t *request_url);
extern void webshandleDIRRequest(webs_t wp);
extern int websDataWrite2File(webs_t wp, char_t *socket_data, int data_len);
extern void webs_t_init(webs_t wp);
extern void webs_t_free(webs_t wp);
extern void websTimeout_httpfiles(webs_t wp, int index);
extern void websRemoveBrokenFile(webs_t wp, int read_len);
char file_data[PAGE_READ_BUFSIZE]={0};
#endif

/******************************** Global Data *********************************/

websStatsType	websStats;				/* Web access stats */
webs_t			*webs;					/* Open connection list head */
sym_fd_t		websMime;				/* Set of mime types */
int				websMax;				/* List size */
int				websPort;				/* Listen port for server */
char_t			websHost[64];			/* Host name for the server */
char_t			websIpaddr[64];			/* IP address for the server */
char_t			*websHostUrl = NULL;	/* URL to access server */
char_t			*websIpaddrUrl = NULL;	/* URL to access server */

/*********************************** Locals ***********************************/
/*
 *	Standard HTTP error codes
 */

websErrorType websErrors[] = {
	{ 200, T("Data follows") },
	{ 204, T("No Content") },
	{ 301, T("Redirect") },
	{ 302, T("Redirect") },
	{ 304, T("User local copy") },
	{ 400, T("Page not found") },
	{ 401, T("Unauthorized") },
	{ 403, T("Forbidden") },
	{ 404, T("Site or Page Not Found") },
	{ 408, T("Request Timeout") },
	{ 405, T("Access Denied") },
	{ 500, T("Web Error") },
	{ 501, T("Not Implemented") },
	{ 503, T("Site Temporarily Unavailable. Try again.") },
	{ 0, NULL }
};

#ifdef WEBS_LOG_SUPPORT
static char_t	websLogname[64] = T("log.txt");	/* Log filename */
static int 		websLogFd;						/* Log file handle */
#endif

static int		websListenSock;					/* Listen socket */
// david
//static char_t	websRealm[64] = T("GoAhead");	/* Realm name */
static char_t	websRealm[64] = T("Wireless Access Point");	/* Realm name */

static int		websOpenCount = 0;		/* count of apps using this module */

/**************************** Forward Declarations ****************************/


static char_t 	*websErrorMsg(int code);
#if !defined(HTTP_FILE_SERVER_SUPPORTED)
static int 		websGetInput(webs_t wp, char_t **ptext, int *nbytes);
#else
static int 		websGetInput(webs_t wp, char_t **ptext, int *nbytes, int *dynamic);
#endif
static int 		websParseFirst(webs_t wp, char_t *text);
static void 	websParseRequest(webs_t wp);
static void		websSocketEvent(int sid, int mask, int data);
#if !defined(HTTP_FILE_SERVER_SUPPORTED)
static int		websGetTimeSinceMark(webs_t wp);
#else
int websGetTimeSinceMark(webs_t wp);
#endif
static char_t*	 extractUploadedFileContent(webs_t wp, int * lenContent);

#ifdef WEBS_LOG_SUPPORT
static void 	websLog(webs_t wp, int code);
#endif
#ifdef WEBS_IF_MODIFIED_SUPPORT
static time_t	dateParse(time_t tip, char_t *cmd);
#endif

/*********************************** Code *************************************/
/*
 *	Open the GoAhead WebServer
 */
int websOpenServer(int port, int retries)
{
	websMimeType	*mt;

	if (++websOpenCount != 1) {
		return websPort;
	}

	a_assert(port > 0);
	a_assert(retries >= 0);

#ifdef WEBS_PAGE_ROM
	websRomOpen();
#endif

	webs = NULL;
	websMax = 0;
/*
 *	Create a mime type lookup table for quickly determining the content type
 */
	websMime = symOpen(WEBS_SYM_INIT * 4);
	a_assert(websMime >= 0);
	for (mt = websMimeList; mt->type; mt++) {
		symEnter(websMime, mt->ext, valueString(mt->type, 0), 0);
	}

/*
 *	Open the URL handler module. The caller should create the required
 *	URL handlers after calling this function.
 */
	if (websUrlHandlerOpen() < 0) {
		return -1;
	}
	websFormOpen();

#ifdef WEBS_LOG_SUPPORT
/*
 *	Optional request log support
 */
	websLogFd = gopen(websLogname, O_CREAT | O_TRUNC | O_APPEND | O_WRONLY, 
		0666);
	a_assert(websLogFd >= 0);
#endif
	
	return websOpenListen(port, retries);
}

/******************************************************************************/
/*
 *	Close the GoAhead WebServer
 */

void websCloseServer()
{
	webs_t	wp;
	int		wid;

	if (--websOpenCount > 0) {
		return;
	}

/*
 *	Close the listen handle first then all open connections.
 */
	websCloseListen();

/* 
 *	Close each open browser connection and free all resources
 */
	for (wid = websMax; webs && wid >= 0; wid--) {
		if ((wp = webs[wid]) == NULL) {
			continue;
		}
		socketCloseConnection(wp->sid);
		websFree(wp);
	}

#ifdef WEBS_LOG_SUPPORT
	if (websLogFd >= 0) {
		close(websLogFd);
		websLogFd = -1;
	}
#endif

#ifdef WEBS_PAGE_ROM
	websRomClose();
#endif
	symClose(websMime);
	websFormClose();
	websUrlHandlerClose();
}

/******************************************************************************/
/*
 *	Open the GoAhead WebServer listen port
 */

int websOpenListen(int port, int retries)
{
	int		i, orig;

	a_assert(port > 0);
	a_assert(retries >= 0);

	orig = port;
/*
 *	Open the webs webs listen port. If we fail, try the next port.
 */
	for (i = 0; i <= retries; i++) {
		websListenSock = socketOpenConnection(NULL, port, websAccept, 0);
		if (websListenSock >= 0) {
			break;
		}
		port++;
	}
	if (i > retries) {
		error(E_L, E_USER, T("Couldn't open a socket on ports %d - %d"),
			orig, port - 1);
		return -1;
	} 

/*
 *	Determine the full URL address to access the home page for this web server
 */
	websPort = port;
	bfreeSafe(B_L, websHostUrl);
	bfreeSafe(B_L, websIpaddrUrl);
	websIpaddrUrl = websHostUrl = NULL;

	if (port == 80) {
		websHostUrl = bstrdup(B_L, websHost);
		websIpaddrUrl = bstrdup(B_L, websIpaddr);
	} else {
		fmtAlloc(&websHostUrl, WEBS_MAX_URL + 80, T("%s:%d"), websHost, port);
		fmtAlloc(&websIpaddrUrl, WEBS_MAX_URL + 80, T("%s:%d"), 
			websIpaddr, port);
	}
	trace(0, T("webs: Listening for HTTP requests at address %s\n"),
		websIpaddrUrl);

	return port;
}

/******************************************************************************/
/*
 *	Close webs listen port
 */

void websCloseListen()
{
	if (websListenSock >= 0) {
		socketCloseConnection(websListenSock);
		websListenSock = -1;
	}
	bfreeSafe(B_L, websHostUrl);
	bfreeSafe(B_L, websIpaddrUrl);
	websIpaddrUrl = websHostUrl = NULL;
}

/******************************************************************************/
/*
 *	Accept a connection
 */

int websAccept(int sid, char *ipaddr, int port, int listenSid)
{
	webs_t	wp;
	int		wid;

	a_assert(ipaddr && *ipaddr);
	a_assert(sid >= 0);
	a_assert(port >= 0);

/*
 *	Allocate a new handle for this accepted connection. This will allocate
 *	a webs_t structure in the webs[] list
 */
	if ((wid = websAlloc(sid)) < 0) {
		return -1;
	}
	wp = webs[wid];
	a_assert(wp);
	wp->listenSid = listenSid;

	ascToUni(wp->ipaddr, ipaddr, min(sizeof(wp->ipaddr), strlen(ipaddr) + 1));

/*
 *	Check if this is a request from a browser on this system. This is useful
 *	to know for permitting administrative operations only for local access
 */
	if (gstrcmp(wp->ipaddr, T("127.0.0.1")) == 0 || 
			gstrcmp(wp->ipaddr, websIpaddr) == 0 || 
			gstrcmp(wp->ipaddr, websHost) == 0) {
		wp->flags |= WEBS_LOCAL_REQUEST;
	}

/*
 *	Arrange for websSocketEvent to be called when read data is available
 */
	socketCreateHandler(sid, SOCKET_READABLE, websSocketEvent, (int) wp);

/*
 *	Arrange for a timeout to kill hung requests
 */
	wp->timeout = emfSchedCallback(WEBS_TIMEOUT, websTimeout, (void *) wp);
	trace(8, T("webs: accept request\n"));
	return 0;
}

/******************************************************************************/
/*
 *	The webs socket handler.  Called in response to I/O. We just pass control
 *	to the relevant read or write handler. A pointer to the webs structure
 *	is passed as an (int) in iwp.
 */

static void websSocketEvent(int sid, int mask, int iwp)
{
	webs_t	wp;

	wp = (webs_t) iwp;
	a_assert(wp);

	if (! websValid(wp)) {
		return;
	}

	if (mask & SOCKET_READABLE) {
		websReadEvent(wp);
	}
	if (mask & SOCKET_WRITABLE) {
		if (websValid(wp) && wp->writeSocket) {
			(*wp->writeSocket)(wp);
		}
	}
}

// david ------------------------------------
#ifndef NO_ACTION

#include <sys/types.h>
#include <signal.h>
#include "LINUX/apmib.h"
#include "LINUX/utility.h"

#if 0 //Keith. move to utility.c
static int daemonKilled = 0;
//static void killDaemon()
void killDaemon(int wait)
{
#ifndef WIFI_SIMPLE_CONFIG
    int pid;
#endif
		
    if (daemonKilled)
    	return;

    daemonKilled = 1;

#ifdef WIFI_SIMPLE_CONFIG

	system("killall -9 sleep 2> /dev/null");
	system("killsh.sh");	// kill all running script	
	system("killall -9 routed 2> /dev/null");
	system("killall -9 pppoe 2> /dev/null");
	system("killall -9 pppd 2> /dev/null");
	system("killall -9 pptp 2> /dev/null");
	system("killall -9 dnrd 2> /dev/null");
	system("killall -9 ntpclient 2> /dev/null");
	system("killall -9 miniigd 2> /dev/null");
	system("killall -9 lld2d 2> /dev/null");
	system("killall -9 l2tpd 2> /dev/null");	
	system("killall -9 udhcpc 2> /dev/null");	
	system("killall -9 udhcpd 2> /dev/null");	
	system("killall -9 reload 2> /dev/null");		
	system("killall -9 iapp 2> /dev/null");	
	system("killall -9 wscd 2> /dev/null");
	system("killall -9 mini_upnpd 2> /dev/null");
	system("killall -9 iwcontrol 2> /dev/null");
	system("killall -9 auth 2> /dev/null");
	system("killall -9 disc_server 2> /dev/null");
	system("killall -9 igmpproxy 2> /dev/null");
	system("killall -9 syslogd 2> /dev/null");
	system("killall -9 klogd 2> /dev/null");

#else

    pid = find_pid_by_name("udhcpc");
    if (pid > 0)
    	kill(pid, SIGKILL);

    pid = find_pid_by_name("udhcpd");
    if (pid > 0)
    	kill(pid, SIGKILL);

    pid = find_pid_by_name("iwcontrol");
    if (pid > 0)
    	kill(pid, SIGKILL);

    pid = find_pid_by_name("iapp");
    if (pid > 0)
    	kill(pid, SIGKILL);

    pid = find_pid_by_name("auth");
    if (pid > 0)
    	kill(pid, SIGKILL);
#ifdef HOME_GATEWAY

    //sc_yang
    pid = find_pid_by_name("pppoe.sh");
    if (pid > 0)
        kill(pid, SIGKILL);

    // kill all upnpd 
    while((pid = find_pid_by_name("upnpd")) > 0)
    {
	    if (pid > 0)
		kill(pid, SIGKILL);
    }

    pid = find_pid_by_name("pppd");
    if (pid > 0)
        kill(pid, SIGKILL);

    pid = find_pid_by_name("pppoe");
    if (pid > 0)
        kill(pid, SIGKILL);

    pid = find_pid_by_name("dnrd");
    if (pid > 0)
        kill(pid, SIGKILL);

    pid = find_pid_by_name("disc_server");
    if (pid > 0)
        kill(pid, SIGKILL);

	if (wait)
	    sleep(5);
#endif
#endif
	
// added by rock /////////////////////////////////////////
#ifdef VOIP_SUPPORT
	system("killall -9 snmpd 2> /dev/null");
	system("killall -9 solar_monitor 2> /dev/null");
	system("killall -9 solar 2> /dev/null");
	system("killall -9 dns_task 2> /dev/null");
	system("killall -9 ivrserver 2> /dev/null");
#endif

#ifdef CONFIG_SNMP
	system("killall -9 snmpd 2> /dev/null");
#endif
}
#endif //#if 0 //Keith. move to utility.c

#endif // NO_ACTION
//-------------------------------------------





/******************************************************************************/
/*
 *	The webs read handler. This is the primary read event loop. It uses a
 *	state machine to track progress while parsing the HTTP request. 
 *	Note: we never block as the socket is always in non-blocking mode.
 */

void websReadEvent(webs_t wp)
{
	char_t 	*text;
	int		rc, nbytes, len, done, fd;
#if defined(HTTP_FILE_SERVER_SUPPORTED)
	int file_write_st=0;
	int isDynamic=0;
#endif	
	a_assert(wp);
	a_assert(websValid(wp));

	websSetTimeMark(wp);

/*
 *	Read as many lines as possible. socketGets is called to read the header
 *	and socketRead is called to read posted data.
 */
	text = NULL;
	fd = -1;
	for (done = 0; !done; ) {
#if !defined(HTTP_FILE_SERVER_SUPPORTED)
		if (text) {
			bfree(B_L, text);
			text = NULL;
		}
#else
		if(isDynamic){
		if (text) {
			bfree(B_L, text);
			text = NULL;
		}
		}
#endif
/*
 *		Get more input into "text". Returns 0, if more data is needed
 *		to continue, -1 if finished with the request, or 1 if all 
 *		required data is available for current state.
 */
 #if !defined(HTTP_FILE_SERVER_SUPPORTED)
		while ((rc = websGetInput(wp, &text, &nbytes)) == 0) {
			;
		}
#else
		while ((rc = websGetInput(wp, &text, &nbytes, &isDynamic)) == 0) {
			;
		}
#endif

/*
 *		websGetInput returns -1 if it finishes with the request
 */
		if (rc < 0) {
			break;
		}

/*
 *		This is the state machine for the web server. 
 */
		switch(wp->state) {
		case WEBS_BEGIN:
/*
 *			Parse the first line of the Http header
 */
			if (websParseFirst(wp, text) < 0) {
				done++;
				break;
			}
			wp->state = WEBS_HEADER;
			break;
		
		case WEBS_HEADER:
/*
 *			Store more of the HTTP header. As we are doing line reads, we
 *			need to separate the lines with '\n'
 */
			if (ringqLen(&wp->header) > 0) {
				ringqPutStr(&wp->header, T("\n"));
			}
			ringqPutStr(&wp->header, text);
			break;

		case WEBS_POST_CLEN:
#if defined(HTTP_FILE_SERVER_SUPPORTED)
		websReSettimeout(wp);
		file_write_st=websDataWrite2File(wp, text, nbytes);
		if(file_write_st==0){ //end of switch case
			break;
		}else if(file_write_st==1){//end of for loop and switch case and urlhandlereq
			if (fd != -1) {
				gclose (fd);
				fd = -1;
			}
			websUrlHandlerRequest(wp);
			done++;
			break;
		}else if(file_write_st==2){ //end of for loop and switch case , no url handle req
			done++;
			break;
		}
#endif
/*
 *			POST request with content specified by a content length.
 *			If this is a CGI request, write the data to the cgi stdin.
 *			socketGets was used to get the data and it strips \n's so
 *			add them back in here.
 */
/* LohCT: If WEBS_POST_CLEN ==> socketRead was used to get the data, hence no need to strip \n's */
#ifndef __NO_CGI_BIN
			if (wp->flags & WEBS_CGI_REQUEST) {
				if (fd == -1) {
					fd = gopen(wp->cgiStdin, O_CREAT | O_WRONLY | O_BINARY,
						0666);
				}				
/*				gwrite(fd, text, gstrlen(text));
				gwrite(fd, T("\n"), sizeof(char_t));
*/
                gwrite(fd, text, nbytes);
/*
 *				Line removed as per BUG02488
 *
				nbytes += 1;
 */
			} else
#endif
            if (wp->postData) {
#if 0
			if (wp->query) {
				if (wp->query[0] && !(wp->flags & WEBS_POST_DATA)) {
/*
 *					Special case where the POST request also had query data
 *					specified in the URL, ie. url?query_data. In this case
 *					the URL query data is separated by a '&' from the posted
 *					query data.
 */
					len = gstrlen(wp->query);
					wp->query = brealloc(B_L, wp->query, (len + gstrlen(text) +
						2) * sizeof(char_t));
					wp->query[len++] = '&';
					gstrcpy(&wp->query[len], text);

				} else {
#endif
/*
 *					The existing query data came from the POST request so just
 *					append it.
 */
/*
					len = gstrlen(wp->query);
					wp->query = brealloc(B_L, wp->query, (len +	gstrlen(text) +
						1) * sizeof(char_t));
					if (wp->query) {
						gstrcpy(&wp->query[len], text);
					}
				}
*/

// david
#ifndef NO_ACTION
#ifdef HOME_GATEWAY
#ifdef CONFIG_RTL8196B_GW_8M
		    if (wp->lenPostData > 4*1024)
#else
		    if (wp->lenPostData > 100*600)
#endif					
#else
		    if (wp->lenPostData > 100*1024) // update f/w, kill unecessary process
#endif
            {
#ifdef CONFIG_RTL8196B_GW_8M
                mallopt(M_MMAP_MAX, 0); //disables the use of mmap
#endif
		    	killDaemon(1);
		    }
#endif

#if 0
                    //already allocate, no need to realloc
                    if ((wp->postData) && (wp->clen >= nbytes))  {
                        memcpy(&wp->postData[wp->lenPostData], text, nbytes);
                        wp->lenPostData += nbytes;
					}
#else
                    wp->postData = brealloc(B_L, wp->postData, (wp->lenPostData + nbytes +
						1) * sizeof(char_t));
                    if (wp->postData) {
                        memcpy(&wp->postData[wp->lenPostData], text, nbytes);
                        wp->lenPostData += nbytes;
					}
#endif
			} else {
/*				wp->query = bstrdup(B_L, text);*/
#if 0
        	        //printf("wp->url=%s\n", wp->url);
			        //printf("#111#wp->clen=%d wp->postData=%p wp->lenPostData=%d, text=%p nbytes=%d###\n",wp->clen, wp->postData, wp->lenPostData, text, nbytes);
                    if (wp->clen > 100*1024)
                        killDaemon(1);
                    wp->lenPostData = 0;
                    wp->postData = malloc(wp->clen);
                    if ((wp->postData) && (wp->clen >= nbytes))  {
                        memcpy(wp->postData, text, nbytes);
                        wp->lenPostData = nbytes;
					}
#else
            		wp->postData = bmemdup(B_L, text, nbytes);
            		wp->lenPostData = nbytes;
#endif
			}
/*
 *			Calculate how much more post data is to be read.
 */
			wp->flags |= WEBS_POST_DATA;
			wp->clen -= nbytes;
			if (wp->clen > 0) {
				if (nbytes > 0) {
					break;
				}
				done++;
				break;
			}
/*
 *			No more data so process the request, (but be sure to close
 *			the input file first!).
 */
			if (fd != -1) {
				gclose (fd);
				fd = -1;
			}
			websUrlHandlerRequest(wp);
			done++;
			break;

		case WEBS_POST:
/*
 *			POST without content-length specification
 *			If this is a CGI request, write the data to the cgi stdin.
 *			socketGets was used to get the data and it strips \n's so
 *			add them back in here.
 */

#ifndef __NO_CGI_BIN
			if (wp->flags & WEBS_CGI_REQUEST) {
				if (fd == -1) {
					fd = gopen(wp->cgiStdin, O_CREAT | O_WRONLY | O_BINARY,
						0666);
				}			
				gwrite(fd, text, gstrlen(text));
				gwrite(fd, T("\n"), sizeof(char_t));
			} else
#endif
			if (wp->query && *wp->query && !(wp->flags & WEBS_POST_DATA)) {
				len = gstrlen(wp->query);
				wp->query = brealloc(B_L, wp->query, (len + gstrlen(text) +
					2) * sizeof(char_t));
				if (wp->query) {
					wp->query[len++] = '&';
					gstrcpy(&wp->query[len], text);
				}

			} else {
				wp->query = bstrdup(B_L, text);
			}
			wp->flags |= WEBS_POST_DATA;
			done++;
			break;

		default:
			websError(wp, 404, T("Bad state"));
			done++;
			break;
		}
	}

	if (fd != -1) {
		fd = gclose (fd);
	}
#if !defined(HTTP_FILE_SERVER_SUPPORTED)
	if (text) {
		bfree(B_L, text);
	}
#else
	if(isDynamic){
	if (text) {
		bfree(B_L, text);
				text = NULL;
			}
	}
#endif	
}

/******************************************************************************/
/*
 *	Get input from the browser. Return TRUE (!0) if the request has been 
 *	handled. Return -1 on errors or if the request has been processed, 
 *	1 if input read, and 0 to instruct the caller to call again for more input.
 *
 *	Note: socketRead will Return the number of bytes read if successful. This
 *	may be less than the requested "bufsize" and may be zero. It returns -1 for
 *	errors. It returns 0 for EOF. Otherwise it returns the number of bytes 
 *	read. Since this may be zero, callers should use socketEof() to 
 *	distinguish between this and EOF.
 */
#if defined(HTTP_FILE_SERVER_SUPPORTED)
static int websGetInput(webs_t wp, char_t **ptext, int *pnbytes,int *dynamic) 
#else
static int websGetInput(webs_t wp, char_t **ptext, int *pnbytes) 
#endif
{
	char_t	*text;
	
#if defined(HTTP_FILE_SERVER_SUPPORTED)
char_t	*buf=NULL;
int isDynamic=0;
#else
	char	buf[WEBS_SOCKET_BUFSIZ+1];
#endif	
	
	int		nbytes, len, clen;

	a_assert(websValid(wp));
	a_assert(ptext);
	a_assert(pnbytes);

	*ptext = text = NULL;
	*pnbytes = 0;

/*
 *	If this request is a POST with a content length, we know the number
 *	of bytes to read so we use socketRead().
 */
	if (wp->state == WEBS_POST_CLEN) {
		len = (wp->clen > WEBS_SOCKET_BUFSIZ) ? WEBS_SOCKET_BUFSIZ : wp->clen;
	} else {
		len = 0;
	}

	if (len > 0) {
#if defined(HTTP_FILE_SERVER_SUPPORTED)
	buf=file_data;
#if 0
		buf = malloc(WEBS_SOCKET_BUFSIZ+1);
		if(buf==NULL){
			printf("%s:line %d, malloc fail\n", __FUNCTION__, __LINE__);
			websDone(wp, 0);
			return -1;
		}
#endif
#endif
#ifdef WEBS_SSL_SUPPORT
		if (wp->flags & WEBS_SECURE) {
			nbytes = websSSLRead(wp->wsp, buf, len);
		} else {
			nbytes = socketRead(wp->sid, buf, len);
		}
#else
		nbytes = socketRead(wp->sid, buf, len);
		
#endif
		if (nbytes < 0) {						/* Error */
#if defined(HTTP_FILE_SERVER_SUPPORTED)			
			websRemoveBrokenFile(wp,nbytes); 		
			*pnbytes = nbytes;
			*dynamic = isDynamic;
#endif			
			websDone(wp, 0);
			return -1;

		}  else if (nbytes == 0) {				/* EOF or No data available */
#if defined(HTTP_FILE_SERVER_SUPPORTED)				
			websConfirmtimeout(wp, nbytes);
			*pnbytes = nbytes;
			*dynamic = isDynamic;
#endif			
			return -1;

		} else {								/* Valid data */
/*
 *			Convert to UNICODE if necessary.  First be sure the string 
 *			is NULL terminated.
 */
			buf[nbytes] = '\0';
#if defined(HTTP_FILE_SERVER_SUPPORTED)			
			text= buf;
			*dynamic = isDynamic;
#else
			if ((text = ballocAscToUni(buf, nbytes)) == NULL) {
				websError(wp, 503, T("Insufficient memory"));
				return -1;
			}
		
		#endif
		}

	} else {
#ifdef WEBS_SSL_SUPPORT
		if (wp->flags & WEBS_SECURE) {
			nbytes = websSSLGets(wp->wsp, &text);
		} else {
			nbytes = socketGets(wp->sid, &text);
		}
#else
		nbytes = socketGets(wp->sid, &text);
#if defined(HTTP_FILE_SERVER_SUPPORTED)			
		isDynamic = 1;
		*dynamic = isDynamic;
#endif		
#endif

		if (nbytes < 0) {
			int eof;
/*
 *			Error, EOF or incomplete
 */
#ifdef WEBS_SSL_SUPPORT
			if (wp->flags & WEBS_SECURE) {
/*
 *				If state is WEBS_BEGIN and the request is secure, a -1 will 
 *				usually	indicate SSL negotiation
 */
				if (wp->state == WEBS_BEGIN) {
					eof = 1;
				} else {
					eof = websSSLEof(wp->wsp);
				}
			} else {
				eof = socketEof(wp->sid);
			}
#else
			eof = socketEof(wp->sid);
#endif

			if (eof) {
/*
 *				If this is a post request without content length, process 
 *				the request as we now have all the data. Otherwise just 
 *				close the connection.
 */
				if (wp->state == WEBS_POST) {
					websUrlHandlerRequest(wp);
				} else {
					websDone(wp, 0);
				}
			} else {
/*
 *				If an error occurred and it wasn't an eof, close the connection
 */
//#ifdef HP_FIX
				websDone(wp, 0);
//#endif /*HP_FIX*/

			}
/*
 *			If state is WEBS_HEADER and the ringq is empty, then this is a
 *			simple request with no additional header fields to process and
 *			no empty line terminator.
 */
/*
 *			NOTE: this fix for earlier versions of browsers is troublesome
 *			because if we don't receive the entire header in the first pass
 *			this code assumes we were only expecting a one line header, which
 *			is not necessarily the case. So we weren't processing the whole
 *			header and weren't fufilling requests properly. 
 */
#ifdef UNUSED
			if (wp->state == WEBS_HEADER && ringqLen(&wp->header) <= 0) {
				websParseRequest(wp);
				websUrlHandlerRequest(wp);
			}
#endif
			return -1;

		} else if (nbytes == 0) {
			if (wp->state == WEBS_HEADER) {
/*
 *				Valid empty line, now finished with header
 */
				websParseRequest(wp);
				if (wp->flags & WEBS_POST_REQUEST) {
					if (wp->flags & WEBS_CLEN) {
						wp->state = WEBS_POST_CLEN;
						clen = wp->clen;
					} else {
						wp->state = WEBS_POST;
						clen = 1;
					}
					if (clen > 0) {
/*
 *						Return 0 to get more data.
 */
						return 0;
					}
					return 1;
				}
/*
 *				We've read the header so go and handle the request
 */
#if defined(HTTP_FILE_SERVER_SUPPORTED)	
			webshandleDIRRequest(wp);
#else
				websUrlHandlerRequest(wp);
#endif
			}
			return -1;
		}
	}
	a_assert(text);
	a_assert(nbytes > 0);
	*ptext = text;
	*pnbytes = nbytes;
#if defined(HTTP_FILE_SERVER_SUPPORTED)	
	*dynamic = isDynamic;
#endif
	return 1;
}

/******************************************************************************/
/*
 *	Parse the first line of a HTTP request
 */

static int websParseFirst(webs_t wp, char_t *text)
{
	char_t 	*op, *proto, *protoVer, *url, *host, *query, *path, *port, *ext;
	char_t	*buf;
	int		testPort;

	a_assert(websValid(wp));
	a_assert(text && *text);

/*
 *	Determine the request type: GET, HEAD or POST
 */
	op = gstrtok(text, T(" \t"));
	if (op == NULL || *op == '\0') {
		websError(wp, 400, T("Bad HTTP request"));
		return -1;
	}
	if (gstrcmp(op, T("GET")) != 0) {
		if (gstrcmp(op, T("POST")) == 0) {
			wp->flags |= WEBS_POST_REQUEST;
		} else if (gstrcmp(op, T("HEAD")) == 0) {
			wp->flags |= WEBS_HEAD_REQUEST;
		} else {
			websError(wp, 400, T("Bad request type"));
			return -1;
		}
	}

/*
 *	Store result in the form (CGI) variable store
 */
	websSetVar(wp, T("REQUEST_METHOD"), op);

	url = gstrtok(NULL, T(" \t\n"));
	if (url == NULL || *url == '\0') {
		websError(wp, 400, T("Bad HTTP request"));
		return -1;
	}
	protoVer = gstrtok(NULL, T(" \t\n"));

/*
 *	Parse the URL and store all the various URL components. websUrlParse
 *	returns an allocated buffer in buf which we must free. We support both
 *	proxied and non-proxied requests. Proxied requests will have http://host/
 *	at the start of the URL. Non-proxied will just be local path names.
 */
	host = path = port = proto = query = ext = NULL;
	if (websUrlParse(url, &buf, &host, &path, &port, &query, &proto, 
			NULL, &ext) < 0) {
		websError(wp, 400, T("Bad URL format"));
		return -1;
	}
#if defined(HTTP_FILE_SERVER_SUPPORTED)
	websCheckSort(wp, url);
#endif
	wp->url = bstrdup(B_L, url);

#ifndef __NO_CGI_BIN
	if (gstrstr(url, CGI_BIN) != NULL) {
		wp->flags |= WEBS_CGI_REQUEST;
		if (wp->flags & WEBS_POST_REQUEST) {
			wp->cgiStdin = websGetCgiCommName();
		}
	}
#endif

	wp->query = bstrdup(B_L, query);
	wp->host = bstrdup(B_L, host);
	wp->path = bstrdup(B_L, path);
	wp->protocol = bstrdup(B_L, proto);
	wp->protoVersion = bstrdup(B_L, protoVer);
#if defined(HTTP_FILE_SERVER_SUPPORTED)	
	websCheckAction(wp);
#endif
    /* LohCT: Initialize to NULL */
    wp->postData = NULL;
	wp->lenPostData = 0;

	if ((testPort = socketGetPort(wp->listenSid)) >= 0) {
		wp->port = testPort;
	} else {
		wp->port = gatoi(port);
	}

	if (gstrcmp(ext, T(".asp")) == 0) {
		wp->flags |= WEBS_ASP;
	}
	bfree(B_L, buf);

	websUrlType(url, wp->type, TSZ(wp->type));

#ifdef WEBS_PROXY_SUPPORT
/*
 *	Determine if this is a request for local webs data. If it is not a proxied 
 *	request from the browser, we won't see the "http://" or the system name, so
 *	we assume it must be talking to us directly for local webs data.
 *	Note: not fully implemented yet.
 */
	if (gstrstr(wp->url, T("http://")) == NULL || 
		((gstrcmp(wp->host, T("localhost")) == 0 || 
			gstrcmp(wp->host, websHost) == 0) && (wp->port == websPort))) {
		wp->flags |= WEBS_LOCAL_PAGE;
		if (gstrcmp(wp->path, T("/")) == 0) {
			wp->flags |= WEBS_HOME_PAGE;
		}
	}
#endif

	ringqFlush(&wp->header);
	return 0;
}

/******************************************************************************/
/*
 *	Parse a full request
 */

#define isgoodchar(s) (gisalnum((s)) || ((s) == '/') || ((s) == '_') || \
						((s) == '.')  || ((s) == '-') )

static void websParseRequest(webs_t wp)
{
	char_t	*authType, *upperKey, *cp, *browser, *lp, *key, *value;

	a_assert(websValid(wp));

/*
 *	Define default CGI values
 */
	websSetVar(wp, T("HTTP_AUTHORIZATION"), T(""));

/* 
 *	Parse the header and create the Http header keyword variables
 *	We rewrite the header as we go for non-local requests.  NOTE: this
 * 	modifies the header string directly and tokenizes each line with '\0'.
 */
	browser = NULL;
	for (lp = (char_t*) wp->header.servp; lp && *lp; ) {
		cp = lp;
		if ((lp = gstrchr(lp, '\n')) != NULL) {
			lp++;
		}

		if ((key = gstrtok(cp, T(": \t\n"))) == NULL) {
			continue;
		}

		if ((value = gstrtok(NULL, T("\n"))) == NULL) {
			value = T("");
		}

		while (gisspace(*value)) {
			value++;
		}
		strlower(key);

/*
 *		Create a variable (CGI) for each line in the header
 */
		fmtAlloc(&upperKey, (gstrlen(key) + 6), T("HTTP_%s"), key);
		for (cp = upperKey; *cp; cp++) {
			if (*cp == '-')
				*cp = '_';
		}
		strupper(upperKey);
		websSetVar(wp, upperKey, value);
		bfree(B_L, upperKey);

/*
 *		Track the requesting agent (browser) type
 */
		if (gstrcmp(key, T("user-agent")) == 0) {
			wp->userAgent = bstrdup(B_L, value);

/*
 *		Parse the user authorization. ie. password
 */
		} else if (gstricmp(key, T("authorization")) == 0) {
/*
 *			Determine the type of Authorization Request
 */
			authType = bstrdup (B_L, value);
			a_assert (authType);
/*			
 *			Truncate authType at the next non-alpha character
 */
			cp = authType;
			while (gisalpha(*cp)) {
				cp++;
			}
			*cp = '\0';

			wp->authType = bstrdup(B_L, authType);
			bfree(B_L, authType);

			if (gstricmp(wp->authType, T("basic")) == 0) {
				char_t	userAuth[FNAMESIZE];
/*
 *				The incoming value is username:password (Basic authentication)
 */
				if ((cp = gstrchr(value, ' ')) != NULL) {
					*cp = '\0';
					wp->authType = bstrdup(B_L, value);
					websDecode64(userAuth, ++cp, sizeof(userAuth));
				} else {
					websDecode64(userAuth, value, sizeof(userAuth));
				}
/*
 *				Split userAuth into userid and password
 */
				if ((cp = gstrchr(userAuth, ':')) != NULL) {
					*cp++ = '\0';
				}
				if (cp) {
					wp->userName = bstrdup(B_L, userAuth);
					wp->password = bstrdup(B_L, cp);
				} else {
					wp->userName = bstrdup(B_L, T(""));
					wp->password = bstrdup(B_L, T(""));
				}
/*
 *				Set the flags to indicate digest authentication
 */
				wp->flags |= WEBS_AUTH_BASIC;
			} else {
#ifdef DIGEST_ACCESS_SUPPORT
/*
 *				The incoming value is slightly more complicated (Digest)
 */
				char_t *np;		/* pointer to end of tag name */
				char_t tp;		/* temporary character holding space */
				char_t *vp;		/* pointer to value */
				char_t *npv;	/* pointer to end of value, "next" pointer */
				char_t tpv;		/* temporary character holding space */
/*
 *				Set the flags to indicate digest authentication
 */
				wp->flags |= WEBS_AUTH_DIGEST;
/*
 *				Move cp to Next word beyond "Digest",
 *				vp to first char after '='.
 */
 				cp = value;
				while (isgoodchar(*cp)) {
					cp++;
				}
				while (!isgoodchar(*cp)) {
					cp++;
				}

/*
 *				Find beginning of value
 */
				vp = gstrchr(cp, '=');
				while (vp) {
/*
 *					Zero-terminate tag name
 */
					np = cp;
					while (isgoodchar(*np)) {
						np++;
					}
					tp = *np;
					*np = 0;
/*
 *					Advance value pointer to first legit character
 */
					vp++;
					while (!isgoodchar(*vp)) {
						vp++;
					}
/*
 *					Zero-terminate value
 */
					npv = vp;
					while (isgoodchar(*npv)) {
						npv++;
					}
					tpv = *npv;
					*npv = 0;
/*
 *					Extract the fields
 */
					if (gstricmp(cp, T("username")) == 0) {
						wp->userName = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("response")) == 0) {
						wp->digest = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("opaque")) == 0) {
						wp->opaque = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("uri")) == 0) {
						wp->uri = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("realm")) == 0) {
						wp->realm = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("nonce")) == 0) {
						wp->nonce = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("nc")) == 0) {
						wp->nc = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("cnonce")) == 0) {
						wp->cnonce = bstrdup(B_L, vp);
					} else if (gstricmp(cp, T("qop")) == 0) {
						wp->qop = bstrdup(B_L, vp);
					}
/*
 *					Restore tag name and value zero-terminations
 */
					*np = tp;
					*npv = tpv;
/*
 *					Advance tag name and value pointers
 */
 					cp = npv;
					while (*cp && isgoodchar(*cp)) {
						cp++;
					}
					while (*cp && !isgoodchar(*cp)) {
						cp++;
					}

					if (*cp) {
						vp = gstrchr(cp, '=');
					} else {
						vp = NULL;
					}
				}
#endif /* DIGEST_ACCESS_SUPPORT */
			} /* if (gstrcmp(wp->authType)) */
/*
 *		Parse the content length
 */
		} else if (gstrcmp(key, T("content-length")) == 0) {
			wp->flags |= WEBS_CLEN;
			wp->clen = gatoi(value);
			websSetVar(wp, T("CONTENT_LENGTH"), value);

/*
 *		Parse the content type
 */
		} else if (gstrcmp(key, T("content-type")) == 0) {
			websSetVar(wp, T("CONTENT_TYPE"), value);
/* begin   support multipart form for file upload */
			if (gstrncmp(value, CTYPE_MULTIPART, gstrlen(CTYPE_MULTIPART)) == 0) {
				char_t* p;
				wp->flags |= WEBS_MULTIPART_FORM;
				if ((p = gstrstr(value, BOUNDARY_KWD)) != NULL) {
					/* skip over the 'boundary=' part */
					p+= gstrlen(BOUNDARY_KWD);
					wp->multiPartBoundary = balloc(B_L, gstrlen(p) + 2);
					gsprintf(wp->multiPartBoundary , "--%s", p);
				}
			}
/* end  */
#ifdef WEBS_KEEP_ALIVE_SUPPORT
		} else if (gstrcmp(key, T("connection")) == 0) {
			strlower(value);
			if (gstrcmp(value, T("keep-alive")) == 0) {
				wp->flags |= WEBS_KEEP_ALIVE;
			}
#endif

#ifdef WEBS_PROXY_SUPPORT
/*
 *		This may be useful if you wish to keep a local cache of web pages
 *		for proxied requests.
 */
		} else if (gstrcmp(key, T("pragma")) == 0) {
			char_t	tmp[256];
			gstrncpy(tmp, value, TSZ(tmp));
			strlower(tmp);
			if (gstrstr(tmp, T("no-cache"))) {
				wp->flags |= WEBS_DONT_USE_CACHE;
			}
#endif /* WEBS_PROXY_SUPPORT */

/*
 *		Store the cookie
 */
		} else if (gstrcmp(key, T("cookie")) == 0) {
			wp->flags |= WEBS_COOKIE;
			wp->cookie = bstrdup(B_L, value);

#ifdef WEBS_IF_MODIFIED_SUPPORT
/*
 *		See if the local page has been modified since the browser last
 *		requested this document. If not, just return a 302
 */
		} else if (gstrcmp(key, T("if-modified-since")) == 0) {
			char_t *cmd;
			time_t tip = 0;

			if ((cp = gstrchr(value, ';')) != NULL) {
				*cp = '\0';
			}

			fmtAlloc(&cmd, 64, T("%s"), value);

			if ((wp->since = dateParse(tip, cmd)) != 0) {
				wp->flags |= WEBS_IF_MODIFIED;
			}

			bfreeSafe(B_L, cmd);
#endif /* WEBS_IF_MODIFIED_SUPPORT */
		}
#if defined(HTTP_FILE_SERVER_SUPPORTED)	
		else{
			websCheckRequest(wp, key, value);
		}
#endif
	}
}

/******************************************************************************/
/*
 *	Set the variable (CGI) environment for this request. Create variables
 *	for all standard CGI variables. Also decode the query string and create
 *	a variable for each name=value pair.
 */

void websSetEnv(webs_t wp)
{
	char_t	portBuf[8];
	char_t	*keyword, *value, *valCheck, *valNew;
    int len;

	a_assert(websValid(wp));

	websSetVar(wp, T("QUERY_STRING"), wp->query);
	websSetVar(wp, T("GATEWAY_INTERFACE"), T("CGI/1.1"));
	websSetVar(wp, T("SERVER_HOST"), websHost);
	websSetVar(wp, T("SERVER_NAME"), websHost);
	websSetVar(wp, T("SERVER_URL"), websHostUrl);
	websSetVar(wp, T("REMOTE_HOST"), wp->ipaddr);
	websSetVar(wp, T("REMOTE_ADDR"), wp->ipaddr);
	websSetVar(wp, T("PATH_INFO"), wp->path);
	stritoa(websPort, portBuf, sizeof(portBuf));
	websSetVar(wp, T("SERVER_PORT"), portBuf);
	websSetVar(wp, T("SERVER_ADDR"), websIpaddr);
	fmtAlloc(&value, FNAMESIZE, T("%s/%s"), WEBS_NAME, WEBS_VERSION);
	websSetVar(wp, T("SERVER_SOFTWARE"), value);
	bfreeSafe(B_L, value);
	websSetVar(wp, T("SERVER_PROTOCOL"), wp->protoVersion);

	/* multipart */
	if (wp->flags & WEBS_MULTIPART_FORM) {
		#if defined(HTTP_FILE_SERVER_SUPPORTED)	
			if(!strstr(wp->path,"formusbdisk_uploadfile")){ 
		#endif
		char_t* uploadedFileContent;
		int lenUploadedFile;

		/*
		 * In case of file upload, the query field contains multiple
		 * parts. One of them contains the content of the uploaded file.
		 * Here we keep in the query field just this file content and
		 * ignore all other parts.
		 */
		uploadedFileContent = extractUploadedFileContent(wp, &lenUploadedFile);
		if (uploadedFileContent != NULL) {
		//#ifdef VOIP_SUPPORT
		#if 1 //Brad open for saving memory
			// rock: use memmove to save memory
			memmove(wp->postData, uploadedFileContent, lenUploadedFile);
			brealloc(B_L, wp->postData, lenUploadedFile);
			wp->lenPostData = lenUploadedFile;
		#else
			bfree(B_L, wp->postData);
			wp->postData = uploadedFileContent;
			wp->lenPostData = lenUploadedFile;
		#endif
		}
#if defined(HTTP_FILE_SERVER_SUPPORTED)			
		}
#endif
		
    } else {
        if (wp->postData) {
            if (wp->query) {
                if (wp->query[0]) {
/*
 *					Special case where the POST request also had query data
 *					specified in the URL, ie. url?query_data. In this case
 *					the URL query data is separated by a '&' from the posted
 *					query data.
 */
					len = gstrlen(wp->query);
                    wp->query = brealloc(B_L, wp->query, (len + wp->lenPostData +
						2) * sizeof(char_t));
                    if (wp->query) {
                        wp->query[len++] = '&';
                        memcpy(&wp->query[len], wp->postData, wp->lenPostData);
                        wp->query[len + wp->lenPostData] = '\0';
                    }
				} else {
/*
 *					The existing query data came from the POST request so just
 *					append it.
 */
                    len = gstrlen(wp->query);
                    wp->query = brealloc(B_L, wp->query, (len + wp->lenPostData +
						1) * sizeof(char_t));
                    if (wp->query) {
                        memcpy(&wp->query[len], wp->postData, wp->lenPostData);
                        wp->query[len + wp->lenPostData] = '\0';
                    }
                }
			} else {
                wp->query = balloc(B_L, wp->lenPostData + 1);
                if (wp->query) {
                    memcpy(wp->query, wp->postData, wp->lenPostData);
                    wp->query[wp->lenPostData] = '\0';
                }
			}
        }
    }
/*
 *	Decode and create an environment query variable for each query keyword.
 *	We split into pairs at each '&', then split pairs at the '='.
 *	Note: we rely on wp->decodedQuery preserving the decoded values in the
 *	symbol table.
 */
	wp->decodedQuery = bstrdup(B_L, wp->query);
	keyword = gstrtok(wp->decodedQuery, T("&"));
	while (keyword != NULL) {
		if ((value = gstrchr(keyword, '=')) != NULL) {
			*value++ = '\0';
			websDecodeUrl(keyword, keyword, gstrlen(keyword));
			websDecodeUrl(value, value, gstrlen(value));
		} else {
			value = T("");
		}

		if (*keyword) {
/*
 *			If keyword has already been set, append the new value to what has 
 *			been stored.
 */
			if ((valCheck = websGetVar(wp, keyword, NULL)) != 0) {
				fmtAlloc(&valNew, 256, T("%s %s"), valCheck, value);
				websSetVar(wp, keyword, valNew);
				bfreeSafe(B_L, valNew);
			} else {
				websSetVar(wp, keyword, value);
			}
		}
		keyword = gstrtok(NULL, T("&"));
	}

#ifdef EMF
/*
 *	Add GoAhead Embedded Management Framework defines
 */
	websSetEmfEnvironment(wp);
#endif
}

/******************************************************************************/
/*
 *	Define a webs (CGI) variable for this connection. Also create in relevant
 *	scripting engines. Note: the incoming value may be volatile. 
 */

void websSetVar(webs_t wp, char_t *var, char_t *value)
{
	value_t		 v;

	a_assert(websValid(wp));

/*
 *	value_instring will allocate the string if required.
 */
	if (value) {
// david -------------
#if 0
		v = valueString(value, VALUE_ALLOCATE);
	} else {
		v = valueString(T(""), VALUE_ALLOCATE);
	}
	symEnter(wp->cgiVars, var, v, 0);
#endif
		v = *valueString(value, VALUE_ALLOCATE);
	} else {
		v = *valueString(T(""), VALUE_ALLOCATE);
	}
	symEnter(wp->cgiVars, var, &v, 0);
//---------------------
}

/******************************************************************************/
/*
 *	Return TRUE if a webs variable exists for this connection.
 */

#ifndef DOWN_SIZE
int websTestVar(webs_t wp, char_t *var)
{
	sym_t		*sp;

	a_assert(websValid(wp));

	if (var == NULL || *var == '\0') {
		return 0;
	}

	if ((sp = symLookup(wp->cgiVars, var)) == NULL) {
		return 0;
	}
	return 1;
}
#endif

/******************************************************************************/
/*
 *	Get a webs variable but return a default value if string not found.
 *	Note, defaultGetValue can be NULL to permit testing existence.
 */

char_t *websGetVar(webs_t wp, char_t *var, char_t *defaultGetValue)
{
	sym_t	*sp;

	a_assert(websValid(wp));
	a_assert(var && *var);
 
	if ((sp = symLookup(wp->cgiVars, var)) != NULL) {
		a_assert(sp->content.type == string);
		if (sp->content.value.string) {
			return sp->content.value.string;
		} else {
			return T("");
		}
	}
	return defaultGetValue;
}

/******************************************************************************/
/*
 *	Return TRUE if a webs variable is set to a given value
 */

#ifndef DOWN_SIZE
int websCompareVar(webs_t wp, char_t *var, char_t *value)
{
	a_assert(websValid(wp));
	a_assert(var && *var);
 
	if (gstrcmp(value, websGetVar(wp, var, T(" __UNDEF__ "))) == 0) {
		return 1;
	}
	return 0;
}
#endif

/******************************************************************************/
/*
 *	Cancel the request timeout. Note may be called multiple times.
 */

void websTimeoutCancel(webs_t wp)
{
	a_assert(websValid(wp));

	if (wp->timeout >= 0) {
		emfUnschedCallback(wp->timeout);
		wp->timeout = -1;
	}
}

/******************************************************************************/
/*
 *	Output a HTTP response back to the browser. If redirect is set to a 
 *	URL, the browser will be sent to this location.
 */

void websResponse(webs_t wp, int code, char_t *message, char_t *redirect)
{
	char_t		*date;

	a_assert(websValid(wp));

/*
 *	IE3.0 needs no Keep Alive for some return codes.
 */
	wp->flags &= ~WEBS_KEEP_ALIVE;

/*
 *	Only output the header if a header has not already been output.
 */
	if ( !(wp->flags & WEBS_HEADER_DONE)) {
		wp->flags |= WEBS_HEADER_DONE;
/*
 *		Redirect behaves much better when sent with HTTP/1.0
 */
		if (redirect != NULL) {
			websWrite(wp, T("HTTP/1.0 %d %s\r\n"), code, websErrorMsg(code));
		} else {
			websWrite(wp, T("HTTP/1.1 %d %s\r\n"), code, websErrorMsg(code));
		}

/*		
 *		By license terms the following line of code must not be modified.
 */
		websWrite(wp, T("Server: %s\r\n"), WEBS_NAME);

/*		
 *		Timestamp/Date is usually the next to go
 */
		if ((date = websGetDateString(NULL)) != NULL) {
			websWrite(wp, T("Date: %s\r\n"), date);
			bfree(B_L, date);
		}
/*
 *		If authentication is required, send the auth header info
 */
		if (code == 401) {
			if (!(wp->flags & WEBS_AUTH_DIGEST)) {
				websWrite(wp, T("WWW-Authenticate: Basic realm=\"%s\"\r\n"), 
					websGetRealm());
#ifdef DIGEST_ACCESS_SUPPORT
			} else {
				char_t *nonce, *opaque;

				nonce = websCalcNonce(wp), 
				opaque = websCalcOpaque(wp), 
				websWrite(wp, 
					T("WWW-Authenticate: Digest realm=\"%s\", domain=\"%s\",")
					T("qop=\"%s\", nonce=\"%s\", opaque=\"%s\",")
					T("algorithm=\"%s\", stale=\"%s\"\r\n"), 
					websGetRealm(),
					websGetHostUrl(),
					T("auth"),
					nonce,
					opaque, T("MD5"), T("FALSE"));
				bfree(B_L, nonce);
				bfree(B_L, opaque);
#endif
			}
		}

		if (wp->flags & WEBS_KEEP_ALIVE) {
			websWrite(wp, T("Connection: keep-alive\r\n"));
		}

		websWrite(wp, T("Pragma: no-cache\r\nCache-Control: no-cache\r\n"));
		websWrite(wp, T("Content-Type: text/html\r\n"));
/*
 *		We don't do a string length here as the message may be multi-line. 
 *		Ie. <CR><LF> will count as only one and we will have a content-length 
 *		that is too short.
 *
 *		websWrite(wp, T("Content-Length: %s\r\n"), message);
 */
		if (redirect) {
			websWrite(wp, T("Location: %s\r\n"), redirect);
		}
		websWrite(wp, T("\r\n"));
	}

/*
 *	If the browser didn't do a HEAD only request, send the message as well.
 */
	if ((wp->flags & WEBS_HEAD_REQUEST) == 0 && message && *message) {
		websWrite(wp, T("%s\r\n"), message);
	}
	websDone(wp, code);
}

/******************************************************************************/
/*
 *	Redirect the user to another webs page
 */

void websRedirect(webs_t wp, char_t *url)
{
	char_t	*msgbuf, *urlbuf, *redirectFmt;

	a_assert(websValid(wp));
	a_assert(url);

	websStats.redirects++;
	msgbuf = urlbuf = NULL;

/*
 *	Some browsers require a http://host qualified URL for redirection
 */
	if (gstrstr(url, T("http://")) == NULL) {
		if (*url == '/') {
			url++;
		}

		redirectFmt = T("http://%s/%s");

#ifdef WEBS_SSL_SUPPORT
		if (wp->flags & WEBS_SECURE) {
			redirectFmt = T("https://%s/%s");
		}
#endif

		fmtAlloc(&urlbuf, WEBS_MAX_URL + 80, redirectFmt,
			websGetVar(wp, T("HTTP_HOST"), 	websHostUrl), url);
		url = urlbuf;
	}

/*
 *	Add human readable message for completeness. Should not be required.
 */
	fmtAlloc(&msgbuf, WEBS_MAX_URL + 80, 
		T("<html><head></head><body>\r\n\
		This document has moved to a new <a href=\"%s\">location</a>.\r\n\
		Please update your documents to reflect the new location.\r\n\
		</body></html>\r\n"), url);

	websResponse(wp, 302, msgbuf, url);

	bfreeSafe(B_L, msgbuf);
	bfreeSafe(B_L, urlbuf);
}
#ifdef ASP_SECURITY_PATCH
///Brad add start
/*output a message means timeout*/
void websTimeoutMsg(webs_t wp, int code, char_t *fmt, ...)
{
	va_list		args;
	char_t		*msg, *userMsg, *buf;

	a_assert(websValid(wp));
	a_assert(fmt);

	websStats.errors++;

	va_start(args, fmt);
	userMsg = NULL;
	fmtValloc(&userMsg, WEBS_BUFSIZE, fmt, args);
	va_end(args);

	msg = T("<html><head><title>Access Denied!</title></head>\r\n\
		<body><blockquote><b>Access Denied!</b><br><br><b>%s</b></blockquote></body></html>\r\n");
/*
 *	Ensure we have plenty of room
 */
	buf = NULL;
	fmtAlloc(&buf, WEBS_BUFSIZE, msg, userMsg);

	websResponse(wp, code, buf, NULL);
	bfreeSafe(B_L, buf);
	bfreeSafe(B_L, userMsg);
}
///end
#endif


/******************************************************************************/
/*	
 *	Output an error message and cleanup
 */

void websError(webs_t wp, int code, char_t *fmt, ...)
{
	va_list		args;
	char_t		*msg, *userMsg, *buf;

	a_assert(websValid(wp));
	a_assert(fmt);

	websStats.errors++;

	va_start(args, fmt);
	userMsg = NULL;
	fmtValloc(&userMsg, WEBS_BUFSIZE, fmt, args);
	va_end(args);

	msg = T("<html><head><title>Document Error: %s</title></head>\r\n\
		<body><h2>Access Error: %s</h2>\r\n\
		when trying to obtain <b>%s</b><br><p>%s</p></body></html>\r\n");
/*
 *	Ensure we have plenty of room
 */
	buf = NULL;
	fmtAlloc(&buf, WEBS_BUFSIZE, msg, websErrorMsg(code), 
		websErrorMsg(code), wp->url, userMsg);

	websResponse(wp, code, buf, NULL);
	bfreeSafe(B_L, buf);
	bfreeSafe(B_L, userMsg);
}

/******************************************************************************/
/*
 *	Return the error message for a given code
 */

static char_t *websErrorMsg(int code)
{
	websErrorType	*ep;

	for (ep = websErrors; ep->code; ep++) {
		if (code == ep->code) {
			return ep->msg;
		}
	}
	a_assert(0);
	return T("");
}

/******************************************************************************/
/*
 *	Do formatted output to the browser. This is the public ASP and form
 *	write procedure.
 */

int websWrite(webs_t wp, char_t *fmt, ...)
{
	va_list		 vargs;
	char_t		*buf;
	int			 rc;
	
	a_assert(websValid(wp));

	va_start(vargs, fmt);

	buf = NULL;
	rc = 0;
	if (fmtValloc(&buf, WEBS_BUFSIZE, fmt, vargs) >= WEBS_BUFSIZE) {
		trace(0, T("webs: websWrite lost data, buffer overflow\n"));
	}
	va_end(vargs);
	a_assert(buf);
	if (buf) {
		rc = websWriteBlock(wp, buf, gstrlen(buf));
		bfree(B_L, buf);
	}
	return rc;
}

/******************************************************************************/
/*
 *	Write a block of data of length "nChars" to the user's browser. Public
 *	write block procedure.  If unicode is turned on this function expects 
 *	buf to be a unicode string and it converts it to ASCII before writing.
 *	See websWriteDataNonBlock to always write binary or ASCII data with no 
 *	unicode conversion.  This returns the number of char_t's processed.
 *	It spins until nChars are flushed to the socket.  For non-blocking
 *	behavior, use websWriteDataNonBlock.
 */

int websWriteBlock(webs_t wp, char_t *buf, int nChars)
{
	int		len, done;
	char	*asciiBuf, *pBuf;

	a_assert(wp);
	a_assert(websValid(wp));
	a_assert(buf);
	a_assert(nChars >= 0);

	done = len = 0;

/*
 *	ballocUniToAsc will convert Unicode to strings to Ascii.  If Unicode is
 *	not turned on then ballocUniToAsc will not do the conversion.
 */
	pBuf = asciiBuf = ballocUniToAsc(buf, nChars);

	while (nChars > 0) {  
#ifdef WEBS_SSL_SUPPORT
		if (wp->flags & WEBS_SECURE) {
			if ((len = websSSLWrite(wp->wsp, pBuf, nChars)) < 0) {
				bfree(B_L, asciiBuf);
				return -1;
			}
			websSSLFlush(wp->wsp);
		} else {
			if ((len = socketWrite(wp->sid, pBuf, nChars)) < 0) {
				bfree(B_L, asciiBuf);
				return -1;
			}
			socketFlush(wp->sid);
		}
#else /* ! WEBS_SSL_SUPPORT */
		if ((len = socketWrite(wp->sid, pBuf, nChars)) < 0) {
			bfree(B_L, asciiBuf);
			return -1;
		}
		socketFlush(wp->sid);
#endif /* WEBS_SSL_SUPPORT */
		nChars -= len;
		pBuf += len;
		done += len;
	}

	bfree(B_L, asciiBuf);
	return done;
}

/******************************************************************************/
/*
 *	Write a block of data of length "nChars" to the user's browser. Same as
 *	websWriteBlock except that it expects straight ASCII or binary and does no
 *	unicode conversion before writing the data.  If the socket cannot hold all
 *	the data, it will return the number of bytes flushed to the socket before
 *	it would have blocked.  This returns the number of chars processed or -1
 *	if socketWrite fails.
 */

int websWriteDataNonBlock(webs_t wp, char *buf, int nChars)
{
	int r;

	a_assert(wp);
	a_assert(websValid(wp));
	a_assert(buf);
	a_assert(nChars >= 0);

#ifdef WEBS_SSL_SUPPORT
	if (wp->flags & WEBS_SECURE) {
		r = websSSLWrite(wp->wsp, buf, nChars);
		websSSLFlush(wp->wsp);
	} else {
		r = socketWrite(wp->sid, buf, nChars);
		socketFlush(wp->sid);
	}
#else
	r = socketWrite(wp->sid, buf, nChars);
	socketFlush(wp->sid);
#endif

	return r;
}

/******************************************************************************/
/*
 *	Decode a URL (or part thereof). Allows insitu decoding.
 */

void websDecodeUrl(char_t *decoded, char_t *token, int len)
{
	char_t	*ip,  *op;
	int		num, i, c;
	
	a_assert(decoded);
	a_assert(token);

	op = decoded;
	for (ip = token; *ip && len > 0; ip++, op++) {
		if (*ip == '+') {
			*op = ' ';
		} else if (*ip == '%' && gisxdigit(ip[1]) && gisxdigit(ip[2])) {

/*
 *			Convert %nn to a single character
 */
			ip++;
			for (i = 0, num = 0; i < 2; i++, ip++) {
				c = tolower(*ip);
				if (c >= 'a' && c <= 'f') {
					num = (num * 16) + 10 + c - 'a';
				} else {
					num = (num * 16) + c - '0';
				}
			}
			*op = (char_t) num;
			ip--;

		} else {
			*op = *ip;
		}
		len--;
	}
	*op = '\0';
}

/******************************************************************************/
#ifdef WEBS_LOG_SUPPORT
/*
 *	Output a log message
 */

static void websLog(webs_t wp, int code)
{
	char_t	*buf;
	char	*abuf;
	int		len;

	a_assert(websValid(wp));

	buf = NULL;
	fmtAlloc(&buf, WEBS_MAX_URL + 80, T("%d %s %d %d\n"), time(0), 
		wp->url, code, wp->written);
	len = gstrlen(buf);
	abuf = ballocUniToAsc(buf, len+1);
	write(websLogFd, abuf, len);
	bfreeSafe(B_L, buf);
	bfreeSafe(B_L, abuf);
}

#endif /* WEBS_LOG_SUPPORT */

/******************************************************************************/
/*
 *	Request timeout. The timeout triggers if we have not read any data from
 *	the users browser in the last WEBS_TIMEOUT period. If we have heard from
 *	the browser, simply re-issue the timeout.
 */

void websTimeout(void *arg, int id)
{
	webs_t		wp;
	int			delay, tm;

	wp = (webs_t) arg;
	a_assert(websValid(wp));
#if defined(HTTP_FILE_SERVER_SUPPORTED)
	websTimeout_httpfiles(wp, id);
#else
	tm = websGetTimeSinceMark(wp) * 1000;
	if (tm >= WEBS_TIMEOUT) {
		websStats.timeouts++;
		emfUnschedCallback(id);

/*
 *		Clear the timeout id
 */
		wp->timeout = -1;
		websDone(wp, 404);
	} else {
		delay = WEBS_TIMEOUT - tm;
		a_assert(delay > 0);
		emfReschedCallback(id, delay);
	}
#endif
}

/******************************************************************************/
/*
 *	Called when the request is done.
 */

void websDone(webs_t wp, int code)
{
	a_assert(websValid(wp));

/*
 * 	Disable socket handler in case keep alive set.
 */
	socketDeleteHandler(wp->sid);

	if (code != 200) {
		wp->flags &= ~WEBS_KEEP_ALIVE;
	}

#ifdef WEBS_PROXY_SUPPORT
	if (! (wp->flags & WEBS_LOCAL_PAGE)) {
		websStats.activeNetRequests--;
	}
#endif

#ifdef WEBS_LOG_SUPPORT
	if (! (wp->flags & WEBS_REQUEST_DONE)) {
		websLog(wp, code);
	}
#endif

/*
 *	Close any opened document by a handler
 */
	websPageClose(wp);

/*
 *	Exit if secure.
 */
#ifdef WEBS_SSL_SUPPORT
	if (wp->flags & WEBS_SECURE) {
		websTimeoutCancel(wp);
		websSSLFlush(wp->wsp);
		socketCloseConnection(wp->sid);
		websFree(wp);
		return;
	}
#endif

/*
 *	If using Keep Alive (HTTP/1.1) we keep the socket open for a period
 *	while waiting for another request on the socket. 
 */
	if (wp->flags & WEBS_KEEP_ALIVE) {
		if (socketFlush(wp->sid) == 0) {
			wp->state = WEBS_BEGIN;
			wp->flags |= WEBS_REQUEST_DONE;
			if (wp->header.buf) {
				ringqFlush(&wp->header);
			}
			socketCreateHandler(wp->sid, SOCKET_READABLE, websSocketEvent, 
				(int) wp);
			websTimeoutCancel(wp);
			wp->timeout = emfSchedCallback(WEBS_TIMEOUT, websTimeout,
				(void *) wp);
			return;
		}
	} else {
		websTimeoutCancel(wp);
		socketSetBlock(wp->sid, 1);
		socketFlush(wp->sid);
		socketCloseConnection(wp->sid);
	}
	websFree(wp);
}

/******************************************************************************/
/*
 *	Allocate a new webs structure
 */

int websAlloc(int sid)
{
	webs_t		wp;
	int			wid;

/*
 *	Allocate a new handle for this connection
 */
	if ((wid = hAllocEntry((void***) &webs, &websMax,
			sizeof(struct websRec))) < 0) {
		return -1;
	}
	wp = webs[wid];

	wp->wid = wid;
	wp->sid = sid;
	wp->state = WEBS_BEGIN;
	wp->docfd = -1;
	wp->timeout = -1;
	wp->dir = NULL;
	wp->path = NULL;
#if defined(HTTP_FILE_SERVER_SUPPORTED)	
	webs_t_init(wp);
#endif
	wp->authType = NULL;
	wp->protocol = NULL;
	wp->protoVersion = NULL;
	wp->password = NULL;
	wp->userName = NULL;
#ifdef DIGEST_ACCESS_SUPPORT
	wp->realm = NULL;
	wp->nonce = NULL;
	wp->digest = NULL;
	wp->uri = NULL;
	wp->opaque = NULL;
	wp->nc = NULL;
	wp->cnonce = NULL;
	wp->qop = NULL;
#endif
#ifdef WEBS_SSL_SUPPORT
	wp->wsp = NULL;
#endif

    /* LohCT: Initialize to NULL */
    wp->multiPartBoundary = NULL;

	ringqOpen(&wp->header, WEBS_HEADER_BUFINC, WEBS_MAX_HEADER);

/*
 *	Create storage for the CGI variables. We supply the symbol tables for
 *	both the CGI variables and for the global functions. The function table
 *	is common to all webs instances (ie. all browsers)
 */
	wp->cgiVars = symOpen(WEBS_SYM_INIT);

	return wid;
}

/******************************************************************************/
/*
 *	Free a webs structure
 */

void websFree(webs_t wp)
{
	a_assert(websValid(wp));

	if (wp->path)
		bfree(B_L, wp->path);
	if (wp->url)
		bfree(B_L, wp->url);
	if (wp->host)
		bfree(B_L, wp->host);
	if (wp->lpath)
		bfree(B_L, wp->lpath);
	if (wp->query)
		bfree(B_L, wp->query);
    if (wp->postData)
        bfree(B_L, wp->postData);
	if (wp->decodedQuery)
		bfree(B_L, wp->decodedQuery);
	if (wp->authType)
		bfree(B_L, wp->authType);
	if (wp->password)
		bfree(B_L, wp->password);
	if (wp->userName)
		bfree(B_L, wp->userName);
	if (wp->cookie)
		bfree(B_L, wp->cookie);
	if (wp->userAgent)
		bfree(B_L, wp->userAgent);
	if (wp->dir)
		bfree(B_L, wp->dir);
	if (wp->protocol)
		bfree(B_L, wp->protocol);
	if (wp->protoVersion)
		bfree(B_L, wp->protoVersion);
	if (wp->cgiStdin)
		bfree(B_L, wp->cgiStdin);
    if (wp->multiPartBoundary)
		bfree(B_L, wp->multiPartBoundary);
#if defined(HTTP_FILE_SERVER_SUPPORTED)
	webs_t_free(wp);
#endif
#ifdef DIGEST_ACCESS_SUPPORT
	if (wp->realm)
		bfree(B_L, wp->realm);
	if (wp->uri)
		bfree(B_L, wp->uri);
	if (wp->digest)
		bfree(B_L, wp->digest);
	if (wp->opaque)
		bfree(B_L, wp->opaque);
	if (wp->nonce)
		bfree(B_L, wp->nonce);
	if (wp->nc)
		bfree(B_L, wp->nc);
	if (wp->cnonce)
		bfree(B_L, wp->cnonce);
	if (wp->qop)
		bfree(B_L, wp->qop);
#endif
#ifdef WEBS_SSL_SUPPORT
	websSSLFree(wp->wsp);
#endif
	symClose(wp->cgiVars);

	if (wp->header.buf) {
		ringqClose(&wp->header);
	}

	websMax = hFree((void***) &webs, wp->wid);
	bfree(B_L, wp);
	a_assert(websMax >= 0);
}

/******************************************************************************/
/*
 *	Return the server address
 */

#ifndef DOWN_SIZE
char_t *websGetHost()
{
	return websHost;
}
#endif

/******************************************************************************/
/*
 *	Return the the url to access the server. (ip address)
 */

#ifndef DOWN_SIZE
char_t *websGetIpaddrUrl()
{
	return websIpaddrUrl;
}
#endif
/******************************************************************************/
/*
 *	Return the server address
 */

char_t *websGetHostUrl()
{
	return websHostUrl;
}

/******************************************************************************/
/*
 *	Return the listen port
 */

int websGetPort()
{
	return websPort;
}

/******************************************************************************/
/*
 *	Get the number of bytes to write
 */

int websGetRequestBytes(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->numbytes;
}

/******************************************************************************/
/*
 *	Get the directory for this request
 */

char_t *websGetRequestDir(webs_t wp)
{
	a_assert(websValid(wp));

	if (wp->dir == NULL) {
		return T("");
	}

	return wp->dir;
}

/******************************************************************************/
/*
 *	Get the flags for this request
 */

int websGetRequestFlags(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->flags;
}

/******************************************************************************/
/*
 *	Return the IP address
 */

#ifndef DOWN_SIZE
char_t *websGetRequestIpaddr(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->ipaddr;
}
#endif

/******************************************************************************/
/*
 *	Set the local path for the request
 */

char_t *websGetRequestLpath(webs_t wp)
{
	a_assert(websValid(wp));

#ifdef WEBS_PAGE_ROM
	return wp->path;
#else
	return wp->lpath;
#endif
}

/******************************************************************************/
/*
 *	Get the path for this request
 */

char_t *websGetRequestPath(webs_t wp)
{
	a_assert(websValid(wp));

	if (wp->path == NULL) {
		return T("");
	}

	return wp->path;
}

/******************************************************************************/
/*
 *	Return the password
 */

char_t *websGetRequestPassword(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->password;
}

/******************************************************************************/
/*
 *	Return the request type
 */

char_t *websGetRequestType(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->type;
}

/******************************************************************************/
/*
 *	Return the username
 */

char_t *websGetRequestUserName(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->userName;
}

/******************************************************************************/
/*
 *	Get the number of bytes written
 */

int websGetRequestWritten(webs_t wp)
{
	a_assert(websValid(wp));

	return wp->written;
}

/******************************************************************************/
/*
 *	Set the hostname
 */

#ifndef DOWN_SIZE
void websSetHost(char_t *host)
{
	gstrncpy(websHost, host, TSZ(websHost));
}
#endif

/******************************************************************************/
/*
 *	Set the host URL
 */

#ifndef DOWN_SIZE
void websSetHostUrl(char_t *url)
{
	a_assert(url && *url);

	bfreeSafe(B_L, websHostUrl);
	websHostUrl = gstrdup(B_L, url);
}
#endif

/******************************************************************************/
/*
 *	Set the IP address
 */

#ifndef DOWN_SIZE
void websSetIpaddr(char_t *ipaddr)
{
	a_assert(ipaddr && *ipaddr);

	gstrncpy(websIpaddr, ipaddr, TSZ(websIpaddr));
}
#endif

/******************************************************************************/
/*
 *	Set the number of bytes to write
 */

void websSetRequestBytes(webs_t wp, int bytes)
{
	a_assert(websValid(wp));
	a_assert(bytes >= 0);

	wp->numbytes = bytes;
}

/******************************************************************************/
/*
 *	Set the flags for this request
 */

#ifndef DOWN_SIZE
void websSetRequestFlags(webs_t wp, int flags)
{
	a_assert(websValid(wp));

	wp->flags = flags;
}
#endif

/******************************************************************************/
/*
 *	Set the local path for the request
 */

void websSetRequestLpath(webs_t wp, char_t *lpath)
{
	a_assert(websValid(wp));
	a_assert(lpath && *lpath);

	if (wp->lpath) {
		bfree(B_L, wp->lpath);
	}
	wp->lpath = bstrdup(B_L, lpath);
	websSetVar(wp, T("PATH_TRANSLATED"), wp->lpath);
}

/******************************************************************************/
/*
 *	Update the URL path and the directory containing the web page
 */

void websSetRequestPath(webs_t wp, char_t *dir, char_t *path)
{
	char_t	*tmp;

	a_assert(websValid(wp));

	if (dir) { 
		tmp = wp->dir;
		wp->dir = bstrdup(B_L, dir);
		if (tmp) {
			bfree(B_L, tmp);
		}
	}
	if (path) {
		tmp = wp->path;
		wp->path = bstrdup(B_L, path);
		websSetVar(wp, T("PATH_INFO"), wp->path);
		if (tmp) {
			bfree(B_L, tmp);
		}
	}
}

/******************************************************************************/
/*
 *	Set the Write handler for this socket
 */

void websSetRequestSocketHandler(webs_t wp, int mask, void (*fn)(webs_t wp))
{
	a_assert(websValid(wp));

	wp->writeSocket = fn;
	socketCreateHandler(wp->sid, SOCKET_WRITABLE, websSocketEvent, (int) wp);
}

/******************************************************************************/
/*
 *	Set the number of bytes written
 */

void websSetRequestWritten(webs_t wp, int written)
{
	a_assert(websValid(wp));

	wp->written = written;
}

/******************************************************************************/
/*
 *	Reurn true if the webs handle is valid
 */

int websValid(webs_t wp)
{
	int		wid;

	for (wid = 0; wid < websMax; wid++) {
		if (wp == webs[wid]) {
			return 1;
		}
	}
	return 0;
}

/******************************************************************************/
/*
 *	Build an ASCII time string.  If sbuf is NULL we use the current time,
 *	else we use the last modified time of sbuf;
 */

char_t *websGetDateString(websStatType *sbuf)
{
	char_t*	cp, *r;
	time_t	now;

	if (sbuf == NULL) {
		time(&now);
	} else {
		now = sbuf->mtime;
	}
	if ((cp = gctime(&now)) != NULL) {
		cp[gstrlen(cp) - 1] = '\0';
		r = bstrdup(B_L, cp);
		return r;
	}
	return NULL;
}

/******************************************************************************/
/*
 *	Mark time. Set a timestamp so that, later, we can return the number of
 *	seconds since we made the mark. Note that the mark my not be a
 *	"real" time, but rather a relative marker.
 */

void websSetTimeMark(webs_t wp)
{
	wp->timestamp = time(0);
}

/******************************************************************************/
/*
 *	Get the number of seconds since the last mark.
 */
#if !defined(HTTP_FILE_SERVER_SUPPORTED)
static int websGetTimeSinceMark(webs_t wp)
#else
int websGetTimeSinceMark(webs_t wp)
#endif
{
	return time(0) - wp->timestamp;
}

/******************************************************************************/
/*
 *	Extract from the wp->query field the content of the uploaded file.
 *	This function is called when the wp->query field contains uploaded
 *	file content in a multipart/form-data format.
 */
#define MAX_LINE 1024
static char_t* extractUploadedFileContent(webs_t wp, int * lenContent)
{
    char_t* part = wp->postData;
    char_t* endPart = wp->postData;
    char_t* endLine;
    char_t* fileContent = NULL;
    int lineLen;
    char_t buf[MAX_LINE];
    int len;
    int firstUploadFile;

	if (wp->multiPartBoundary == NULL) {
		/*
		* content-type is multipart but there are no
		* actually multiple parts. This happens, for example,
		* when the java applet writes to the url.
		* In this case just return the query as is.
		*/
        if (wp->postData == NULL) {
            return NULL;
        } else {
            if (wp->query) {
                if (wp->query[0]) {
/*
 *                  Special case where the POST request also had query data
 *                  specified in the URL, ie. url?query_data. In this case
 *                  the URL query data is separated by a '&' from the posted
 *                  query data.
 */
                    len = gstrlen(wp->query);
                    wp->query = brealloc(B_L, wp->query, (len + wp->lenPostData +
                            2) * sizeof(char_t));
                    if (wp->query) {
                        wp->query[len++] = '&';
                        memcpy(&wp->query[len], wp->postData, wp->lenPostData);
                        wp->query[len + wp->lenPostData] = '\0';
                    }    /* if (wp->query) */
                } else {
/*
 *                  The existing query data came from the POST request so just
 *                  append it.
 */
                    len = gstrlen(wp->query);
                    wp->query = brealloc(B_L, wp->query, (len + wp->lenPostData +
                            1) * sizeof(char_t));
                    if (wp->query) {
                        memcpy(&wp->query[len], wp->postData, wp->lenPostData);
                        wp->query[len + wp->lenPostData] = '\0';
                    }    /* if (wp->query) */
                }    /* if (wp->query[0]) */
            } else {
                wp->query = balloc(B_L, wp->lenPostData + 1);
                if (wp->query) {
                    memcpy(wp->query, wp->postData, wp->lenPostData);
                    wp->query[wp->lenPostData] = '\0';
                }    /* if (wp->query) */
            }
            return NULL;
        }
    }    /* if (wp->multiPartBoundary == NULL) */

    firstUploadFile = FALSE;
    while ((endPart != NULL) && ((part = gstrstr(endPart, wp->multiPartBoundary)) != NULL)) {
		part = gstrchr(part, '\n');
        if (part == NULL) {
            endPart = part;
        } else {
            part++;

            /* supposed to be the Content-Disposition line */
            if (gstrstr(part, "Content-Disposition") == NULL) {
                endPart = part;
            } else {
                endLine = gstrchr(part, '\n');
                if (endLine != NULL) {
                    int endOfHeader = 0;

                    lineLen = (int)endLine - (int)part;
                    lineLen = (lineLen < MAX_LINE) ? lineLen : (MAX_LINE-1);
                    gstrncpy(buf, part, lineLen);
                    buf[lineLen] = 0;

                    while (!endOfHeader) {
                        /*
                         * look for the next empty line that separates
                         * between the header and the body of the part
                         */
                        part = gstrchr(part, '\n');
                        if (part == NULL) {
                            break;
                        } else {
                            part++;
                            if ((*part) == '\n') {
                                part +=1;
                                endOfHeader = 1;
                            } else if (((*part) == '\r') && ((*(part+1)) == '\n')) {
                                part += 2;
                                endOfHeader = 1;
                            }
                        }    /* if (part != NULL) */
                    }    /* while (!endOfHeader) */

                    if (endOfHeader) {
                        char *      tmpStartStr = NULL;
                        char *      tmpEndStr = NULL;
                        char        tmpNameStr[MAX_LINE];
                        int         tmpValLenByte = 0;

                        tmpNameStr[0] = '\0';
                        endPart = xmemstr(part, wp->multiPartBoundary, (wp->lenPostData - ((int)part - (int)wp->postData)));
                        if (endPart != NULL) {
                            if ((tmpStartStr = gstrstr(buf, "filename=")) != NULL) {
                                /* this the uploaded file part */
                                if (!firstUploadFile) {
                                    firstUploadFile = TRUE;
                                    if ((tmpEndStr = gstrchr(&tmpStartStr[10], '\"')) != NULL) {
                                        if ((tmpValLenByte = ((int)tmpEndStr - (int)&tmpStartStr[10])) > 0) {
                                            tmpValLenByte = (tmpValLenByte < MAX_LINE) ? tmpValLenByte : (MAX_LINE-1);
                                            gstrcpy(tmpNameStr, "filename=");
                                            gstrncat(tmpNameStr, &tmpStartStr[10], tmpValLenByte);
                                        }
                                    }    /* if ((tmpEndStr = gstrchr(&tmpStartStr[10], '\"')) != NULL) */
                                    *lenContent = (int)endPart - (int)part - 2; /* exclude the ending \r\n */
                                //#ifdef VOIP_SUPPORT
                                #if 1 //Brad open for saving memory
                                    // rock: use memmove to save memory
                                    fileContent = part;
                                #else
                                    fileContent = balloc(B_L, *lenContent);
                                    memcpy(fileContent, part, *lenContent);
                                #endif
                                }
                            } else if ((tmpStartStr = gstrstr(buf, "form-data; name=")) != NULL) {
                                /* this the parameter part */
                                if ((tmpEndStr = gstrchr(&tmpStartStr[17], '\"')) != NULL) {
                                    if ((tmpValLenByte = ((int)tmpEndStr - (int)&tmpStartStr[17])) > 0) {
                                        tmpValLenByte = (tmpValLenByte < MAX_LINE) ? tmpValLenByte : (MAX_LINE-1);
                                        gstrncpy(tmpNameStr, &tmpStartStr[17], tmpValLenByte);
                                        tmpNameStr[tmpValLenByte] = '\0';
                                        gstrcat(tmpNameStr, "=");
                                        if ((tmpValLenByte = ((int)endPart - (int)part - 2)) > 0) {
                                            tmpValLenByte = (tmpValLenByte < (MAX_LINE-strlen(tmpNameStr))) ? tmpValLenByte : (MAX_LINE-strlen(tmpNameStr)-1);
                                            gstrncat(tmpNameStr, part, tmpValLenByte);
                                        }
                                    }    /* if ((tmpValLenByte = ((int)tmpEndStr - (int)&tmpStartStr[17])) > 0) */
                                }    /* if ((tmpEndStr = gstrchr(&tmpStartStr[17], '\"')) != NULL) */
                            } else {
                                /* this is not the uploaded file part or parameter part */
                                continue;
                            }    /* if (gstrstr(buf, "filename=") != NULL) */

                            if (tmpNameStr[0] != '\0') {
                                if (wp->query) {
                                    if (wp->query[0]) {
/*
 *                                      Special case where the POST request also had query data
 *                                      specified in the URL, ie. url?query_data. In this case
 *                                      the URL query data is separated by a '&' from the posted
 *                                      query data.
 */
                                        len = gstrlen(wp->query);
                                        wp->query = brealloc(B_L, wp->query, (len + gstrlen(tmpNameStr) +
                                            2) * sizeof(char_t));
                                        if (wp->query) {
                                            wp->query[len++] = '&';
                                            memcpy(&wp->query[len], tmpNameStr, gstrlen(tmpNameStr));
                                            wp->query[len + gstrlen(tmpNameStr)] = '\0';
                                        }    /* if (wp->query) */
                                    } else {
/*
 *                                      The existing query data came from the POST request so just
 *                                      append it.
 */
                                        len = gstrlen(wp->query);
                                        wp->query = brealloc(B_L, wp->query, (len + gstrlen(tmpNameStr) +
                                            1) * sizeof(char_t));
                                        if (wp->query) {
                                            memcpy(&wp->query[len], tmpNameStr, gstrlen(tmpNameStr));
                                            wp->query[len + gstrlen(tmpNameStr)] = '\0';
                                        }    /* if (wp->query) */
                                    }    /* if (wp->query[0]) */
                                } else {
                                    wp->query = balloc(B_L, gstrlen(tmpNameStr) + 1);
                                    if (wp->query) {
                                        memcpy(wp->query, tmpNameStr, gstrlen(tmpNameStr));
                                        wp->query[gstrlen(tmpNameStr)] = '\0';
                                    }
                                }    /* if (wp->query) */
                            }    /* if (tmpNameStr[0] != '\0') */
                        }    /* if (endPart != NULL) */
                    } else {
                        endPart = part;
                    }    /* if (endOfHeader) */
                }    /* if (endLine == NULL) */
            }    /* if (gstrstr(part, "Content-Disposition") == NULL) */
        }    /* if (part == NULL) */
    }    /* while ((endPart != NULL) && ((part = gstrstr(endPart, wp->multiPartBoundary)) != NULL)) */
	return (fileContent);
}
/******************************************************************************/
/*
 *	Store the new realm name
 */

#ifndef DOWN_SIZE
void websSetRealm(char_t *realmName)
{
	a_assert(realmName);

	gstrncpy(websRealm, realmName, TSZ(websRealm));
}
#endif

/******************************************************************************/
/*
 *	Return the realm name (used for authorization)
 */

char_t *websGetRealm()
{
	return websRealm;
}


#ifdef WEBS_IF_MODIFIED_SUPPORT
/******************************************************************************/
/*	
 *	These functions are intended to closely mirror the syntax for HTTP-date 
 *	from RFC 2616 (HTTP/1.1 spec).  This code was submitted by Pete Bergstrom.
 */

/*	
 *	RFC1123Date	= wkday "," SP date1 SP time SP "GMT"
 *	RFC850Date	= weekday "," SP date2 SP time SP "GMT"
 *	ASCTimeDate	= wkday SP date3 SP time SP 4DIGIT
 *
 *	Each of these functions tries to parse the value and update the index to 
 *	the point it leaves off parsing.
 */

typedef enum { JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC } MonthEnumeration;
typedef enum { SUN, MON, TUE, WED, THU, FRI, SAT } WeekdayEnumeration;

/******************************************************************************/
/*	
 *	Parse an N-digit value
 */

static int parseNDIGIT(char_t *buf, int digits, int *index) 
{
	int tmpIndex, returnValue;

	returnValue = 0;

	for (tmpIndex = *index; tmpIndex < *index+digits; tmpIndex++) {
		if (gisdigit(buf[tmpIndex])) {
			returnValue = returnValue * 10 + (buf[tmpIndex] - T('0'));
		}
	}
	*index = tmpIndex;
	
	return returnValue;
}

/******************************************************************************/
/*
 *	Return an index into the month array
 */

static int parseMonth(char_t *buf, int *index) 
{
/*	
 *	"Jan" | "Feb" | "Mar" | "Apr" | "May" | "Jun" | 
 *	"Jul" | "Aug" | "Sep" | "Oct" | "Nov" | "Dec"
 */
	int tmpIndex, returnValue;

	returnValue = -1;
	tmpIndex = *index;

	switch (buf[tmpIndex]) {
		case 'A':
			switch (buf[tmpIndex+1]) {
				case 'p':
					returnValue = APR;
					break;
				case 'u':
					returnValue = AUG;
					break;
			}
			break;
		case 'D':
			returnValue = DEC;
			break;
		case 'F':
			returnValue = FEB;
			break;
		case 'J':
			switch (buf[tmpIndex+1]) {
				case 'a':
					returnValue = JAN;
					break;
				case 'u':
					switch (buf[tmpIndex+2]) {
						case 'l':
							returnValue = JUL;
							break;
						case 'n':
							returnValue = JUN;
							break;
					}
					break;
			}
			break;
		case 'M':
			switch (buf[tmpIndex+1]) {
				case 'a':
					switch (buf[tmpIndex+2]) {
						case 'r':
							returnValue = MAR;
							break;
						case 'y':
							returnValue = MAY;
							break;
					}
					break;
			}
			break;
		case 'N':
			returnValue = NOV;
			break;
		case 'O':
			returnValue = OCT;
			break;
		case 'S':
			returnValue = SEP;
			break;
	}

	if (returnValue >= 0) {
		*index += 3;
	}

	return returnValue;
}

/******************************************************************************/
/* 
 *	Parse a year value (either 2 or 4 digits)
 */

static int parseYear(char_t *buf, int *index) 
{
	int tmpIndex, returnValue;

	tmpIndex = *index;
	returnValue = parseNDIGIT(buf, 4, &tmpIndex);

	if (returnValue >= 0) {
		*index = tmpIndex;
	} else {
		returnValue = parseNDIGIT(buf, 2, &tmpIndex);
		if (returnValue >= 0) {
/*
 *			Assume that any year earlier than the start of the 
 *			epoch for time_t (1970) specifies 20xx
 */
			if (returnValue < 70) {
				returnValue += 2000;
			} else {
				returnValue += 1900;
			}

			*index = tmpIndex;
		}
	}

	return returnValue;
}

/******************************************************************************/
/* 
 *	The formulas used to build these functions are from "Calendrical Calculations", 
 *	by Nachum Dershowitz, Edward M. Reingold, Cambridge University Press, 1997.
 */

#include <math.h>

const int GregorianEpoch = 1;

/******************************************************************************/
/*
 *  Determine if year is a leap year
 */

int GregorianLeapYearP(long year) 
{
	int		result;
	long	tmp;
	
	tmp = year % 400;

	if ((year % 4 == 0) &&
		(tmp != 100) &&
		(tmp != 200) &&
		(tmp != 300)) {
		result = TRUE;
	} else {
		result = FALSE;
	}

	return result;
}

/******************************************************************************/
/*
 *  Return the fixed date from the gregorian date
 */

long FixedFromGregorian(long month, long day, long year) 
{
	long fixedDate;

	fixedDate = (long)(GregorianEpoch - 1 + 365 * (year - 1) + 
		floor((year - 1) / 4.0) -
		floor((double)(year - 1) / 100.0) + 
		floor((double)(year - 1) / 400.0) + 
		floor((367.0 * ((double)month) - 362.0) / 12.0));

	if (month <= 2) {
		fixedDate += 0;
	} else if (TRUE == GregorianLeapYearP(year)) {
		fixedDate += -1;
	} else {
		fixedDate += -2;
	}

	fixedDate += day;

	return fixedDate;
}

/******************************************************************************/
/*
 *  Return the gregorian year from a fixed date
 */

long GregorianYearFromFixed(long fixedDate) 
{
	long result, d0, n400, d1, n100, d2, n4, d3, n1, d4, year;

	d0 =	fixedDate - GregorianEpoch;
	n400 =	(long)(floor((double)d0 / (double)146097));
	d1 =	d0 % 146097;
	n100 =	(long)(floor((double)d1 / (double)36524));
	d2 =	d1 % 36524;
	n4 =	(long)(floor((double)d2 / (double)1461));
	d3 =	d2 % 1461;
	n1 =	(long)(floor((double)d3 / (double)365));
	d4 =	(d3 % 365) + 1;
	year =	400 * n400 + 100 * n100 + 4 * n4 + n1;

	if ((n100 == 4) || (n1 == 4)) {
		result = year;
	} else {
		result = year + 1;
	}

	return result;
}

/******************************************************************************/
/* 
 *	Returns the Gregorian date from a fixed date
 *	(not needed for this use, but included for completeness
 */

#if 0
GregorianFromFixed(long fixedDate, long *month, long *day, long *year) 
{
	long priorDays, correction;

	*year =			GregorianYearFromFixed(fixedDate);
	priorDays =		fixedDate - FixedFromGregorian(1, 1, *year);

	if (fixedDate < FixedFromGregorian(3,1,*year)) {
		correction = 0;
	} else if (true == GregorianLeapYearP(*year)) {
		correction = 1;
	} else {
		correction = 2;
	}

	*month = (long)(floor((12.0 * (double)(priorDays + correction) + 373.0) / 367.0));
	*day = fixedDate - FixedFromGregorian(*month, 1, *year);
}
#endif

/******************************************************************************/
/* 
 *	Returns the difference between two Gregorian dates
 */

long GregorianDateDifference(	long month1, long day1, long year1,
								long month2, long day2, long year2) 
{
	return FixedFromGregorian(month2, day2, year2) - 
		FixedFromGregorian(month1, day1, year1);
}


/******************************************************************************/
/*
 *	Return the number of seconds into the current day
 */

#define SECONDS_PER_DAY 24*60*60

static int parseTime(char_t *buf, int *index) 
{
/*	
 *	Format of buf is - 2DIGIT ":" 2DIGIT ":" 2DIGIT
 */
	int returnValue, tmpIndex, hourValue, minuteValue, secondValue;

	hourValue = minuteValue = secondValue = -1;
	returnValue = -1;
	tmpIndex = *index;

	hourValue = parseNDIGIT(buf, 2, &tmpIndex);

	if (hourValue >= 0) {
		tmpIndex++;
		minuteValue = parseNDIGIT(buf, 2, &tmpIndex);
		if (minuteValue >= 0) {
			tmpIndex++;
			secondValue = parseNDIGIT(buf, 2, &tmpIndex);
		}
	}

	if ((hourValue >= 0) &&
		(minuteValue >= 0) &&
		(secondValue >= 0)) {
		returnValue = (((hourValue * 60) + minuteValue) * 60) + secondValue;
		*index = tmpIndex;
	}

	return returnValue;
}

/******************************************************************************/
/*
 *	Return the equivalent of time() given a gregorian date
 */

static time_t dateToTimet(int year, int month, int day) 
{
	long dayDifference;

	dayDifference = FixedFromGregorian(month, day, year) - 
		FixedFromGregorian(1, 1, 1970);

	return dayDifference * SECONDS_PER_DAY;
}

/******************************************************************************/
/*
 *	Return the number of seconds between Jan 1, 1970 and the parsed date
 *	(corresponds to documentation for time() function)
 */

static time_t parseDate1or2(char_t *buf, int *index) 
{
/*	
 *	Format of buf is either
 *	2DIGIT SP month SP 4DIGIT
 *	or
 *	2DIGIT "-" month "-" 2DIGIT
 */
	int		dayValue, monthValue, yearValue, tmpIndex;
	time_t	returnValue;

	returnValue = (time_t) -1;
	tmpIndex = *index;

	dayValue = monthValue = yearValue = -1;

	if (buf[tmpIndex] == T(',')) {
/* 
 *		Skip over the ", " 
 */
		tmpIndex += 2; 

		dayValue = parseNDIGIT(buf, 2, &tmpIndex);
		if (dayValue >= 0) {
/*
 *			Skip over the space or hyphen
 */
			tmpIndex++; 
			monthValue = parseMonth(buf, &tmpIndex);
			if (monthValue >= 0) {
/*
 *				Skip over the space or hyphen
 */
				tmpIndex++; 
				yearValue = parseYear(buf, &tmpIndex);
			}
		}

		if ((dayValue >= 0) &&
			(monthValue >= 0) &&
			(yearValue >= 0)) {
			if (yearValue < 1970) {
/*				
 *				Allow for Microsoft IE's year 1601 dates 
 */
				returnValue = 0; 
			} else {
				returnValue = dateToTimet(yearValue, monthValue, dayValue);
			}
			*index = tmpIndex;
		}
	}
	
	return returnValue;
}

/******************************************************************************/
/*
 *	Return the number of seconds between Jan 1, 1970 and the parsed date
 */

static time_t parseDate3Time(char_t *buf, int *index) 
{
/*
 *	Format of buf is month SP ( 2DIGIT | ( SP 1DIGIT ))
 */
	int		dayValue, monthValue, yearValue, timeValue, tmpIndex;
	time_t	returnValue;

	returnValue = (time_t) -1;
	tmpIndex = *index;

	dayValue = monthValue = yearValue = timeValue = -1;

	monthValue = parseMonth(buf, &tmpIndex);
	if (monthValue >= 0) {
/*		
 *		Skip over the space 
 */
		tmpIndex++; 
		if (buf[tmpIndex] == T(' ')) {
/*
 *			Skip over this space too 
 */
			tmpIndex++; 
			dayValue = parseNDIGIT(buf, 1, &tmpIndex);
		} else {
			dayValue = parseNDIGIT(buf, 2, &tmpIndex);
		}
/*		
 *		Now get the time and time SP 4DIGIT
 */
		timeValue = parseTime(buf, &tmpIndex);
		if (timeValue >= 0) {
/*			
 *			Now grab the 4DIGIT year value
 */
			yearValue = parseYear(buf, &tmpIndex);
		}
	}

	if ((dayValue >= 0) &&
		(monthValue >= 0) &&
		(yearValue >= 0)) {
		returnValue = dateToTimet(yearValue, monthValue, dayValue);
		returnValue += timeValue;
		*index = tmpIndex;
	}
	
	return returnValue;
}


/******************************************************************************/
/*
 *	Although this looks like a trivial function, I found I was replicating the implementation
 *	seven times in the parseWeekday function. In the interests of minimizing code size
 *	and redundancy, it is broken out into a separate function. The cost of an extra 
 *	function call I can live with given that it should only be called once per HTTP request.
 */

static int bufferIndexIncrementGivenNTest(char_t *buf, int testIndex, char_t testChar, 
										  int foundIncrement, int notfoundIncrement) 
{
	if (buf[testIndex] == testChar) {
		return foundIncrement;
	}

	return notfoundIncrement;
}

/******************************************************************************/
/*
 *	Return an index into a logical weekday array
 */

static int parseWeekday(char_t *buf, int *index) 
{
/*	
 *	Format of buf is either
 *	"Mon" | "Tue" | "Wed" | "Thu" | "Fri" | "Sat" | "Sun"
 *	or
 *	"Monday" | "Tuesday" | "Wednesday" | "Thursday" | "Friday" | "Saturday" | "Sunday"
 */
	int tmpIndex, returnValue;

	returnValue = -1;
	tmpIndex = *index;

	switch (buf[tmpIndex]) {
		case 'F':
			returnValue = FRI;
			*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'd', sizeof("Friday"), 3);
			break;
		case 'M':
			returnValue = MON;
			*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'd', sizeof("Monday"), 3);
			break;
		case 'S':
			switch (buf[tmpIndex+1]) {
				case 'a':
					returnValue = SAT;
					*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'u', sizeof("Saturday"), 3);
					break;
				case 'u':
					returnValue = SUN;
					*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'd', sizeof("Sunday"), 3);
					break;
			}
			break;
		case 'T':
			switch (buf[tmpIndex+1]) {
				case 'h':
					returnValue = THU;
					*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'r', sizeof("Thursday"), 3);
					break;
				case 'u':
					returnValue = TUE;
					*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 's', sizeof("Tuesday"), 3);
					break;
			}
			break;
		case 'W':
			returnValue = WED;
			*index += bufferIndexIncrementGivenNTest(buf, tmpIndex+3, 'n', sizeof("Wednesday"), 3);
			break;
	}
	return returnValue;
}

/******************************************************************************/
/*
 *		Parse the date and time string.
 */

static time_t dateParse(time_t tip, char_t *cmd)
{
	int index, tmpIndex, weekday, timeValue;
	time_t parsedValue, dateValue;

	parsedValue = (time_t) 0;
	index =	timeValue = 0;
	weekday = parseWeekday(cmd, &index);

	if (weekday >= 0) {
		tmpIndex = index;
		dateValue = parseDate1or2(cmd, &tmpIndex);
		if (dateValue >= 0) {
			index = tmpIndex + 1;
/*
 *			One of these two forms is being used
 *			wkday "," SP date1 SP time SP "GMT"
 *			weekday "," SP date2 SP time SP "GMT"
 */
			timeValue = parseTime(cmd, &index);
			if (timeValue >= 0) {
/*				
 *				Now match up that "GMT" string for completeness
 *				Compute the final value if there were no problems in the parse
 */
				if ((weekday >= 0) &&
					(dateValue >= 0) &&
					(timeValue >= 0)) {
					parsedValue = dateValue + timeValue;
				}
			}
		} else {
/* 
 *			Try the other form - wkday SP date3 SP time SP 4DIGIT
 */
			tmpIndex = index;
			parsedValue = parseDate3Time(cmd, &tmpIndex);
		}
	}

	return parsedValue;
}

#endif /* WEBS_IF_MODIFIED_SUPPORT */

/******************************************************************************/
