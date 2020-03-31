<html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Wireless Schedule Settings</title>
<script type="text/javascript" src="util_gw.js"> </script>
<script>
	
	var MAXNUM_SCHEDULE = "<% getInfo("maxWebWlSchNum"); %>"*1;
		
	function init()
	{
		var f=document.mainform;
		
		for(i=0;i<MAXNUM_SCHEDULE;i++)
		{
			//alert(get_by_id("wlsch_from_"+i).value);
			wlsch_from_init(i, get_by_id("wlsch_from_"+i).value);
			wlsch_to_init(i, get_by_id("wlsch_to_"+i).value);
			wlsch_day_select(i, get_by_id("wlsch_enable_"+i).value);
			wlsch_weekday_select(i, get_by_id("wlsch_day_"+i).value);
		}
		
		wlsch_onoff_select(get_by_id("wlsch_onoff").value);
	}		
	
	
	function wlsch_onoff_select(value)
	{
		if(value == 1 || value == true)
		{
			get_by_id("wlsch_onoff").value = 1;
			get_by_id("onoff").checked = true;
		}
		else
		{
			get_by_id("wlsch_onoff").value = 0;
			get_by_id("onoff").checked = false;
		}
		
		var isgray = (value == 1?false:true);;
			
		for(i=0;i<MAXNUM_SCHEDULE;i++)
		{
			get_by_id("enable_"+i).disabled = isgray;
			get_by_id("from_hour_"+i).disabled = isgray;
			get_by_id("from_min_"+i).disabled = isgray;
			get_by_id("to_hour_"+i).disabled = isgray;
			get_by_id("to_min_"+i).disabled = isgray;
		}
	}
	
	function wlsch_from_init(index, value)
	{
		var starthours=Math.floor(parseInt(value, 10)/60);
		//alert("starthours="+starthours);
		var startmin=parseInt(value, 10)%60;
		//alert("startmin="+startmin);
		get_by_id("from_hour_"+index).value = starthours;
		get_by_id("from_min_"+index).value = startmin;		
			}
	
	function wlsch_to_init(index, value)
			{
		var endhours=Math.floor(parseInt(value, 10)/60);
		//alert("endhours="+endhours);
		var endmin=parseInt(value, 10)%60;
		//alert("endmin="+endmin);
		get_by_id("to_hour_"+index).value = endhours;
		get_by_id("to_min_"+index).value = endmin;		
			}

	function wlsch_from_select(index)
			{
		var starthours=get_by_id("from_hour_"+index).value*1;
		//alert("starthours="+starthours);
		var startmin=get_by_id("from_min_"+index).value*1;
		//alert("startmin="+startmin);
		get_by_id("wlsch_from_"+index).value = starthours*60+startmin;
			}
	
	function wlsch_to_select(index)
			{
		var tohours=get_by_id("to_hour_"+index).value*1;
		//alert("tohours="+tohours);
		var tomin=get_by_id("to_min_"+index).value*1;
		//alert("tomin="+tomin);
		get_by_id("wlsch_to_"+index).value = tohours*60+tomin;
	}
	
	function wlsch_day_select(index, value)
	{
//alert("wlsch_day_select index="+index);		
		if(value == 1 || value == true)
		{
			get_by_id("wlsch_enable_"+index).value = 1;
			get_by_id("enable_"+index).checked = true;
		}
		else
		{
			get_by_id("wlsch_enable_"+index).value = 0;
			get_by_id("enable_"+index).checked = false;
		}
		//alert(get_by_id("wlsch_enable_"+index).value);
	}
	
	function wlsch_weekday_select(index, value)
	{
		get_by_id("wlsch_day_"+index).value = value;
		get_by_id("day_"+index).value = value;
	}
	
	function page_submit()
	{
		for(index=0;index<MAXNUM_SCHEDULE;index++)
		{
			if(get_by_id("wlsch_from_"+index).value*1 > get_by_id("wlsch_to_"+index).value*1)
			{
				alert("Schedule Rule "+(index+1)+" Error. The start time bigger than end time");
				return false;
			}
			
			
		}
		document.forms.mainform.submit();
		
	}
	
	var token= new Array();		
	var DataArray = new Array();
	token[0]='<% wlSchList("wlSchList_0");%>';
	token[1]='<% wlSchList("wlSchList_1");%>';
	token[2]='<% wlSchList("wlSchList_2");%>';
	token[3]='<% wlSchList("wlSchList_3");%>';
	token[4]='<% wlSchList("wlSchList_4");%>';
	token[5]='<% wlSchList("wlSchList_5");%>';
	token[6]='<% wlSchList("wlSchList_6");%>';
	token[7]='<% wlSchList("wlSchList_7");%>';	
	token[8]='<% wlSchList("wlSchList_8");%>';	
	token[9]='<% wlSchList("wlSchList_9");%>';	
	
	function wlSchList(num)
	{
		for (var i = 0; i < num; i++)
		{
			/* eco/day/fTime/tTime/week */
			DataArray = token[i].split("|");
			
			document.write("<tr><td align = middle bgcolor='#C0C0C0'><font size='2'>");
      document.write("		<input type='hidden' id='wlsch_enable_"+i+"' name='wlsch_enable_"+i+"' value='"+DataArray[0]+"'*1>");
			document.write("		<input type='checkbox' id='enable_"+i+"' onclick='wlsch_day_select("+i+",this.checked);'></td>");
				      	
      document.write("<td bgcolor='#C0C0C0'><font size='2'>");				      	
      document.write("		<input type='hidden' id='wlsch_day_"+i+"' name='wlsch_day_"+i+"' value='"+DataArray[1]+"'*1>");
      document.write("		&nbsp;<select id='day_"+i+"' size='1' onchange='wlsch_weekday_select("+i+", this.value);'>");
						dispalyWeekDayOption();
			document.write("		</select> </font></td>");
			
      document.write("<td bgcolor='#C0C0C0'><font size='2'>");
      document.write("		<input type='hidden' id='wlsch_from_"+i+"' name='wlsch_from_"+i+"' value='"+DataArray[2]+"'*1>");
      document.write("		&nbsp;<select id='from_hour_"+i+"' size='1' onchange='wlsch_from_select("+i+");'>");
          	dispalyFromHourOption();
      document.write("		</select>	(hour)");
      document.write(" 		<select id='from_min_"+i+"' size='1' onchange='wlsch_from_select("+i+");'>");
          	dispalyFromMinOption();
      document.write("		</select>	(min)	</font></td>");
			
			document.write("<td bgcolor='#C0C0C0'><font size=2'>");
      document.write("		<input type='hidden' id='wlsch_to_"+i+"' name='wlsch_to_"+i+"' value='"+DataArray[3]+"'*1>");
      document.write("		&nbsp;<select id='to_hour_"+i+"' size='1' onchange='wlsch_to_select("+i+");'>");
          	dispalyFromHourOption();
      document.write("    </select>	(hour)");
      document.write("		<select id='to_min_"+i+"' size='1' onchange='wlsch_to_select("+i+");'>");
          	dispalyFromMinOption();
      document.write("		</select>	(min)	</font></td></tr>");
			
  	}
	}
	
	function page_reset()
	{
			
			
		for(i=0;i<MAXNUM_SCHEDULE;i++)
		{
			DataArray = token[i].split("|");
			//alert(get_by_id("wlsch_from_"+i).value);
			wlsch_from_init(i, DataArray[2]);
			wlsch_to_init(i, DataArray[3]);
			wlsch_day_select(i, DataArray[0]);
			wlsch_weekday_select(i, DataArray[1]);
		}
		DataArray = token[0].split("|");
		
		
		wlsch_onoff_select(get_by_id("wlsch_onoff").value);
		
	}
	
function dispalyWeekDayOption()
{
	var strTmp;
	var weekDay=["Sun","Mon","Thu","Wed","Tue","Fri","Sat","Everyday"];
			
	for(var i = 0; i <= 7; i++)
	{
		strTmp ="<OPTION value="+i+">"+weekDay[i];
		document.write(strTmp);
	}	
	
}
	
function dispalyFromHourOption()
{
	var strTmp;
	for(var i = 0; i < 24; i++){
		if(i<10){
				strTmp ="<OPTION value="+i+">"+0+i;
		}
		else{
				strTmp ="<OPTION value="+i+">"+i;
		}
		document.write(strTmp);
	}	
}
	
function dispalyFromMinOption()
{
	var strTmp;
	for(var i = 0; i < 60; i++){
		if(i<10){
				strTmp ="<OPTION value="+i+">"+0+i;
		}
		else{
				strTmp ="<OPTION value="+i+">"+i;
		}
		document.write(strTmp);
	}	
}	
	
</script>
</head>
  
  <body onload="init();">
  <blockquote>
  <form action=/goform/formNewSchedule method=POST name="mainform">
  	<input type="hidden" value="/wlsch.asp" name="submit-url">
  <h2><font color="#0000FF">Wireless Schedule</font></h2>
	<table border=0 width="660" cellspacing=4 cellpadding=0>
	<tr><td><font size=2>
	 	This page allows you setup the wireless schedule rule. Please do not forget to configure 
		system time before enable this feature.
	</font></td></tr>

    <tr><td><hr size="1" align="top" noshade="noshade"></td></tr>
    
    
  	
  	<tr><td><font size=2><b>
    <input type='hidden' id='wlsch_onoff' name='wlsch_onoff' value='<% getInfo("wlsch_onoff"); %>'*1>
		   	<input id="onoff" type="checkbox" onclick='wlsch_onoff_select(this.checked);'>&nbsp;&nbsp;Enable Wireless Schedule</b><br>
		    </td>
    </tr>
  </table>
    
    
    <table border="0" width=660>
  
  <tr>
  	<td height="30" align=center width="%" bgcolor="#808080"><font size="2"><b>&nbsp;Enable&nbsp;</b></font></td>
  	<td height="30" align=center width="20%" bgcolor="#808080"><font size="2"><b>&nbsp;Day&nbsp;</b></font></td>
  	<td align=center width="40%" bgcolor="#808080"><font size="2"><b>From</b></font></td>
  	<td align=center width="40%" bgcolor="#808080"><font size="2"><b>&nbsp;To&nbsp;</b></font></td>		
	</tr>
	
    <!--
      <tr>
				<td align = center bgcolor="#C0C0C0"><font size="2">
      		<input type='hidden' id='wlsch_enable_1' name='wlsch_enable_1' value='1'>
      		<input type='checkbox' id='enable_1' onclick='wlsch_day_select(1,this.checked);'>
      		Everyday
      	</font></td>      	
      	
      	<td bgcolor="#C0C0C0"><font size="2">
      		<input type='hidden' id='wlsch_from_1' name='wlsch_from_1' value="0">
      		<select id="from_hour_1" size="1" onchange='wlsch_from_select(1);'>
          	<SCRIPT>dispalyFromHourOption();</SCRIPT>
      		</select>
      		(hour)
      		<select id="from_min_1" size="1" onchange='wlsch_from_select(1);'>
          	<SCRIPT>dispalyFromMinOption();</SCRIPT>
      		</select>
      		(min)
      	</font></td>
      	
      	<td bgcolor="#C0C0C0"><font size="2">
      		<input type='hidden' id='wlsch_to_1' name='wlsch_to_1' value="0">
      		<select id="from_to_1" size="1" onchange='wlsch_to_select(1);'>
          	<SCRIPT>dispalyFromHourOption();</SCRIPT>
      		</select>
      		(hour)
      		<select id="from_min_1" size="1" onchange='wlsch_to_select(1);'>
          	<SCRIPT>dispalyFromMinOption();</SCRIPT>
      		</select>
      		(min)
      	</font></td>
      </tr>
    -->
		<SCRIPT >wlSchList(MAXNUM_SCHEDULE);</SCRIPT>
    
		<br>
		<tr><td>&nbsp;</td></tr>
			
	
  </table>
  <tr><td>
    <input type=button name=apply value='Apply Changes' onclick="page_submit();">&nbsp;&nbsp;
    <input type="button" value="Reset" onclick="page_reset();">
  </td></tr>
	</form>
 	<br>
  <br>
  <br>
    
	</blockquote>
  </body></html>