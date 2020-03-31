<html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Port Filtering</title>
<script type="text/javascript" src="util_gw.js"> </script>
<script>
function addClick()
{
  if (!document.formFilterAdd.enabled.checked)
  	return true;

  if (document.formFilterAdd.fromPort.value=="" && document.formFilterAdd.toPort.value==""
  		&& document.formFilterAdd.comment.value=="" )
	return true;

  if (document.formFilterAdd.fromPort.value=="") {
  	alert("You should set a port range for adding in an entry.");
	document.formFilterAdd.fromPort.focus();
	return false;
  }
  if ( validateKey( document.formFilterAdd.fromPort.value ) == 0 ) {
	alert("Invalid port number! It should be the decimal number (0-9).");
	document.formFilterAdd.fromPort.focus();
	return false;
  }
  d1 = getDigit(document.formFilterAdd.fromPort.value, 1);
  if (d1 > 65535 || d1 < 1) {
	alert("Invalid port number! You should set a value between 1-65535.");
	document.formFilterAdd.fromPort.focus();
	return false;
  }
  if (document.formFilterAdd.toPort.value!="") {
  	if ( validateKey( document.formFilterAdd.toPort.value ) == 0 ) {
		alert("Invalid port number! It should be the decimal number (0-9).");
		document.formFilterAdd.toPort.focus();
		return false;
  	}
	d2 = getDigit(document.formFilterAdd.toPort.value, 1);
 	if (d2 > 65535 || d2 < 1) {
		alert("Invalid port number! You should set a value between 1-65535.");
		document.formFilterAdd.toPort.focus();
		return false;
  	}
	if (d1 > d2 ) {
		alert("Invalid port range! 1st port value should be less than 2nd value.");
		document.formFilterAdd.fromPort.focus();
		return false;

	}
   }
   return true;
}


function deleteClick()
{
  if ( !confirm('Do you really want to delete the selected entry?') ) {
	return false;
  }
  else
	return true;
}

function deleteAllClick()
{
   if ( !confirm('Do you really want to delete the all entries?') ) {
	return false;
  }
  else
	return true;
}

function disableDelButton()
{
	disableButton(document.formFilterDel.deleteSelFilterPort);
	disableButton(document.formFilterDel.deleteAllFilterPort);
}

function updateState()
{
  if (document.formFilterAdd.enabled.checked) {
 	enableTextField(document.formFilterAdd.fromPort);
 	enableTextField(document.formFilterAdd.toPort);
	enableTextField(document.formFilterAdd.protocol);
 	enableTextField(document.formFilterAdd.comment);
  }
  else {
 	disableTextField(document.formFilterAdd.fromPort);
 	disableTextField(document.formFilterAdd.toPort);
 	disableTextField(document.formFilterAdd.protocol);
	disableTextField(document.formFilterAdd.comment);
  }
}

</script>
</head>

<body>
<blockquote>
<h2><font color="#0000FF">Port Filtering</font></h2>

<table border=0 width="500" cellspacing=4 cellpadding=0>
<tr><td><font size=2>
 Entries in this table are used to restrict certain types of data packets from your local
 network to Internet through the Gateway.  Use of such filters can be helpful in securing
 or restricting your local network.
</font></td></tr>

<tr><td><hr size=1 noshade align=top></td></tr>

<form action=/goform/formFilter method=POST name="formFilterAdd">
<tr><td><font size=2><b>
   	<input type="checkbox" name="enabled" value="ON" <% if (getIndex("portFilterEnabled")) write("checked");
   	%> ONCLICK=updateState()>&nbsp;&nbsp;Enable Port Filtering</b><br>
    </td>
</tr>

<tr><td>
     <p><b><font size=2>Port Range: </b></font>
  		<input type="text" name="fromPort" size="4"><b>-</b>
      		<input type="text" name="toPort" size="4"></font>&nbsp;&nbsp;
  	<b><font size=2>Protocol:</b> <select name="protocol">
    		<option select value="0">Both</option>
    		<option value="1">TCP</option>
    		<option value="2">UDP</option>
    		</select></font>&nbsp;&nbsp
  	<b><font size=2>Comment: </b> <input type="text" name="comment" size="16" maxlength="20"></font>
     </p>
     <p><input type="submit" value="Apply Changes" name="addFilterPort" onClick="return addClick()">&nbsp;&nbsp;
        <input type="reset" value="Reset" name="reset">
        <input type="hidden" value="/portfilter.asp" name="submit-url">
     </p>
<script> updateState(); </script>
</td><tr>
</form>
</table>

<br>
<form action=/goform/formFilter method=POST name="formFilterDel">
  <table border="0" width=500>
  <tr><font size=2><b>Current Filter Table:</b></font></tr>
  <% portFilterList(); %>
  </table>
  <br>
  <input type="submit" value="Delete Selected" name="deleteSelFilterPort" onClick="return deleteClick()">&nbsp;&nbsp;
  <input type="submit" value="Delete All" name="deleteAllFilterPort" onClick="return deleteAllClick()">&nbsp;&nbsp;&nbsp;
  <input type="reset" value="Reset" name="reset">
  <input type="hidden" value="/portfilter.asp" name="submit-url">
 <script>
   	<% entryNum = getIndex("portFilterNum");
   	  if ( entryNum == 0 ) {
      	  	write( "disableDelButton();" );
       	  } %>
 </script>
</form>

</blockquote>
</body>
</html>
