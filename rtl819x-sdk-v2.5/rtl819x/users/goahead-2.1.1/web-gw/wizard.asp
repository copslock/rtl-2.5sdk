<html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Setup Wizard</title>
<script type="text/javascript" src="util_gw.js"></script>
<style>
.on {display:on}
.off {display:none}
</style>
<script>
//for wlan1 page
var wlan_channel=new Array();
var wlan_idx=<% write(getIndex("wlan_idx")); %> ;
var wlan_num=<% write(getIndex("show_wlan_num")); %> ;
var opmode=<% write(getIndex("opMode")); %> ;
var wispWanId = <% write(getIndex("wispWanId")); %> ;
var WiFiTest=<% write(getIndex("WiFiTest")); %> ;
var isMeshDefined = <% write(getIndex("isMeshDefined")); %> ;
var isNewMeshUI =  <% write(getIndex("isNewMeshUI")); %> ;
var defPskLen=new Array();
var defPskFormat=new Array();
var init_bound=new Array();
var init_sideband=new Array();
var wlanBand2G5G=new Array();

//For wapi
var defWapiAuth=new Array();
var defWapiPskFormat=new Array();
var defWapiPskValue=new Array();
var defWapiASIP=new Array();
var defWapiCertSel=new Array();

var autoconf=new Array();
var regDomain=new Array();
var defaultChan=new Array();
var lastBand=new Array();
var lastRegDomain=new Array();
var usedBand=new Array();
var RFType=new Array();
var APMode=new Array();
var bandIdx=new Array();
var bandIdxAP=new Array();
var bandIdxClient=new Array();
var startChanIdx=new Array();
var disableSSID=new Array();
var wlanDisabled=new Array();
var networkType=new Array();
var keyinstall=new Array();
var ssid=new Array();
var encrypt=new Array();
var wep=new Array();
var defaultKeyId=new Array();
var pskValue=new Array();
var macClone=new Array();
var keyType=new Array();
var autoCfgWlanMode=new Array();


var mode_index = "<% write(getIndex("wlanMode")); %>";
var nettype_index = "<% write(getIndex("networkType")); %>";
/*
autoconf[wlan_idx]= 0;
*/
lastBand[wlan_idx] = 0;
lastRegDomain[wlan_idx] = 0;
bandIdxAP[wlan_idx] = -1;
bandIdxClient[wlan_idx] = -1;
startChanIdx[wlan_idx] = 0;
disableSSID[wlan_idx] = 0;

// for WPS ------------------------------------------------>>
var wps_disabled=<% write(getIndex("wscDisable"));%>;
var wps_ssid_old='<% getInfo("ssid"); %>';
var wps_mode_old=<% write(getIndex("wlanMode")); %>;
var wps_config_by_registrar=<% write(getIndex("wps_by_reg")); %>;
var wps_encrypt_old=<% write(getIndex("encrypt")); %>;
var wps_wpaCipher_old=<% write(getIndex("wpaCipher"));%>;
var wps_wpa2Cipher_old=<% write(getIndex("wpa2Cipher"));%>;
var wps_psk_old='<% getInfo("pskValue");%>';
var wps_psk_unmask_old='<% getInfo("pskValueUnmask");%>';
var wps_type_old=<% write(getIndex("networkType"));%>;
var wps_enable1x=<% write(getIndex("enable1X"));%>;
var wps_wpa_auth=<% write(getIndex("wpaAuth"));%>;
var wps_wizard=1;
//<<------------------------------------------------- for WPS

var isPocketRouter="<% getInfo("isPocketRouter"); %>"*1;
var pocketRouter_Mode="<% getInfo("pocketRouter_Mode"); %>"*1;
var POCKETROUTER_GATEWAY = 3;
var POCKETROUTER_BRIDGE_AP = 2;
var POCKETROUTER_BRIDGE_CLIENT = 1;

var isWDSDefined = <% write(getIndex("isWDSDefined")); %> ;
var isAP = <% write(getIndex("isPureAP")); %>;
var wlan_support_92D =  <% write(getIndex("wlan_support_92D")); %> ;
var wlan_support_92D_concurrent =  <% write(getIndex("wlan_support_92D_concurrent")); %> ; //0:no; 1:yes; 2:force concurrent

function saveChanges_lan(form)
{
  if ( checkIpAddr(form.lan_ip, 'Invalid IP address value! ') == false )
	    return false;
  if (checkIPMask(form.lan_mask) == false)
  	return false ;
   return true;
}

function disable_all(form, wlan_id)
{
  disableTextField(form.elements["method"+wlan_id]);
  disableTextField(form.elements["pskFormat"+wlan_id]);
  disableTextField(form.elements["pskValue"+wlan_id]);
}

function checkState(wlan_id)
{
	form = document.wizard;
	if (disableSSID[wlan_id]) {
		disable_all(form,wlan_id);
	}
	else {
		if(form.elements["method"+wlan_id].selectedIndex==0){
			show_div(false,("wapi_div"+wlan_id));	
			show_div(false,("wpa_div"+wlan_id));	
			show_div(false,("wep_div"+wlan_id));	
			document.getElementById(("wep_btn"+wlan_id)).style.top = "260px";
		}
		else if(form.elements["method"+wlan_id].selectedIndex==1){
			show_div(false,("wapi_div"+wlan_id));	
			show_div(false,("wpa_div"+wlan_id));	
			show_div(true,("wep_div"+wlan_id));	
			document.getElementById(("wep_btn"+wlan_id)).style.top = "350px";
		}
		else if(form.elements["method"+wlan_id].selectedIndex>=2){
			if(form.elements["method"+wlan_id].selectedIndex==5){	//wapi
				show_div(true,("wapi_div"+wlan_id));	
				show_div(false,("wpa_div"+wlan_id));	
				show_div(false,("wep_div"+wlan_id));	
				document.getElementById(("wep_btn"+wlan_id)).style.top = "350px";
			}
			else{
				show_div(false,("wapi_div"+wlan_id));	
				show_div(true,("wpa_div"+wlan_id));	
				show_div(false,("wep_div"+wlan_id));	
				document.getElementById(("wep_btn"+wlan_id)).style.top = "260px";
			}
		}
	}
}

function updateFormat(form, wlan_id)
{
  if (form.elements["length"+wlan_id].selectedIndex == 0) {
	form.elements["format"+wlan_id].options[0].text = 'ASCII (5 characters)';
	form.elements["format"+wlan_id].options[1].text = 'Hex (10 characters)';
  }
  else {
	form.elements["format"+wlan_id].options[0].text = 'ASCII (13 characters)';
	form.elements["format"+wlan_id].options[1].text = 'Hex (26 characters)';
  }
  form.elements["format"+wlan_id].selectedIndex =  	keyType[wlan_id];
  
   //brad20070726
   //setDefaultKeyValue(form, wlan_id);
   setDefaultWEPKeyValue(form, wlan_id);
}
function setDhcpRange()
{
	// cal the bigger ip range 
	form = document.wizard;
	//check ip
	val = getDigit(form.lan_ip.value,4) ;
	//check mask
	mask_end = (255 - getDigit(form.lan_mask.value,4)) + (getDigit(form.lan_mask.value,4)&val);
	mask_start = (getDigit(form.lan_mask.value,4)&val);
	// val will in range of mask start, end
	range1 = mask_end - val; // val+1 to mask_end
	range2 = val-mask_start;	    // 1 to val-1
	if((mask_end - mask_start) < 3){
		form.dhcp.value = 0 ; //disable
		return false ;
	}	
//	dhcpStart = (range1 > range2)? (val+1):(mask_start+1) ;
//	dhcpEnd = (range1 > range2)? (mask_end-1): (val-1);

//	form.dhcpRangeStart.value = getDigit(form.lan_ip.value,1) + "." + getDigit(form.lan_ip.value,2)
//	+"." + getDigit(form.lan_ip.value,3) + "."+ dhcpStart ;
	
//	form.dhcpRangeEnd.value = getDigit(form.lan_ip.value,1) + "." + getDigit(form.lan_ip.value,2) +"." + getDigit(form.lan_ip.value,3) + "." +dhcpEnd ;


}
/*-- keith: add l2tp support. 20080515  */
function wanTypeSelection(field)
{
  if(!document.getElementById){
  	alert('Error! Your browser must have CSS support !');
  	return;
  }
  if(field.selectedIndex == 0){	//static ip
  	wanShowDiv(0 ,1, 0, 0, 1, 0); //pptp, dns, dnsMode, pppoe, static (div), l2tp
	document.getElementById("wan_btn").style.top = "320px";
  }
  else if(field.selectedIndex == 1){//Dhcp
  	wanShowDiv(0 ,0, 0, 0, 0, 0, 0); 
	document.getElementById("wan_btn").style.top = "260px";
  }
  else if(field.selectedIndex == 2){ //pppoe
  	wanShowDiv(0 ,0, 0, 1, 0, 0, 0); 
	document.getElementById("wan_btn").style.top = "260px";
  }
  else if(field.selectedIndex == 3){ //pptp
  	wanShowDiv(1 ,0, 0, 0, 0, 0, 0); 
	document.getElementById("wan_btn").style.top = "320px";
  }
  else if(field.selectedIndex == 4){ //l2tp /*-- keith: add l2tp support. 20080515  */
  	wanShowDiv(0 ,0, 0, 0, 0, 1, 0); 
	document.getElementById("wan_btn").style.top = "320px";
  }
  else if(field.selectedIndex == 5){ //USB3G
    wanShowDiv(0 ,0, 0, 0, 0, 0, 1);
    document.getElementById("wan_btn").style.top = "320px";
  }
}

function wizardHideDiv()
{

	show_div(false, "opmode_div");
	show_div(false, "top_div");
	show_div(false, "lan_div");
	show_div(false, "ntp_div");
	show_div(false, "wan_div");
	show_div(false, "wlan_band_mode_div");

	<% 
	   var i ;
	   for (i=0; i<getIndex("wlan_num"); i=i+1) 
	     { 
		write('show_div(false, "wlan1_div'+i+'");\n'); 
		write('show_div(false, "wlan2_div'+i+'");\n'); 
	     } 
	%>

show_div(false, "pocket_wlan_band_mode_div");

         show_div(false, "pocket_wlan_name_div");
  show_div(false, "pocket_wlan1_ssid_div");
         
	show_div(false, "pocket_wlan_security_div");
	show_div(false, "pocket_wan_setting_div");

	show_div(false, "pocket_wlan1_security_div");
	show_div(false,("pocket_wpa_div1"));	
	show_div(false,("pocket_wep_div1"));
  }

function saveClick_opmode(next){
	form =  document.wizard;
	wizardHideDiv();
	if(next)
		show_div(true, ("ntp_div"));
	else
		show_div(true, "top_div");
}
function saveClick_ntp(next){
	form =  document.wizard;
	wizardHideDiv();
	if(next)
		show_div(true, ("lan_div"));
	else
		show_div(true, "opmode_div");
}

function saveClick_lan(next){
	form =  document.wizard;
	setDhcpRange();
	if(saveChanges_lan(form) ==false)
	{
		return false ;
	}
	else{
		wizardHideDiv();
		if(next) 
		{
			if(isAP == 1)
			{
				if(wlan_num !=0)
                {
                       if(wlan_support_92D == 1)
                            show_div(true, ("wlan_band_mode_div"));
                       else
                            show_div(true, ("wlan1_div0"));
                }
                else
                {
                	alert("You have no wlan");
                	show_div(true,("top_div"));
                }
            }
			else
				show_div(true, ("wan_div"));
		}
		else
			show_div(true, "ntp_div");
	}			
}
function saveClick_wan(next){
	form =  document.wizard;
	if(saveChanges_wan(form) ==false)
		return false ;
	else{
		wizardHideDiv();
		if(next)
		{
			if(wlan_num !=0)
			{
				if(wlan_support_92D == 1)
					show_div(true, ("wlan_band_mode_div"));
				else
					show_div(true, ("wlan1_div0"));
			}
		}else
			show_div(true, ("lan_div"));
	}
}
function saveClick_wlan1(next, wlan_id){
	form =  document.wizard;
	if(saveChanges_basic(form,wlan_id) ==false)
		return false ;
	else{
		wizardHideDiv();
		if(next)
			show_div(true, ("wlan2_div"+wlan_id));
		else
		{
			if(wlan_id == 0)
			{
				if(wlan_support_92D == 1)
				{
					show_div(true, "wlan_band_mode_div");
				}
				else
				{
				if(isAP == 1)
					show_div(true, "lan_div");
				else	
					show_div(true, "wan_div");
			}
			}
			else
			{
				var wizardForm=document.wizard;
				var wlBandMode = wizardForm.elements["wlBandMode"].value;
				var Band2G5GSupport = wlanBand2G5G[0];
			
				if(wlBandMode == 3) //3:single
				{
					if(wlan_support_92D == 1)
					{
						show_div(true, "wlan_band_mode_div");
					}
					else
					{
						
						if(isAP == 1)
							show_div(true, "lan_div");
						else	
							show_div(true, "wan_div");
					}
				}
				else //2:both
				{
					show_div(true, ("wlan2_div"+(wlan_id-1)));
		}
	}
		}
	}
	
		
}

function Set_onChangeBand(form, wlan_id, band, index){
	    var band;
	    var auto;
 	    var txrate;
	var value;
	
	 var checkid_bound=document.getElementById("channel_bounding");
	 var checkid_sideband = document.getElementById("control_sideband");
	 var mode_selected=0;
	var Type_selected=0;
	var index_channelbound=0;
	value =band.options[index].value;
	if(value ==9 || value ==10 || value ==7 || value ==11){
		checkid_bound.style.display = "";
		checkid_sideband.style.display = "";
	}else{
		checkid_bound.style.display = "none";
		checkid_sideband.style.display = "none";
	}
	
	
	updateChan_channebound(form, wlan_id);		
	Type_selected = document.wizard.elements["type"+wlan_id].selectedIndex;
  	mode_selected=document.wizard.elements["mode"+wlan_id].selectedIndex;
  	//if client and infrastructure mode
  	if(mode_selected ==1){
		if(Type_selected == 0){
			disableTextField(document.wizard.elements["controlsideband"+wlan_id]);
			disableTextField(document.wizard.elements["channelbound"+wlan_id]);
		}else{
			enableTextField(document.wizard.elements["channelbound"+wlan_id]);
			index_channelbound=document.wizard.elements["channelbound"+wlan_id].selectedIndex;
		if(index_channelbound ==0)
			disableTextField(document.wizard.elements["controlsideband"+wlan_id]);	
		else
			enableTextField(document.wizard.elements["controlsideband"+wlan_id]);
		}
	}else{
		enableTextField(document.wizard.elements["channelbound"+wlan_id]);
			index_channelbound=document.wizard.elements["channelbound"+wlan_id].selectedIndex;
		if(index_channelbound ==0)
			disableTextField(document.wizard.elements["controlsideband"+wlan_id]);	
		else
			enableTextField(document.wizard.elements["controlsideband"+wlan_id]);
	}	
	var chan_number_idx=form.elements["chan"+wlan_id].selectedIndex;
	var chan_number= form.elements["chan"+wlan_id].options[chan_number_idx].value;	
	if(chan_number == 0)
		disableTextField(document.wizard.elements["controlsideband"+wlan_id]);	
	else{
		if(document.wizard.elements["channelbound"+wlan_id].selectedIndex == "0")
 			disableTextField(document.wizard.elements["controlsideband"+wlan_id]);	
 		else
			enableTextField(document.wizard.elements["controlsideband"+wlan_id]);		
	}	
}


function cancelClick(){
	
	window.location="wizard.asp" ;
}
function saveClick_wlan2(next, wlan_id)
{

	form =  document.wizard;
	if(form.elements["method"+wlan_id].selectedIndex == 2){
		if(saveChanges_wpa(form, wlan_id) == false)
			return false ;
	}else if(form.elements["method"+wlan_id].selectedIndex == 1){
	//brad20070726
	/*
		if(saveChanges_wep(form, wlan_id) == false)
			return false ;
	*/
		if(saveChanges_wepkey(form, wlan_id) == false)
			return false;
	}
	if(form.elements["method"+wlan_id].selectedIndex == 0)
		form.elements["wepEnabled"+wlan_id].value =  "OFF" ;
	else
		form.elements["wepEnabled"+wlan_id].value =  "ON" ;
	
	wizardHideDiv();
	if(next != 1) //prev
		show_div(true, ("wlan1_div"+wlan_id));
	else if (next == 1)
	{
		if(wlan_id < (wlan_num-1)) //next	
		{
		show_div(true, ("wlan1_div"+(wlan_id+1)));
		}
		else //last page.
		{
			document.wizard.submit();
		}
	}

	//return true ;
}
function opModeClick(mode)
{
	form = document.wizard ;
	wlan_id = form.wispWanId.selectedIndex;
	if(mode == 2){ //WISP mode
		// infrastructure client mode
		 form.elements["mode"+wlan_id].selectedIndex = 1;
		 form.elements["type"+wlan_id].selectedIndex = 0;
	}
	else{    // reset default
		 form.elements["mode"+wlan_id].selectedIndex =  form.elements["mode"+wlan_id].defaultSelected;
		 form.elements["type"+wlan_id].selectedIndex =  form.elements["type"+wlan_id].defaultSelected;

	}
	updateMode(document.wizard, wlan_id);
	updateType(document.wizard, wlan_id);
	updateWISPWan();	

}
function updateWISPWan()
{
	if(wlan_num > 1){
		if(form.opMode[2].checked)
			enableTextField(form.wispWanId);
		else
			disableTextField(form.wispWanId);
	}
}

//wizard wapi
function show_wizard_wapi_settings(wlan_id, index)
{
//	alert("wizard: wlan_id="+wlan_id+", index="+index);
	
	if(index == 2)
 	{
        get_by_id("wapi_psk"+wlan_id).style.display = "";
        get_by_id("wapi_psk_"+wlan_id).style.display = "";
        get_by_id("wapi_as"+wlan_id).style.display = "none";
        get_by_id("wapi_as_"+wlan_id).style.display = "none";
		
       }
       else
       {
        get_by_id("wapi_psk"+wlan_id).style.display = "none";
        get_by_id("wapi_psk_"+wlan_id).style.display = "none";
        get_by_id("wapi_as"+wlan_id).style.display = "";
        get_by_id("wapi_as_"+wlan_id).style.display = "";
       }

}


function Load_Setting()
{
	var dF=document.forms[0];
	<%
		write ("\t\twpa_cipher=\"" + getVirtualIndex("wpaCipher", 0) + "\";\n");
		write ("\t\twpa2_cipher=\"" + getVirtualIndex("wpa2Cipher", 0) + "\";\n");
	%>	
	var dF=document.forms[0];
	if (wpa_cipher == 0)
		wpa_cipher = 1;
	if (wpa2_cipher == 0)
		wpa2_cipher = 2;	
/*			
	if (wpa_cipher & 1)
		dF.ciphersuite<% write(getIndex("wlan_idx")); %>[0].value = "tkip";
	if (wpa_cipher & 2)	
		dF.ciphersuite<% write(getIndex("wlan_idx")); %>[1].value =  "aes";
	if (wpa2_cipher & 1)
		dF.wpa2ciphersuite<% write(getIndex("wlan_idx")); %>[0].value = "tkip";
	if (wpa2_cipher & 2)	
		dF.wpa2ciphersuite<% write(getIndex("wlan_idx")); %>[1].value = "aes";
*/
	
	/* pocket router load setting*/
	var wlBandMode = <% write(getIndex("wlanBand2G5GSelect")); %> ;
	var wizardForm=document.wizard;
	var pocketForm=document.wizardPocket;
	
	var wlan1_phyband= "<% write(getIndex("wlan1_phyband")); %>" ;
	var wlan2_phyband= "<% write(getIndex("wlan2_phyband")); %>" ;
	
  get_by_id("wlan1_band_str0").innerHTML = wlan1_phyband;
	get_by_id("wlan2_band_str0").innerHTML = wlan1_phyband;
	if(wlan_support_92D_concurrent)
	{
		if(wlan1_phyband.indexOf("2.4GHz") > -1) //find
			wlan2_phyband = "5GHz"
		else
			wlan2_phyband = "2.4GHz"
			
		get_by_id("wlan1_band_str1").innerHTML = wlan2_phyband;
		get_by_id("wlan2_band_str1").innerHTML = wlan2_phyband;
	}
	get_by_id("click_wlan2_next"+0).value = "Finished";
	
	if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
	{
		if(wlBandMode == 2) //2:BANDMODEBOTH
		{
			get_by_id("wlan0Ssid").innerHTML = wlan1_phyband+":<br>Wireless 1 Network Name(SSID):";
			get_by_id("wlan1Ssid").innerHTML = wlan2_phyband+":<br>Wireless 2 Network Name(SSID):";
			
			get_by_id("wlan0security").innerHTML = wlan1_phyband+":<br> Encryption";
			get_by_id("wlan1security").innerHTML = wlan2_phyband+":<br> Encryption";
		}
		else
		{
			get_by_id("wlan0Ssid").innerHTML = "Wireless Network Name(SSID):";
			show_div(false, "pocket_wlan1_ssid_div");			
			
			get_by_id("wlan0security").innerHTML = "Encryption";
			show_div(false, "pocket_wlan1_security_div");
		}
	}
	else if(pocketRouter_Mode == POCKETROUTER_BRIDGE_CLIENT)
	{
		get_by_id("wlan0Ssid").innerHTML = "Wireless Network Name(SSID):";

		show_div(false, "pocket_wlan1_ssid_div");			
		
		get_by_id("wlan0security").innerHTML = "Encryption";
		show_div(false, "pocket_wlan1_security_div");
	}
	
	pocketForm.elements["pocket_ssid"].value = wizardForm.elements["ssid0"].value;
	pocketForm.elements["pocketAP_ssid"].value = wizardForm.elements["ssid0"].value;	


	pocketForm.elements["method0"].selectedIndex = wizardForm.elements["method0"].selectedIndex;
	pocketForm.elements["length0"].selectedIndex = wizardForm.elements["length0"].selectedIndex;
	pocketForm.elements["format0"].selectedIndex = wizardForm.elements["format0"].selectedIndex;
	pocketForm.elements["key0"].value = wizardForm.elements["key0"].value;
	
	pocketForm.elements["pskFormat0"].selectedIndex = wizardForm.elements["pskFormat0"].selectedIndex;
	pocketForm.elements["pskValue0"].value = wizardForm.elements["pskValue0"].value;						

	pocketForm.elements["mode0"].value = APMode[0];
	
	if(wlan_num == 2)
	{
		pocketForm.elements["mode1"].value = APMode[1];
		
		pocketForm.elements["pocket_ssid1"].value = wizardForm.elements["ssid1"].value;
		pocketForm.elements["pocketAP_ssid1"].value = wizardForm.elements["ssid1"].value;
		pocketForm.elements["method1"].selectedIndex = wizardForm.elements["method1"].selectedIndex;
		pocketForm.elements["length1"].selectedIndex = wizardForm.elements["length1"].selectedIndex;
		pocketForm.elements["format1"].selectedIndex = wizardForm.elements["format1"].selectedIndex;
		pocketForm.elements["key1"].value = wizardForm.elements["key1"].value;
		
		pocketForm.elements["pskFormat1"].selectedIndex = wizardForm.elements["pskFormat1"].selectedIndex;
		pocketForm.elements["pskValue1"].value = wizardForm.elements["pskValue1"].value;
	}
	
	pocketForm.elements["wapiAuth0"][0].checked = wizardForm.elements["wapiAuth0"][0].checked;
	pocketForm.elements["wapiAuth0"][1].checked = wizardForm.elements["wapiAuth0"][1].checked;

	if(wizardForm.elements["wapiAuth0"][0].checked == true){
		show_wizard_wapi_settings(0, 1);
	}
	else{
		show_wizard_wapi_settings(0, 2);
	}

	if(pocketForm.elements["wapiAuth0"][0].checked == true){
		show_wapi_settings(1);
	}
	else{
		show_wapi_settings(2);
	}

	pocketForm.elements["wapiPskFormat0"].selectedIndex = wizardForm.elements["wapiPskFormat0"].selectedIndex;
	pocketForm.elements["wapiPskValue0"].value = wizardForm.elements["wapiPskValue0"].value;	

	pocketForm.elements["wapiASIP0"].value = wizardForm.elements["wapiASIP0"].value;	
	pocketForm.elements["wapiCertSel0"].selectedIndex = wizardForm.elements["wapiCertSel0"].selectedIndex;	
	
	if(isPocketRouter == 1)
	{
		var i;
		document.wizard.opMode[0].disabled =true;
		document.wizard.opMode[1].disabled =true;
		document.wizard.opMode[2].disabled =true;
		for(i=0;i<wlan_num;i++)
			disableTextField(document.wizard.elements["mode"+i]);
	}	
}

function wizardTopClick()
{
	wizardHideDiv();
	
	if(wlan_support_92D == 1 && pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
	{
		show_div(true, "pocket_wlan_band_mode_div");		
	}
	else if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP || pocketRouter_Mode == POCKETROUTER_BRIDGE_CLIENT)
	{			
			show_div(true, "pocket_wlan_name_div");
	}
	else if(pocketRouter_Mode == POCKETROUTER_GATEWAY)
	{
			var pocketForm=document.wizardPocketGW;
			show_div(true, "pocket_wan_setting_div");
			pocketForm.elements["pppUserName"].focus();
	}
	else
	{
		if(isAP == 1)
			show_div(true, "lan_div");
		else
			show_div(true, "opmode_div");
	}
	
	
}


function saveClick_bandMode(next){

	wizardHideDiv();
	if(next)
	{
		var wizardForm=document.wizard;
		
		var selValue = wizardForm.elements["wlBandModeSel"].value;
		//### edit by sen_liu 2011.4.8 when 92C + 92D, it must be "2.4G+5G  Concurrent"
		if(wlan_support_92D_concurrent == 2)//92C + 92D
		{
			wizardForm.elements["wlBandMode"].value = 2;
			selValue = 2;
		}
		//### end
		wizardForm.elements["wlBandMode"].value = selValue;
		if(selValue == 0) //0:2g
		{
			wizardForm.elements["wlBandMode"].value = 3; //3:single
			wizardForm.elements["Band2G5GSupport"].value = 1;//1:PHYBAND_2G
			
			if(wlan_num !=0)
			{
				if(wlanBand2G5G[0] == 1) //1:2g
				{
					show_div(true, ("wlan1_div0"));
				}
				else
				{
					show_div(true, ("wlan1_div1"));
				}
			}
		}
		else if(selValue == 1) //1:5g
		{
			wizardForm.elements["wlBandMode"].value = 3; //3:single
			wizardForm.elements["Band2G5GSupport"].value = 2;//1:PHYBAND_5G
			
			if(wlan_num !=0)
			{
				if(wlanBand2G5G[0] == 2) //2:5g
				{
					show_div(true, ("wlan1_div0"));
				}
				else
				{
					show_div(true, ("wlan1_div1"));
				}
			}
		}
		else
		{
			wizardForm.elements["wlBandMode"].value = 2; //2:both
			
			if(wlan_num !=0)
				show_div(true, ("wlan1_div0"));
		}
		
		if(selValue == 2) //2: both
		{
			wlan_num = 2;
			get_by_id("click_wlan2_next"+0).value = "  Next>>";
			get_by_id("click_wlan2_next"+1).value = "Finished";
		}
		else
		{
			wlan_num = 1;
			get_by_id("click_wlan2_next"+0).value = "Finished";
			get_by_id("click_wlan2_next"+1).value = "Finished";
		}

	}
	else
	{
		if(isAP == 1)
			show_div(true, "lan_div");
		else
			show_div(true, "wan_div");
	}
				
	
	
}
function wlanBandModeSelection(selValue)
{
	var wizardForm=document.wizard;
	wizardForm.elements["wlBandMode"].value = selValue;
	if(selValue == 0) //0:2g
	{
		wizardForm.elements["wlBandMode"].value = 3; //3:single
				wizardForm.elements["Band2G5GSupport"].value = 1;//1:PHYBAND_2G
			}
	else if(selValue == 1) //1:5g
			{
		wizardForm.elements["wlBandMode"].value = 3; //3:single
		wizardForm.elements["Band2G5GSupport"].value = 2;//1:PHYBAND_5G
		}
	else
		{
		wizardForm.elements["wlBandMode"].value = 2; //2:both		
	}
}
</script>
</head>
<body onload="Load_Setting();">
<body >
<blockquote>


<form action=/goform/formWizard method=POST name="wizard">
<!-- for WPS -->
<INPUT type=hidden name=wps_clear_configure_by_reg0 value=0>
<INPUT type=hidden name=wps_clear_configure_by_reg1 value=0>
<INPUT type=hidden name=Band2G5GSupport value=<% write(getIndex("Band2G5GSupport")); %>>
<INPUT type=hidden name=dsf_enable value=<% write(getIndex("dsf_enable")); %>>
<INPUT type=hidden name=wlBandMode value=<% write(getIndex("wlanBand2G5GSelect")); %>>
<INPUT type=hidden name=wlan1_phyband value="<% write(getIndex("wlan1_phyband")); %>">
<INPUT type=hidden name=wlan2_phyband value="<% write(getIndex("wlan2_phyband")); %>">

<span id = "top_div" class = "on" >
<table  border=0 width="500" cellspacing=4 cellpadding=0>
<tr><td><h2><b><font color="#0000FF">Setup Wizard</font></b></h2></td> </tr>
<tr><td><font size=2>
 The setup wizard will guide  you to configure access point for first time. Please 
 follow the setup wizard step by step.
</font></td></tr>
<tr><td><hr size=1 noshade align=top></td></tr>

<tr ><td colspan="2"> 
<font size=2> <b>
Welcome to Setup Wizard.<br> <br>The Wizard will guide you the through following steps. Begin by clicking on  Next.
</b></font>
</td></tr> 
<tr height=10> <td> </td></tr>
<tr ><td> <font size=2>
		<ol>
		<script>
		if(pocketRouter_Mode ==0){
			if(isAP == 0)
			{
				document.write('<li>Setup Operation Mode</li>');
				document.write('<li>Choose your Time Zone </li>');
			}
			document.write('<li>Setup LAN Interface </li>');
			if(isAP == 0)
				document.write('<li>Setup WAN Time Zone </li>');
		
			if(wlan_num !=0)
			{
				if(wlan_support_92D == 1)
					document.write('<li>Select Wireless Band</li>');
					
				document.write('<li>Wireless LAN Setting</li>');
				document.write('<li>Wireless Security Setting</li>');
			}
		}
		else if(pocketRouter_Mode==POCKETROUTER_GATEWAY)
		{
			document.write('<li>WAN Interface Setup </li>');						
		}
		else if(pocketRouter_Mode == POCKETROUTER_BRIDGE_CLIENT || pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
		{
			if(wlan_num !=0)
			{
				if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP && wlan_support_92D == 1)
					document.write('<li>Select Wireless Band </li>');
				
				document.write('<li>Set Wireless Network Name </li>');
				document.write('<li>Select Wireless Security Mode</li>');
			}			
		}
		</script>
		</ol>
	</font></td> 
</tr>

</td></tr>
</table>
<div style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 300px; HEIGHT: 100px">  
<table border=0 width="500" cellspacing=4 cellpadding=0 >
<tr>
  <td colspan="2" align=right> 

	<input type="button" value="  Next>>" name="next" onClick='wizardTopClick();'>

  </td>
</tr>
</table>
</div>
</span>
<!-- opmode page -->
<span id = "opmode_div" class = "off" >
<table border=0 width="500" cellspacing=0 cellpadding=0>
<tr><td><h2><b><font color="#0000FF">Operation Mode</font></b></h2></td> </tr>

  <tr><td><font size=2>
  You can setup different modes to LAN and WLAN interface for NAT and bridging function. 
  </td>
  </tr>
  <tr><td><hr size=1 noshade align=top></td></tr>
</table>
<table border="0" width=500>
	<tr>
		<td width ="23%" valign="top">
		<input type="radio" value="0" name="opMode" onClick="opModeClick(0)" ></input>
		<font size=2> <b> Gateway: </b> </font>
		</td>
		<td width ="77%">
			<font size=2>In this mode, the device is supposed to connect to internet via ADSL/Cable Modem. The NAT is enabled and PCs in four LAN ports share the same IP to ISP through WAN port. The connection type can be setup in WAN page by using PPPOE, DHCP client, PPTP client, L2TP client or static IP.</font>
		</td>
	</tr>
	<td colspan="2" height="10"></tr>
	<tr>
		<td width ="23%" valign="top">
		<input type="radio" value="1" name="opMode" onClick="opModeClick(1)"></input>
		<font size=2> <b> Bridge: </b> </font>
		</td>
		<td width ="77%">
			<font size=2>In this mode, all ethernet ports and wireless interface are bridged together and NAT function is disabled. All the WAN related function and firewall are not supported.</font>
		</td>
	</tr>
	<td colspan="2" height="10"></tr>

	<tr>
		<td width ="23%" valign="top">
		<input type="radio" value="2" name="opMode" onClick="opModeClick(2)"></input>
		<font size=2> <b> Wireless ISP: </b> </font>
		</td>
		<td width ="77%">
			<font size=2>In this mode, all ethernet ports  are bridged together and the wireless client will connect to ISP access point. The NAT is enabled and PCs in ethernet ports share the same IP to ISP through wireless LAN. You must set the wireless to client mode first and connect to the ISP AP in Site-Survey page.  The connection type can be setup in WAN page by using PPPOE, DHCP client, PPTP client, L2TP client or static IP.</font>
		</td>
	</tr>
		
	<tr>
		<td width ="23%" valign="top"> </td>
		<td width ="77%">
			<script>
			if(wlan_num > 1){
				document.write('<font size=2><b>WAN Interface : </b>');
				document.write('<select size="1" name="wispWanId" onClick="opModeClick(2)">');
				for(i=0 ; i < wlan_num ; i++)
					document.write('<option value="'+i+'">wlan'+(i+1)+'</option>');
				document.write('</select>');
			}
			</script>
		</td>
	</tr>
</table>
<script>
	form = document.wizard;
	opmode = <% write(getIndex("opMode")); %> ;
	form.opMode[opmode].defaultChecked= true;
	form.opMode[opmode].checked= true;
	if(wlan_num > 1){
		form.wispWanId.defaultSelected= wispWanId;
		form.wispWanId.selectedIndex= wispWanId;
	}
	updateWISPWan();
</script>
<div style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 450px; HEIGHT: 100px">  
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClick_opmode(0)' >
		  <input type="button" value="  Next>>" name="next" onClick='saveClick_opmode(1)'>
  	</td> </tr>
</table>
</div>
</span>
<!-- ntp page -->
<span id = "ntp_div" class = "off" >
<table  border=0 width="500" cellspacing=4 cellpadding=0>
  <tr><td colspan="2"><h2><font color="#0000FF">Time Zone Setting</font></h2></td></tr>
  <tr><td colspan="2"><font size=2>

  You can maintain the system time by synchronizing with a public time server over the Internet.
  </tr>
  </td>
  <tr><td colspan="2"><hr size=1 noshade align=top></td></tr>
</table>
<span id = "ntp_enable_div" class = "off" >  
<table  border="0" width=500 cellspacing=0 cellpadding=0>

	<tr><td colspan="2"><font size=2><b>
		<input type="checkbox" name="enabled" 
		value="ON" 
		ONCLICK=updateState_ntp(document.wizard)>&nbsp;&nbsp;Enable NTP client update </b><br>
	    </td>
	</tr>
</table>
</span>

<span id = "dl_enable_div" class = "off" >  
<table  border="0" width=500 cellspacing=0 cellpadding=0>

	<tr><td colspan="2"><font size=2><b>
		<input type="checkbox" name="dlenabled" 
		value="ON" 
		ONCLICK=updateState_ntp(document.wizard)>&nbsp;&nbsp;Automatically Adjust Daylight Saving </b><br>
	    </td>
	</tr>
</table>
</span>

<table  border="0" width=500 cellspacing=4 cellpadding=0>
	<tr ><td height=10> </td> </tr>

	<tr><td width="25%"><font size=2> <b>Time Zone Select : </b> </font></td>
	    <td width="75%">
            <select name="timeZone">
            	<script language="javascript">
            	var i;
            	for(i=0;i<ntp_zone_array.length;i++){
			if (i == ntp_zone_index)
				document.write('<option value="',ntp_zone_array[i].value,'" selected>',ntp_zone_array[i].name,'</option>');
			else
				document.write('<option value="',ntp_zone_array[i].value,'">',ntp_zone_array[i].name,'</option>');
            	}
		        </script>
            </select>
	    </td>
	</tr>
	<tr>
	<td width ="20%">
	<font size=2> <b> NTP server : </b> </font>
	</td>
	<td width ="85%">
		<select name="ntpServerIp1">
			<option value="192.5.41.41">192.5.41.41    - North America</option>
			<option value="192.5.41.209">192.5.41.209   - North America</option>
			<option value="208.184.49.9">208.184.49.9   - North America</option>
			<option value="131.188.3.220">131.188.3.220  - Europe</option>
			<option value="130.149.17.8">130.149.17.8   - Europe</option>
			<option value="203.60.1.2"> 203.60.1.2  - Australia</option>
			<option value="203.117.180.36"> 203.117.180.36 - Asia Pacific</option>
			</select>
		</td>
	</tr>
	<tr><td height="120"></td></tr>
</table>
<script>
			form = document.wizard ;
			form.enabled.checked = <% if (getIndex("ntpEnabled")) write("true;"); else write("false;"); %>
			form.dlenabled.checked = <% if (getIndex("DaylightSave")) write("true;"); else write("false;"); %>
			if(form.enabled.checked == false)
				show_div(true, "ntp_enable_div");
			else
				show_div(false, "ntp_enable_div");
				
			if(form.dlenabled.checked == false)
				show_div(true, "dl_enable_div");
			else
				show_div(false, "dl_enable_div");	
				
			setTimeZone(form.timeZone, "<% getInfo("ntpTimeZone"); %>");
			setNtpServer(form.ntpServerIp1, "<% getInfo("ntpServerIp1"); %>");
			updateState_ntp(form);

</script>
     <input type="hidden" value="0" name="ntpServerId">
<div style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 260px; HEIGHT: 100px">  
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClick_ntp(0)' >
		  <input type="button" value="  Next>>" name="next" onClick='saveClick_ntp(1)'>
  	</td> </tr>
</table>
</div>
</span>
<!-- lan page -->
<span id = "lan_div" class = "off" >
<table  border=0 width="500" cellspacing=4 cellpadding=0>
  <tr><td colspan="2"><h2><font color="#0000FF">LAN Interface Setup</font></h2></td></tr>
  <tr><td colspan="2"><font size=2>
    This page is used to configure the parameters for local area network which
    connects to the LAN port of your Access Point. Here you may change the setting
    for IP addresss, subnet mask, DHCP, etc..
    </td>
  </tr>
  <tr><td  colspan="2"><hr size=1 noshade align=top></td></tr>

  <tr>
      <td width="30%"><font size=2><b>IP Address:</b></td>
      <td width="70%"><input type="text" name="lan_ip" size="15" maxlength="15" value=<% getInfo("ip-rom"); %>></td>
  </tr>

  <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><input type="text" name="lan_mask" size="15" maxlength="15" value="<% getInfo("mask-rom"); %>"></td>
  </tr>
  <tr><td colspan="2" height="135"></td></tr>
  </table>
<div style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 260px; HEIGHT: 100px">  
   <table border=0 width="500" >  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='return saveClick_lan(0)' >
		  <input type="button" value="  Next>>" name="next"  onClick='return saveClick_lan(1)'>
  	</td> </tr>
  </table>
</div>
</span>  
<!-- wan page -->
<span id = "wan_div" class = "off" >
<table  border=0 width="500" cellspacing=4 cellpadding=0>
  <tr><td colspan="2"><h2><font color="#0000FF">WAN Interface Setup</font></h2></td></tr>
  <tr><td colspan="2"><font size=2>
    This page is used to configure the parameters for Internet network which
    connects to the WAN port of your Access Point. Here you may change the access
    method to static IP, DHCP, PPPoE, PPTP or L2TP by click the item value of WAN Access
    type.
    </td>
  </tr>
  <tr><td colspan="2"><hr size=1 noshade align=top></td></tr>
  <tr>
</table>
 <input type="hidden" value="pptp" name="ipMode">

  <table border="0" width=500>
    <tr>
       <td width="30%" ><font size=2><b>WAN Access Type:</b></td>
       <td width="70%"><font size=2><select size="1" name="wanType" onChange="wanTypeSelection(this)">
        <option  <% if (getIndex("wanDhcp")==0) write("selected"); %> value="fixedIp">Static IP</option>
	<option <% if (getIndex("wanDhcp")==1) write("selected"); %> value="autoIp">DHCP Client</option>
 	<option <% if (getIndex("wanDhcp")==3) write("selected"); %> value="ppp">PPPoE</option>
	<option <% if (getIndex("wanDhcp")==4) write("selected"); %> value="pptp">PPTP</option>
	<option <% if (getIndex("wanDhcp")==6) write("selected"); %> value="l2tp">L2TP</option> /*-- keith: add l2tp support. 20080515  */
<% getInfo("usb3g_comment_start");%>
    <option <% if (getIndex("wanDhcp")==16) write("selected"); %> value="USB3G">USB3G</option>
<% getInfo("usb3g_comment_end");%>
	</select></td>
    <tr>
  </table>
  <span id = "static_div" class = "off" >  
  <table border="0" width=500>
    <tr>
       <td width="30%"><font size=2><b>IP Address:</b></td>
       <td width="70%"><font size=2>
        <input type="text" name="wan_ip" size="18" maxlength="15" value="<% getInfo("wan-ip-rom"); %>">
      </td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="wan_mask" size="18" maxlength="15" value="<% getInfo("wan-mask-rom"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Default Gateway:</b></td>
      <td width="70%"><font size=2><input type="text" name="wan_gateway" size="18" maxlength="15" value="<% getInfo("wan-gateway-rom"); %>"></td>
    </tr>
  </table>  
  </span>
  <span id = "dhcp_div" class = "off" >  
  </span>
  <span id = "pppoe_div" class = "off" >  
  <table border="0" width=500>
     <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="pppUserName" size="18" maxlength="128" value="<% getInfo("pppUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="pppPassword" size="18" maxlength="128" value="<% getInfo("pppPassword"); %>"></td>
    </tr>
      </table>
  </span>
      
  <span id = "pptp_div" class = "off" >  
  <table border="0" width=500>
      <td width="30%"><font size=2><b>IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpIpAddr" size="18" maxlength="30" value="<% getInfo("pptpIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpSubnetMask" size="18" maxlength="30" value="<% getInfo("pptpSubnet"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Server IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpServerIpAddr" size="18" maxlength="30" value="<% getInfo("pptpServerIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpUserName" size="18" maxlength="128" value="<% getInfo("pptpUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="pptpPassword" size="18" maxlength="128" value="<% getInfo("pptpPassword"); %>"></td>
    </tr>
        </table>
    </span>
    
<!-- keith: add l2tp support. 20080515  -->
    <span id = "l2tp_div" class = "off" >  
    <table border="0" width=500>
      <td width="30%"><font size=2><b>IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpIpAddr" size="18" maxlength="30" value="<% getInfo("l2tpIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpSubnetMask" size="18" maxlength="30" value="<% getInfo("l2tpSubnet"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Server IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpServerIpAddr" size="18" maxlength="30" value="<% getInfo("l2tpServerIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpUserName" size="18" maxlength="128" value="<% getInfo("l2tpUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="l2tpPassword" size="18" maxlength="128" value="<% getInfo("l2tpPassword"); %>"></td>
    </tr>
        </table>
    </span>

    <span id = "USB3G_div" class = "off" >
    <table border="0" width=500>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="USB3G_USER" size="18" maxlength="30" value="<% getInfo("USB3G_USER"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="USB3G_PASS" size="18" maxlength="30" value="<% getInfo("USB3G_PASS"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>PIN:</b></td>
      <td width="70%"><font size=2><input type="password" name="USB3G_PIN" size="18" maxlength="30" value="<% getInfo("USB3G_PIN"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>APN:</b></td>
      <td width="70%"><font size=2><input type="text" name="USB3G_APN" size="18" maxlength="128" value="<% getInfo("USB3G_APN"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Dial Number:</b></td>
      <td width="70%"><font size=2><input type="text" name="USB3G_DIALNUM" size="18" maxlength="128" value="<% getInfo("USB3G_DIALNUM"); %>"></td>
    </tr>
        </table>
    </span>
    
    <span id = "dnsMode_div" class = "off" >
    <table border="0" width=500>

     <tr>
      <td width="100%" colspan="2"><font size=2>
        <b><input type="radio" value="dnsAuto" name="dnsMode" <% if (getIndex("wanDNS")==0) write("checked"); %> onClick="autoDNSclicked()">Attain DNS Automatically</b>
      </td>
    </tr>
    <tr>
      <td width="100%" colspan="2"><font size=2>
        <b><input type="radio" value="dnsManual" name="dnsMode" <% if (getIndex("wanDNS")==1) write("checked"); %> onClick="manualDNSclicked()">Set DNS Manually</b>
      </td>
    </tr>
    <tr>
    </table>
    </span>
    
    <span id = "dns_div" class = "off" >
    <table border="0" width=500>
    <tr>
       <td width="30%"><font size=2><b>DNS :</b></td>
       <td width="70%"><font size=2><input type="text" name="dns1" size="18" maxlength="15" value=<% getInfo("wan-dns1"); %>></td>
    </tr>
    
    </table>
    </span>
<div id="wan_btn" style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 260px; HEIGHT: 100px">  
    <table border="0" width=500>
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='return saveClick_wan(0)' >
	<script>	  
		  
	if(wlan_num==0)
	document.write('<input type="submit" value="Finished" name="next" ');
	else
	document.write('<input type="button" value="  Next>>" name="next" ');
	
	document.write(' onClick="return saveClick_wan(1)">');
	</script>	  
		  
  	</td> </tr>
    </table>
</div>
<script>
			wanTypeSelection(form.wanType);
</script>   
</span>

<!-- wireless band mode -->

<script>
  	
	<% 
	   var i ;
	   for (i=0; i<getIndex("wlan_num"); i=i+1) 
	     { 
			wlan_name= "wlan"+i+"-status";
			getInfo(wlan_name);
			write("wlanDisabled["+i+"] ="+getIndex("wlanDisabled")+";\n"); 
			write("RFType["+i+"] ="+getIndex("RFType")+";\n"); 
			write("APMode["+i+"] ="+getIndex("wlanMode")+";\n"); 
			val= getIndex("band");
			if (val > 0) val=val-1;
			write("bandIdx["+i+"] ="+val+";\n"); 
			write("bandIdxClient["+i+"] ="+val+";\n"); 
			write("networkType["+i+"] ="+getIndex("networkType")+";\n"); 
	    		write ("regDomain["+i+"]=" +getIndex("regDomain")+ ";\n");
  	    		write ("defaultChan["+i+"]=" +getIndex("channel")+ ";\n");
  	    		write ("usedBand["+i+"]=" +getIndex("band")+ ";\n");
  	    		write ("ssid["+i+"]=\""); getInfo("ssid");write("\";\n");
  	    		write ("encrypt["+i+"]=" +getIndex("encrypt")+ ";\n");
  	    		write ("wep["+i+"]=" +getIndex("wep")+ ";\n");
  	    		write ("defaultKeyId["+i+"]=" +getIndex("defaultKeyId")+ ";\n");
  	    		write ("defPskFormat["+i+"]=" +getIndex("pskFormat")+ ";\n");
  	    		write ("macClone["+i+"]=" +getIndex("wlanMacClone")+ ";\n");
  	    		write ("pskValue["+i+"]=\""); getInfo("pskValue");write("\";\n");
  	    		write ("keyType["+i+"]=" +getIndex("keyType")+ ";\n");
  	    		write ("defWapiAuth["+i+"]=" +getIndex("wapiAuth")+ ";\n");
	  	    	write ("defWapiPskFormat["+i+"]=" +getIndex("wapiPskFormat")+ ";\n");
			write ("defWapiPskValue["+i+"]=\""); getInfo("wapiPskValue");write("\";\n");
			write ("defWapiASIP["+i+"]=\""); getInfo("wapiASIp");write("\";\n");
			write ("defWapiCertSel["+i+"]=\""); getInfo("wapiCertSel");write("\";\n");
			write ("init_bound["+i+"]=" +getIndex("ChannelBonding")+ ";\n");
			write ("init_sideband["+i+"]=" +getIndex("ControlSideBand")+ ";\n");
			write ("wlanBand2G5G["+i+"]=" +getIndex("Band2G5GSupport")+ ";\n");
			
			
			
	     } 
	%>
</script>

<span id = "wlan_band_mode_div" class = "off" >
<table border=0 width="500" cellspacing=0 cellpadding=0>
<tr><td><h2><b><font color="#0000FF">Select Wireless Band</font></b></h2></td> </tr>

  <tr>
  	<td><font size=2>You can select Wireless Band.</td>
  </tr>
  <tr><td><hr size=1 noshade align=top></td></tr>
</table>

<br>


<table border="0" width=500>
    <tr>
       <td width="30%" ><font size=2><b>Wireless Band:</b></td>
       <td width="70%"><font size=2>
   	<select size="1" name="wlBandModeSel" onChange="wlanBandModeSelection(this.value)" >
	</select>
	</td>
    <tr>
  </table>

<script>
	var wizardForm=document.wizard;
	var band2G5GSupport = wlanBand2G5G[0];
	var wlBandModeSelect = wizardForm.elements["wlBandMode"].value;
	var idx=0;
	//### edit by sen_liu 2011.4.7 when 92C + 92D, it must be "2.4G+5G  Concurrent"
	if(wlan_support_92D_concurrent == 0)//92C
	{
		wizardForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G ", "0", false, false);
		wizardForm.elements["wlBandModeSel"].selectedIndex = 0;
		wizardForm.elements["wlBandMode"].value = 0;
	}else if(wlan_support_92D_concurrent == 1)//92D
	{
		wizardForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G ", "0", false, false);
		wizardForm.elements["wlBandModeSel"].options[idx++] = new Option("5G ", "1", false, false);
		wizardForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G+5G  Concurrent", "2", false, false);
		if(wlBandModeSelect == 0) //0:2G only
		{
			wizardForm.elements["wlBandModeSel"].selectedIndex = 0;
		}
		else if(wlBandModeSelect == 1) //1:5G only
		{
			wizardForm.elements["wlBandModeSel"].selectedIndex = 1;
		}
		else if(wlBandModeSelect == 2) //2:both
		{
			wizardForm.elements["wlBandModeSel"].selectedIndex = 2;
		}
		else if(wlBandModeSelect == 3) //3:single
		{
			if(band2G5GSupport == 1) //1:2g
				wizardForm.elements["wlBandModeSel"].selectedIndex = 0;
			else
				wizardForm.elements["wlBandModeSel"].selectedIndex = 1;				
		}
	}else if(wlan_support_92D_concurrent == 2)//92C + 92D
	{
		wizardForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G+5G  Concurrent", "0", false, false);
		wizardForm.elements["wlBandModeSel"].selectedIndex = 0;		
	}
	//### end
	

</script>

<br>
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClick_bandMode(0)' >
		  <input type="button" value="  Next>>" name="next" onClick='saveClick_bandMode(1)'>
  </td> </tr>
</table>

</span>

<!-- wlan1 page -->
<script>
  	
	
wlan_channel[wlan_idx] = defaultChan[wlan_idx];	
for(i=0; i< <% write(getIndex("wlan_num")); %>; i++){
/**********************************************************/
document.write('\
<span id = "wlan1_div'+i+'" class = "off" > \
<table  border=0 width="500" cellspacing=4  cellpadding=0> \
  <tr><td  colspan="2"> <h2><font color="#0000FF">Wireless&nbsp;<SPAN id=wlan1_band_str'+i+'></SPAN>&nbsp;Basic Settings</font></h2> </td></tr> \
  <tr><td  colspan="2"> <font size=2> \
 This page is used to configure the parameters for wireless LAN clients which \
 may connect to your Access Point.  \
  </td> \
  </tr> \
  <tr><td  colspan="2"><hr size=1 noshade align=top></td></tr> \
    </table> \
<span id = "wlan_enable_div'+i+'" class = "off" > \
<table  border=0 width="500" cellspacing=0  cellpadding=0> \
  <tr> \
      <td width="100%" colspan=2><font size=2><b> \
   	<input type="checkbox" name="wlanDisabled'+i+'" value="ON" \
	ONCLICK="updateIputState(document.wizard, '+i+')">&nbsp;&nbsp;Disable Wireless LAN Interface</b> \
      </td> \
  </tr> \
</table> \
</span> \
<table  border=0 width="500" cellspacing=4  cellpadding=0> \
  <tr> \
      <td width="26%"><font size=2><b>Band:</b></td> \
      <td width="74%"><font size=2><select size="1" name="band'+i+'" onChange="updateBand(document.wizard, '+i+');Set_onChangeBand(document.wizard, '+i+', document.wizard.band'+i+', document.wizard.band'+i+'.selectedIndex);">');
/**********************************************************/
        if(wlanDisabled[i])
		document.wizard.elements["wlanDisabled"+i].checked = true;
 	
	if (APMode[i]!=1)
		bandIdxAP[i]=bandIdx[i];
	else
		bandIdxClient[i]=bandIdx[i];
	showBand(document.wizard, i);
/**********************************************************/
document.write(' \
	 </select> \
      </td> \
  </tr> ');
/**********************************************************/
/*
<!--
  </table>
  <span id = "hide_div" class = "off" >
  <table border="0" width=500>
-->
*/
/**********************************************************/
document.write(' \
  <tr> \
      <td width="26%"><font size=2><b>Mode:</b></td>\
      <td width="74%"><font size=2><select size="1" name="mode'+i+'"	onChange="updateMode(document.wizard, '+i+')">');
	 val = APMode[i] ;
	 
	 var optionNum = 0;
			document.write( "<option value='"+(optionNum++)+"'>AP</option>" );
			document.write( "<option value='"+(optionNum++)+"'>Client</option>" );

				if(isWDSDefined == 1)
				{				
				document.write( "<option value='"+(optionNum++)+"'>WDS</option>" );
				document.write( "<option value='"+(optionNum++)+"'>AP+WDS</option>" );
			}

	 if ( isMeshDefined == 1 )
				{
	 	/*#ifdef CONFIG_NEW_MESH_UI*/
	 	if( isNewMeshUI ==1 )
				{
			
			document.write( "<option value='"+(optionNum++)+"'>AP+MESH</option>" );
			document.write( "<option value='"+(optionNum++)+"'>MESH</option>" );			
			} 
		else
				{
			document.write( "<option value='"+(optionNum++)+"'>AP+MPP</option>" );
			document.write( "<option value='"+(optionNum++)+"'>MPP</option>" );
			document.write( "<option value='"+(optionNum++)+"'>MAP</option>" );
			document.write( "<option value='"+(optionNum++)+"'>MP</option>" );						
				}
			}
			
	for(k=0 ; k<optionNum ; k++)
				{
		if(form.elements["mode"+i].options[k].value == val)
   	  {
			form.elements["mode"+i].selectedIndex = k;
			break;
	   	  }   	  
   	  }
		
/**********************************************************/
   	
document.write(' \
	 </select> \
      </td> \
  </tr> \
  <tr> \
      <td width="26%"><font size=2><b>Network Type:</b></td>\
      <td width="74%"><font size=2><select size="1" name="type'+i+'"	onChange="updateType(document.wizard, '+i+')">');
	 val = networkType[i];
   	  if ( val == 0 ) {
      	  	document.write( "<option selected value=\"0\">Infrastructure </option>" );
   	  	document.write( "<option value=\"1\">Ad hoc</option>" );
      	  }

	  if ( val == 1 ) {
     	  	document.write( "<option value=\"0\">Infrastructure </option>" );
   	  	document.write( "<option selected value=\"1\">Ad hoc</option>" );
      	  } 
document.write('\
	 </select>\
      </td>\
  </tr>'); //end of document write
//	form.elements["type"+i].defaultSelected = form.elements["type"+i].selectedIndex ;
//	form.elements["mode"+i].defaultSelected = form.elements["mode"+i].selectedIndex ;
/**********************************************************/
/*
<!--
  </table>
  </span>
  <table border="0" width=500>
-->*/
/**********************************************************/
document.write('\
  <tr>\
      <td width="26%"><font size=2><b>SSID:');
/**********************************************************/
    if (wlanDisabled[i] == 0) {
//	if (autoconf[i]) {
//		if (keyinstall[i]) {
//			if(autoCfgWlanMode[i] == APMode[i]){
//			document.write("(EasyConfig)");
//			disableSSID[i]=1;
//		}
//	}
//	}
    } 
/**********************************************************/
document.write('\
      </b></td>\
      <td width="74%"><font size=2><input type="text" name="ssid'+i+'" size="33" maxlength="32" value="'+ssid[i]+'">\
      </td>\
  </tr>\
  <tr id="channel_bounding" style="display:">\
   <td width="26%"><font size=2><b>Channel Width:</b></td>\
 <td width="74%"><font size=2><select size="1" name="channelbound'+i+'"	onChange="update_controlsideband(document.wizard, '+i+')">\
 	<option value=\"0\">20MHz</option>"\
	 "<option value=\"1\">40MHz</option>" \
	 </select>\
	 </td>\
	 </tr>\
	 <tr id="control_sideband" style="display:">\
      <td width="26%"><font size=2><b>ControlSideband:</b></td>\
      <td width="74%"><font size=2><select size="1" name="controlsideband'+i+'" onChange="updateChan_channebound(document.wizard, '+i+');">\
     <option value="0">Upper</option>\
	<option value="1">Lower</option>\
	 </select>\
      </td>\
  </tr>\
  <tr>\
      <td width="26%"><font size=2><b>Channel Number:</b></td>\
      <td width="74%"><font size=2><select size="1" name="chan'+i+'" onchange ="updateChan_selectedIndex(document.wizard, '+i+');"> </select></td>');
/**********************************************************/
/**************************************************************/
	var form = document.wizard ;	
	band = 10;
	var checkid_bound = document.getElementById("channel_bounding");
	var checkid_sideband = document.getElementById("control_sideband");
	
	if (band < 9){
		checkid_bound.style.display = "none";
 		checkid_sideband.style.display = "none";
	}else{
		checkid_bound.style.display = "";
 		checkid_sideband.style.display = "";  
	if(init_bound[i]=="0")
 		document.wizard.elements["channelbound"+i].selectedIndex=0;
 	else
 		document.wizard.elements["channelbound"+i].selectedIndex=1;
 		
 	if(init_sideband[i]=="0")
 		document.wizard.elements["controlsideband"+i].selectedIndex=0;
 	else
 		document.wizard.elements["controlsideband"+i].selectedIndex=1;	
 	if(init_bound[i] == "0")
 		disableTextField(document.wizard.elements["controlsideband"+i]);	
 	else
		enableTextField(document.wizard.elements["controlsideband"+i]);		
	}
	
	updateChan(document.wizard, i);
	updateChan_channebound(document.wizard, i);	
	var chan_number_idx=form.elements["chan"+i].selectedIndex;
	var chan_number= form.elements["chan"+i].options[chan_number_idx].value;
	wlan_channel[i] = chan_number;
	

/**********************************************************/
document.write('\
  </tr>\
  <tr>\
      <td width="100%" colspan=2><font size=2><b>\
   	<input type="checkbox" name="wlanMacClone'+i+'" value="ON"\
   	>&nbsp;&nbsp; Enable Mac Clone (Single Ethernet Client)</b>\
      </td>\
  </tr>\
  </table>\
  <br>\
<div>  \
  <table border=0 width="500" > \
     <input type="hidden" value="/wlbasic.asp" name="wlan-url">\
	<tr> <td colspan="2" align=right>\
		  <input type="button" value="  Cancel  " name="cancel" onClick="cancelClick();">\
		  <input type="button" value="<<Back  " name="back" onClick="return saveClick_wlan1(0,'+i+')" >\
		  <input type="button" value="  Next>>" name="next"  onClick="return saveClick_wlan1(1,'+i+')">\
  	</td> </tr>\
	<input type="hidden" value="/wizard-wan.asp" name="back_url">\
	<input type="hidden" value="/wizard-wlan2.asp" name="next_url">\
     <input type="hidden" name="basicrates'+i+'" value=0>\
     <input type="hidden" name="operrates'+i+'" value=0>	\
   </table>\
</div> \
</span>');
/**********************************************************/
		form = document.wizard ;
		updateMode(form, i);
		updateIputState(form, i); 
		if(form.elements["wlanDisabled"+i].checked == false)
			show_div(false, ("wlan_enable_div"+i));
		else
			show_div(true, ("wlan_enable_div"+i));
		//if client and infrastructure mode
		if(mode_index=="1"){
	 	if(nettype_index =="0"){
	 		disableTextField(document.wizard.elements["channelbound"+i]);
	 		disableTextField(document.wizard.elements["controlsideband"+i]);
	 	}
	}
	if(chan_number == 0)
		disableTextField(document.wizard.elements["controlsideband"+i]);	
/**********************************************************/
/*<!-- wlan2 page --> */
/**********************************************************/
document.write('\
<span id = "wlan2_div'+i+'" class = "off" >\
<table  border=0 width="500" cellspacing=4 cellpadding=0>\
    <tr><td  colspan="2"> <h2><font color="#0000FF">Wireless&nbsp;<SPAN id=wlan2_band_str'+i+'></SPAN>&nbsp;Security Setup</font></h2> </td></tr> \
    <tr><td  colspan="2"><font size=2>\
    This page allows you setup the wireless security. Turn on WEP or WPA by using\
    Encryption Keys could prevent any unauthorized access to your wireless network.\
    </td>\
    </tr>\
  <tr><td  colspan="2"><hr size=1 noshade align=top></td></tr>\
</table>\
\
<table border=0 width="500" cellspacing=4 cellpadding=0>\
   <td width="35%"><font size="2"><b>Encryption:&nbsp;</b>\
        <select size="1" name="method'+i+'" onChange="checkState('+i+')">\
          <option  value="0">None</option>\
          <option value="1">WEP</option>\
          <option value="2">WPA (TKIP)</option>\
	  <option value="4">WPA2(AES)</option>\
	  <option value=\"6\">WPA2 Mixed</option>');

 	  document.write('<% getInfo("wapiOption");%>');
 	  
 	  document.write('</select></font></td>\
</table>\
<span id = "wep_div'+i+'" class = "off" >  \
<table border=0 width="500" cellspacing=4  cellpadding=0>\
\
  <tr>\
      <td width="15%"><font size=2><b>Key Length:</b></td>\
      <td width="60%"><font size=2><select size="1" name="length'+i+'" ONCHANGE="lengthClick(document.wizard, '+i+')">\
      			<option value=1 >64-bit</option>\
			<option value=2 >128-bit</option>\
      </select></td>\
  </tr>\
\
  <tr>\
      <td width="15%"><font size=2><b>Key Format:</b></td>\
      <td width="40%"><font size=2><select size="1" name="format'+i+'" ONCHANGE="setDefaultWEPKeyValue(document.wizard, '+i+')">\
     	<option value=1>ASCII</option>\
	<option value=2>Hex</option>\
       </select></td>\
  </tr>\
  <tr>\
     <td width="15%"><font size=2><b>Key Setting:</b></td>\
     <td width="40%"><font size=2>\
     	<input type="text" name="key'+i+'" size="26" maxlength="26">\
     </td>\
  </tr>\
</table>\
</span>');
/**********************************************************/

document.write('\
<span id = "wpa_div'+i+'" class = "on" >  \
   <table border=0 width="500" cellspacing=4 cellpadding=0>');
/**********************************************************/
/*
<!--  
    <tr>
      <td width="35%"><font size="2"><b>WPA Unicast Cipher Suite:</b></font> </td>
      <td width="65%"><font size="2">
	  <input type="radio" name="ciphersuite" value="tkip" <% if ( getIndex("wpaCipher") != 2) write("checked"); %>>TKIP&nbsp;
	  <input type="radio" name="ciphersuite" value="aes"  <% if ( getIndex("wpaCipher") == 2) write("checked"); %>>AES
       </font></td>
    </tr>

-->  */
/**********************************************************/
document.write('\
    <tr>\
      <td width="35%"><font size="2"><b>Pre-Shared Key Format:</b></font> </td>\
      <td width="65%"><font size="2"><select size="1" name="pskFormat'+i+'">\
          <option value="0" >Passphrase</option>\
          <option value="1" >Hex (64 characters)</option>\
        </select></font></td>\
    </tr>\
    <tr>\
      <td width="35%"><font size="2"><b>Pre-Shared Key:</b></font> </td>\
      <td width="65%"><font size="2"><input type="text" name="pskValue'+i+'" size="32" maxlength="64" value='+pskValue[i]+'></font></td>\
    </tr>\
     <tr></tr><tr></tr><tr></tr>\
  </table>\
</span>');

/********************wapi begin*********************************/
document.write('\
<span id = "wapi_div'+i+'" class = "on" >\
   <table border=0 width="500" cellspacing=4 cellpadding=0>\
    <tr>\
      <td width="30%" class="bgblue"><font size="2"><b>Authentication Mode:</b></font></td>\
      <td width="70%" class="bggrey"><font size="2">\
      	<input <% getInfo("wapiCertSupport"); %> name="wapiAuth'+i+'" type="radio" value="eap" onClick="show_wizard_wapi_settings('+i+',1)">Enterprise (AS Server)\
      	<input name="wapiAuth'+i+'" type="radio" value="psk" onClick="show_wizard_wapi_settings('+i+', 2)">Personal (Pre-Shared Key)\
      	</font>\
      </td>\
   </tr>\
    <tr id="wapi_psk'+i+'">\
     <td width="30%" class="bgblue"><font size="2"><b>Pre-Shared&nbsp;Key&nbsp;Format:</b></font></td>\
      <td width="70%" class="bggrey">\
         <select name="wapiPskFormat'+i+'" onChange="">\
             <option value="0">Passphrase</option>\
             <option value="1">HEX (64 characters)</option>\
         </select>\
     </td></tr>\
    <tr id="wapi_psk_'+i+'">\
    <td width="30%" class="bgblue"><font size="2"><b>Pre-Shared&nbsp;Key:</b></font></td>\
    <td width="70%" class="bggrey"><input type="password" name="wapiPskValue'+i+'" size="32" maxlength="64" value="">\
    </td>\
   </tr>\
    <tr id="wapi_as'+i+'">\
   <td width="30%"  class="bgblue"><font size="2"><b>AS&nbsp;Server&nbsp;IP&nbsp;Address:</b></font></td>\
   <td width="70%"  class="bggrey"><input name="wapiASIP'+i+'" size="16" maxlength="15" value="0.0.0.0"></td>\
   </tr>\
	<tr id="wapi_as_'+i+'">\
		 <td width="30%" class="bgblue"><font size="2"><b>Select WAPI certificate:</b></font></td>\
	  	<td width="70%" class="bggrey"><font size="2">\
		 <select size="1"  id="wapi_cert_sel" name="wapiCertSel'+i+'">\
			<option value="0"> Use Cert from Remote AS0 </option>\
			<option value="1"> Use Cert from Remote AS1 </option>\
			<% getInfo("wapiLocalAsOption");%>\
		</select> </font></td>\
	</tr>\
  </table>\
</span>\
<div id="wep_btn'+i+'" style="LEFT: 60px; WIDTH: 300px; POSITION: absolute; TOP: 260px; HEIGHT: 100px">  \
	<table border=0 width="500" >  \
	<tr> <td colspan="2" align=right>\
		  <input type="button" value="  Cancel  " name="cancel" onClick="cancelClick();">\
		  <input type="button" value="<<Back  " name="back" onClick="return saveClick_wlan2(0,'+i+')" >\
		  <input type="button" value="" id="click_wlan2_next'+i+'" onClick="return saveClick_wlan2(1,'+i+')">\
  	</td> </tr>\
	<input type="hidden" value="" name="ciphersuite'+i+'">\
</table> \
</div>\
</span>');
/********************wapi end*********************************/

/**********************************************************/
	form = document.wizard ;
	// set  ecrypt
	if(encrypt[i]==0)
		form.elements["method"+i].selectedIndex = 0;
	else if(encrypt[i]==1)
		form.elements["method"+i].selectedIndex = 1;
	else if(encrypt[i]==2)
		form.elements["method"+i].selectedIndex = 2;
	else if(encrypt[i]==4)
		form.elements["method"+i].selectedIndex = 3;
	else if(encrypt[i]==6)
		form.elements["method"+i].selectedIndex = 4;
	else if(encrypt[i]==7){	
		if(pocketRouter_Mode != POCKETROUTER_BRIDGE_CLIENT){
			form.elements["method"+i].selectedIndex = 5;
		}
		else{
			form.elements["method"+i].selectedIndex = 4;
		}
	}
	
	//set wep   key length
	if(wep[i] ==2 )
		form.elements["length"+i].selectedIndex = 1;
	else
		form.elements["length"+i].selectedIndex = 0;
	//set wep default key	
	//form.elements["defaultTxKeyId"+i].selectedIndex = defaultKeyId[i]-1;
	
	//set pskFormat
	if(defPskFormat[i]==0)
		form.elements["pskFormat"+i].selectedIndex= 0;
	else
		form.elements["pskFormat"+i].selectedIndex= 1;

	//set wapi auth type
	if(defWapiAuth[i]==1){
		form.elements["wapiAuth"+i][0].checked=true;
		form.elements["wapiAuth"+i][1].checked=false;

		show_wizard_wapi_settings(i, 1);
	}	
	else{
		form.elements["wapiAuth"+i][0].checked=false;
		form.elements["wapiAuth"+i][1].checked=true;
		show_wizard_wapi_settings(i, 2);
	}

	//set wapi-psk
	if(defWapiPskFormat[i]==0){
		form.elements["wapiPskFormat"+i].selectedIndex= 0;
	}
	else{
		form.elements["wapiPskFormat"+i].selectedIndex= 1;
	}

	form.elements["wapiPskValue"+i].value=defWapiPskValue[i];

	//set wapi-cert as
	form.elements["wapiASIP"+i].value=defWapiASIP[i];
	form.elements["wapiCertSel"+i].selectedIndex=defWapiCertSel[i];

	if(macClone[i])
		form.elements["wlanMacClone"+i].checked = true;

	updateFormat(form, i);

	checkState(i);
	defPskLen[i] = form.elements["pskValue"+i].value.length;
	//set default div
	show_div(true , "top_div");
	document.write('<input type="hidden" value="ON" name="wepEnabled'+i+'">\
	<input type="hidden" value="OFF" name="use1x'+i+'">\
	<input type="hidden" value="psk" name="wpaAuth'+i+'">\
	<input type="hidden" value="1812" name="radiusPort'+i+'">\
	<input type="hidden" value="" name="radiusIP'+i+'">\
	<input type="hidden" value="" name="radiusPass'+i+'">');
} // end of for loop

</script> 
</blockquote>
	<!-- lan page -->
<!--	
	<input type="hidden" value="0.0.0.0" name="lan_gateway">
	<input type="hidden" value="2" name="dhcp">
	<input type="hidden" value="0.0.0.0" name="dhcpRangeStart">
	<input type="hidden" value="0.0.0.0" name="dhcpRangeEnd">
	<input type="hidden" value="0" name="stp">
	<input type="hidden" value="000000000000" name="lan_macAddr">
-->	
	<!-- wan page -->
<!--	
	<input type="hidden"   value="0" name="pppConnectType">
	<input type="hidden" value="5" name="pppIdleTime">
	<input type="hidden" value="0.0.0.0" name="dsn2">
	<input type="hidden" value="0.0.0.0" name="dsn3">
	<input type="hidden" value="000000000000" name="wan_macAddr">
-->	
<!--	<input type="hidden" value="0" name="upnpEnabled"> -->
	<!-- wlan1 page -->
	<span id = "wpa_auth" class = "off" >
	<table>
	<input type="checkbox" name="ciphersuite<% write(getIndex("wlan_idx")); %>" value="tkip">TKIP
	<input type="checkbox" name="ciphersuite<% write(getIndex("wlan_idx")); %>" value="aes" >AES
	<input type="checkbox" name="wpa2ciphersuite<% write(getIndex("wlan_idx")); %>" value="tkip">TKIP
	<input type="checkbox" name="wpa2ciphersuite<% write(getIndex("wlan_idx")); %>" value="aes" >AES
	</table>
	</span>
<!--	
	<input type="hidden" value="" name="preAuth">
-->	

	<!-- wlan2 page -->
</form>

<script>
	
function saveClickPocket_bandMode(next){

	wizardHideDiv();
	if(next)
	{
		var pocketForm=document.wizardPocket;
		
		var selValue = pocketForm.elements["wlBandModeSel"].value;
		
		pocketForm.elements["wlBandMode"].value = selValue;
		if(selValue == 0) //0:2g
		{
			pocketForm.elements["wlBandMode"].value = 3; //3:single
			pocketForm.elements["Band2G5GSupport"].value = 1;//1:PHYBAND_2G
		}
		else if(selValue == 1) //1:5g
		{
			pocketForm.elements["wlBandMode"].value = 3; //3:single
			pocketForm.elements["Band2G5GSupport"].value = 2;//1:PHYBAND_5G
		}
		else
		{
			pocketForm.elements["wlBandMode"].value = 2; //2:both
		}
		
		if(selValue == 2) //2: both
		{
			get_by_id("wlan0Ssid").innerHTML = "5GHz"+":<br>Wireless 1 Network Name(SSID):";
			get_by_id("wlan1Ssid").innerHTML = "2.4GHz"+":<br>Wireless 2 Network Name(SSID):";
			
			get_by_id("wlan0security").innerHTML = "5GHz"+":<br> Encryption";
			get_by_id("wlan1security").innerHTML = "2.4GHz"+":<br> Encryption";
			wlan_num = 2;
		}
		else
		{
			get_by_id("wlan0Ssid").innerHTML = "Wireless Network Name(SSID):";
			show_div(false, "pocket_wlan1_ssid_div");			
			
			get_by_id("wlan0security").innerHTML = "Encryption";
			show_div(false, "pocket_wlan1_security_div");
			wlan_num = 1;
		}

		show_div(true, "pocket_wlan_name_div");
		pocketForm.elements["pocket_ssid"].focus();
		
		if(wlan_num == 2 && pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
		{
			show_div(true, "pocket_wlan1_ssid_div");
		}
	}
	else
	{
		show_div(true, "top_div");
	}
				
	
	
}

function saveClickPocket_ssid(next){
	var wizardForm=document.wizard;
	var pocketForm=document.wizardPocket;

	

	
	if(next)
	{
		if(pocketForm.elements["pocket_ssid"].value == "")
		{
			alert("SSID can not be empty!");
				pocketForm.elements["pocket_ssid"].focus();
			return false;	
		}
		
		if(wlan_num ==2)
		{
			if(pocketForm.elements["pocket_ssid1"].value == "")
			{
				alert("SSID can not be empty!");
				pocketForm.elements["pocket_ssid1"].focus();
				return false;	
			}
			
		}
		
		wizardHideDiv();
		show_div(true, ("pocket_wlan_security_div"));

			if(pocketForm.elements["pocket_ssid"].value != pocketForm.elements["pocketAP_ssid"].value)
			{
				document.getElementById("pocket_encrypt").value = "no";
				pocketForm.elements["ciphersuite0"].value = "aes";
				pocketForm.elements["wpa2ciphersuite0"].value = "aes";
			}						

			if(document.getElementById("pocket_encrypt").value != "")
			{
				if(document.getElementById("pocket_encrypt").value == "no")
					pocketForm.elements["method0"].selectedIndex = 0;
				else if(document.getElementById("pocket_encrypt").value == "WEP")
					pocketForm.elements["method0"].selectedIndex = 1;
				else if(document.getElementById("pocket_encrypt").value == "WPA-PSK")				
					pocketForm.elements["method0"].selectedIndex = 2;
				else
					pocketForm.elements["method0"].selectedIndex = 3;
			}			

			if(wlan_num == 2)
			{
				if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
				{
					show_div(true, ("pocket_wlan1_security_div"));
					if(pocketForm.elements["pocket_ssid1"].value != pocketForm.elements["pocketAP_ssid1"].value)
					{
						document.getElementById("pocket_encrypt1").value = "no";
						pocketForm.elements["ciphersuite1"].value = "aes";
						pocketForm.elements["wpa2ciphersuite1"].value = "aes";
					}						
		
					if(document.getElementById("pocket_encrypt1").value != "")
					{
						var pocket_encrypt1 = document.getElementById("pocket_encrypt1").value;
						if(pocket_encrypt1 == "no")
							pocketForm.elements["method1"].selectedIndex = 0;
						else if(pocket_encrypt1 == "WEP")
							pocketForm.elements["method1"].selectedIndex = 1;
						else if(pocket_encrypt1 == "WPA-PSK")				
							pocketForm.elements["method1"].selectedIndex = 2;
						else
							pocketForm.elements["method1"].selectedIndex = 3;
					}
				}
				
			}

		pocket_checkState(0);
		pocket_checkState(1);
	}
	else
	{
		wizardHideDiv();
		if(wlan_support_92D == 1 && pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
			show_div(true, "pocket_wlan_band_mode_div");
		else
			show_div(true, "top_div");
}
}

function saveClickPocket_Security(next){
	wizardHideDiv();
	if(next)
	{
		var pocketForm=document.wizardPocket;
		
		for(i=0; i<wlan_num; i++)
		{
			if(pocketForm.elements["method"+i].selectedIndex == 0)
				pocketForm.elements["wepEnabled"+i].value =  "OFF" ;
		else
				pocketForm.elements["wepEnabled"+i].value =  "ON" ;
		
		if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
		{
				if(pocketForm.elements["method"+i].selectedIndex == 4)
			{
					pocketForm.elements["ciphersuite"+i].value = "aes/tkip";
					pocketForm.elements["wpa2ciphersuite"+i].value = "aes/tkip";
				}
			}
		}

		document.wizardPocket.submit();
	}
	else
	{
		show_div(true, "pocket_wlan_name_div");
		if(wlan_num == 2)
			show_div(true, "pocket_wlan1_ssid_div");
			
	}
}

function pocket_checkState(wlanIdx)
{
	var wizardForm=document.wizard;
	var pocketForm=document.wizardPocket;
	
  if(pocketRouter_Mode != POCKETROUTER_BRIDGE_CLIENT){
		if(wlanIdx == 0)
		{
			var methodSelIdx = pocketForm.elements["method0"].selectedIndex;
			if(methodSelIdx == 5){ //wapi
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
			show_div(true,("pocket_wapi_div"));	
	  }
			else if(methodSelIdx == 0){ //none
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }
			else if(methodSelIdx == 1){ //wep
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(true,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }			
			else if(methodSelIdx >= 2){ //wpa~
	  		show_div(true,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }
  }
		else if(wlanIdx == 1)
		{
			var methodSelIdx = pocketForm.elements["method1"].selectedIndex;
			if(methodSelIdx == 0){ //none
				show_div(false,("pocket_wpa_div1"));	
				show_div(false,("pocket_wep_div1"));				
			}
			else if(methodSelIdx == 1){ //wep
				show_div(false,("pocket_wpa_div1"));	
				show_div(true,("pocket_wep_div1"));	
			}			
			else if(methodSelIdx >= 2){ //wpa~
				show_div(true,("pocket_wpa_div1"));	
				show_div(false,("pocket_wep_div1"));	
			}
		}
	}
  else
  {
  	if(pocketForm.elements["method0"].selectedIndex == 4){ //wapi
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
			show_div(true,("pocket_wapi_div"));
	  }
	  else if(pocketForm.elements["method0"].selectedIndex == 0){ //none
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }
	  else if(pocketForm.elements["method0"].selectedIndex == 1){ //wep
	  		show_div(false,("pocket_wpa_div"));	
	  		show_div(true,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }			
	  else if(pocketForm.elements["method0"].selectedIndex >= 2){ //wpa~
	  		show_div(true,("pocket_wpa_div"));	
	  		show_div(false,("pocket_wep_div"));	
	  		show_div(false,("pocket_wapi_div"));
	  }
  }

}
function show_wapi_settings(index)
{
//	alert("index="+index);
	
	if(index == 2)
 	{
        get_by_id("show_wapi_psk1").style.display = "";
        get_by_id("show_wapi_psk2").style.display = "";
        get_by_id("show_wapi_as").style.display = "none";
        get_by_id("show_wapi_as2").style.display = "none";
		
       }
       else
       {
        get_by_id("show_wapi_psk1").style.display = "none";
        get_by_id("show_wapi_psk2").style.display = "none";
        get_by_id("show_wapi_as").style.display = "";
        get_by_id("show_wapi_as2").style.display = "";
       }

}

var getFFVersion=navigator.userAgent.substring(navigator.userAgent.indexOf("Firefox")).split("/")[1]
//extra height in px to add to iframe in FireFox 1.0+ browsers
var FFextraHeight=getFFVersion>=0.1? 16 : 0 

function dyniframesize() {
	var iframename ="SSIDSiteSurvey";
  var pTar = null;
  if (document.getElementById){
    pTar = document.getElementById(iframename);
  }
  else{
    eval('pTar = ' + iframename + ';');
  }
  if (pTar && !window.opera){
    //begin resizing iframe
    pTar.style.display="block"
    
    if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){
      //ns6 syntax
      pTar.height = pTar.contentDocument.body.offsetHeight+FFextraHeight; 
    }
    else if (pTar.Document && pTar.Document.body.scrollHeight){
      //ie5+ syntax
      pTar.height = pTar.Document.body.scrollHeight;
    }
  }
}

function pocketWlanBandModeSelection(selValue)
{
	var pocketForm=document.wizardPocket;
	
	pocketForm.elements["wlBandMode"].value = selValue;
	if(selValue == 0) //0:2g
	{
		pocketForm.elements["wlBandMode"].value = 3; //3:single
				pocketForm.elements["Band2G5GSupport"].value = 1;//1:PHYBAND_2G
			}
	else if(selValue == 1) //1:5g
			{
		pocketForm.elements["wlBandMode"].value = 3; //3:single
		pocketForm.elements["Band2G5GSupport"].value = 2;//1:PHYBAND_5G
		}
	else
		{
		pocketForm.elements["wlBandMode"].value = 2; //2:both		
	}
}

</script>
<blockquote>
<form action=/goform/formPocketWizard method=POST name="wizardPocket">
<input type=hidden id="pocket_encrypt" name="pocket_encrypt" value="">	
<input type=hidden id="pocket_encrypt1" name="pocket_encrypt1" value="">
<input type=hidden id="pocketAP_ssid" name="pocketAP_ssid" value="">	
<input type=hidden id="pocketAP_ssid1" name="pocketAP_ssid1" value="">

<input type=hidden id="pocket_channel" name="pocket_channel" value="">
<input type=hidden id="mode0" name="mode0" value="<% write(getIndex("wlanMode"));%>"*1>
<input type=hidden id="mode1" name="mode1" value="<% write(getIndex("wlanMode"));%>"*1>
<input type=hidden id="wepEnabled0" name="wepEnabled0" value="OFF">	
<input type=hidden id="wepEnabled1" name="wepEnabled1" value="OFF">
<input type=hidden name="wps_clear_configure_by_reg0" value=0>
<input type=hidden name="wps_clear_configure_by_reg1" value=0>
<input type=hidden name="wpaAuth0" value="psk">
<input type=hidden name="wpaAuth1" value="psk">
<input type=hidden name="ciphersuite0" value="aes">
<input type=hidden name="ciphersuite1" value="aes">
<input type=hidden name="wpa2ciphersuite0" value="aes">
<input type=hidden name="wpa2ciphersuite1" value="aes">

<INPUT type=hidden name=wlBandMode value=<% write(getIndex("wlanBand2G5GSelect")); %>>
<INPUT type=hidden name=Band2G5GSupport value=<% write(getIndex("Band2G5GSupport")); %>>
<!-- pocketRouter band mode -->
<span id = "pocket_wlan_band_mode_div" class = "off" >
<table border=0 width="500" cellspacing=0 cellpadding=0>
<tr><td><h2><b><font color="#0000FF">Select Wireless Band</font></b></h2></td> </tr>

  <tr>
  	<td><font size=2>You can select Wireless Band.</td>
  </tr>
  <tr><td><hr size=1 noshade align=top></td></tr>
</table>

<br>


<table border="0" width=500>
    <tr>
       <td width="30%" ><font size=2><b>Wireless Band:</b></td>
       <td width="70%"><font size=2>
   	<select size="1" name="wlBandModeSel" onChange="pocketWlanBandModeSelection(this.value)" >
	</select>
	</td>
    <tr>
  </table>

<script>
if(pocketRouter_Mode == POCKETROUTER_BRIDGE_AP)
{
	var pocketForm=document.wizardPocket;
	var band2G5GSupport = wlanBand2G5G[0];
	var wlBandModeSelect = pocketForm.elements["wlBandMode"].value;
	var idx=0;
	
	if(wlan_support_92D_concurrent != 2)
	{
		pocketForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G", "0", false, false);
		pocketForm.elements["wlBandModeSel"].options[idx++] = new Option("5G", "1", false, false);
	}
	if(wlan_support_92D_concurrent == 1)
		pocketForm.elements["wlBandModeSel"].options[idx++] = new Option("2.4G/5G Concurrent", "2", false, false);
		
	if(wlBandModeSelect == 0) //0:2G only
	{
		pocketForm.elements["wlBandModeSel"].selectedIndex = 0;
	}
	else if(wlBandModeSelect == 1) //1:5G only
	{
		pocketForm.elements["wlBandModeSel"].selectedIndex = 1;
	}
	else if(wlBandModeSelect == 2) //2:both
	{
		pocketForm.elements["wlBandModeSel"].selectedIndex = 2;
	}
	else if(wlBandModeSelect == 3) //3:single
	{
		if(band2G5GSupport == 1) //1:2g
			pocketForm.elements["wlBandModeSel"].selectedIndex = 0;
		else
			pocketForm.elements["wlBandModeSel"].selectedIndex = 1;				
	}
	
}
</script>

<br>
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClickPocket_bandMode(0)' >
		  <input type="button" value="  Next>>" name="next" onClick='saveClickPocket_bandMode(1)'>
  </td> </tr>
</table>

</span>
<!-- pocketRouter ssid -->
<span id = "pocket_wlan_name_div" class = "off" >
<table border=0 width="500" cellspacing=0 cellpadding=0>
<tr><td><h2><b><font color="#0000FF">Set Wireless Network Name </font></b></h2></td> </tr>

  <tr>
  	<td><font size=2>You can enter the Wireless Network Name of AP.</td>
  </tr>
  <tr><td><hr size=1 noshade align=top></td></tr>
</table>

<br>


<table border="0" width=500>
	<tr>
		<td width ="60%" valign="top">
			<font size=2> <b><SPAN id=wlan0Ssid></SPAN></b> </font>
		</td>
		<td width="70%"><input type="text" id="pocket_ssid" name="pocket_ssid" size="15" maxlength="32" value=""></td>		
	</tr>
<tr><td colspan="2"><hr size=1 noshade align=top></td></tr>

<script>	
if(pocketRouter_Mode == POCKETROUTER_BRIDGE_CLIENT)	
	document.write('<tr><td><input type="button" value="Site Survey" name="refresh" onclick="SSIDSiteSurvey.window.siteSurvey(0);"></td></tr>');
</script>



</table>

<script>
if(pocketRouter_Mode == POCKETROUTER_BRIDGE_CLIENT)
{
//document.write('<iframe width="800" height="400" id="SSIDSiteSurvey" name="SSIDSiteSurvey" frameborder="0" marginheight="0" scrolling="yes" src="pocket_sitesurvey_tmp.asp"></iframe>');
document.write('<iframe id="SSIDSiteSurvey" name="SSIDSiteSurvey" onload="javascript:{dyniframesize();}" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" src="pocket_sitesurvey.asp" width=800 height=0></iframe>');
}
</script>

<span id = "pocket_wlan1_ssid_div" class = "off" >
	<table border="0" width=500>
		<tr>		
			<tr><td style=" height:20px;"></td></tr>
			<td width ="60%" valign="top">
				<font size=2> <b><SPAN id=wlan1Ssid>ssss</SPAN></b> </font>
			</td>
			<td width="70%"><input type="text" id="pocket_ssid1" name="pocket_ssid1" size="15" maxlength="32" value=""></td>		
		</tr>
	</table>
</span>


<br>
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClickPocket_ssid(0)' >
		  <input type="button" value="  Next>>" name="next" onClick='saveClickPocket_ssid(1)'>
  </td> </tr>
</table>

</span>

<!-- pocketRouter Security -->
<span id = "pocket_wlan_security_div" class = "off" >

<table border=0 width="500" cellspacing=0 cellpadding=0>
	<tr><td><h2><b><font color="#0000FF">Select Wireless Security Mode </font></b></h2></td> </tr>

  <tr>
  	<td><font size=2>This page allows you setup the wireless security. Turn on WEP or WPA by using Encryption Keys could prevent any unauthorized access to your wireless network.</td>
  </tr>
  <tr><td><hr size=1 noshade align=top></td></tr>
</table>

<br>

<table border=0 width="500" cellspacing=4 cellpadding=0>
		<td width="35%"><font size="2"><b><SPAN id=wlan0security></SPAN>:&nbsp;</b>
			<select size="1" name="method0" onChange="pocket_checkState(0)">
          <option  value="0">None</option>
          <option value="1">WEP</option>
          <option value="2">WPA</option>
	  <option value="4">WPA2</option>
<script>	
if(pocketRouter_Mode != POCKETROUTER_BRIDGE_CLIENT)
document.write('<option value="6">WPA2 Mixed</option>');
</script>
	 <% getInfo("wapiOption");%>

        </select></font></td>
</table>

<span id = "pocket_wep_div" class = "off" >
<table border=0 width="500" cellspacing=4  cellpadding=0>
  <tr>
      <td width="15%"><font size=2><b>Key Length:</b></td>
      <td width="60%"><font size=2><select size="1" name="length0" ONCHANGE="lengthClick(document.wizardPocket,0)">
      			<option value=1 >64-bit</option>
			<option value=2 >128-bit</option>
      </select></td>
  </tr>
  <tr>
      <td width="15%"><font size=2><b>Key Format:</b></td>
      <td width="40%"><font size=2><select size="1" name="format0" ONCHANGE="setDefaultWEPKeyValue(document.wizardPocket,0)">
     	<option value=1>ASCII</option>
	<option value=2>Hex</option>
       </select></td>
  </tr>
  <tr>
     <td width="15%"><font size=2><b>Key Setting:</b></td>
     <td width="40%"><font size=2>
     	<input type="text" name="key0" size="26" maxlength="26">
     </td>
  </tr>
</table>
</span>


<span id = "pocket_wpa_div" class = "off" >
   <table border=0 width="500" cellspacing=4 cellpadding=0>
    <tr>
      <td width="35%"><font size="2"><b>Pre-Shared Key Format:</b></font> </td>
      <td width="65%"><font size="2"><select size="1" name="pskFormat0">
          <option value="0" >Passphrase</option>
          <option value="1" >Hex (64 characters)</option>
        </select></font></td>
    </tr>
    <tr>
      <td width="35%"><font size="2"><b>Pre-Shared Key:</b></font> </td>
      <td width="65%"><font size="2"><input type="text" name="pskValue0" size="32" maxlength="64" value=""></font></td>
    </tr>
     <tr></tr><tr></tr><tr></tr>
  </table>

</span>

<span id = "pocket_wapi_div" class = "off" >
   <table border=0 width="500" cellspacing=4 cellpadding=0>
    <tr>
      <td width="30%" class="bgblue"><font size="2"><b>Authentication Mode:</b></font></td>
      <td width="70%" class="bggrey"><font size="2">
      	<input <% getInfo("wapiCertSupport"); %> name="wapiAuth0" type="radio" value="eap" onClick="show_wapi_settings(1)">Enterprise (AS Server)
      	<input name="wapiAuth0" type="radio" value="psk" onClick="show_wapi_settings(2)">Personal (Pre-Shared Key)
      	</font>
      </td>
   </tr>
    <tr id="show_wapi_psk1">
     <td width="30%" class="bgblue"><font size="2"><b>Pre-Shared&nbsp;Key&nbsp;Format:</b></font></td>
      <td width="70%" class="bggrey">
         <select id="wapi_psk_fmt" name="wapiPskFormat0" onChange="">
             <option value="0">Passphrase</option>
             <option value="1">HEX (64 characters)</option>
         </select>
     </td></tr>
    <tr id="show_wapi_psk2">
    <td width="30%" class="bgblue"><font size="2"><b>Pre-Shared&nbsp;Key:</b></font></td>
    <td width="70%" class="bggrey"><input type="password" name="wapiPskValue0" id="wapipsk" size="32" maxlength="64" value="">
    </td>
   </tr>

    <tr id="show_wapi_as">
   <td width="30%" class="bgblue"><font size="2"><b>AS&nbsp;Server&nbsp;IP&nbsp;Address:</b></font></td>
   <td width="70%" class="bggrey"><input id="wapiAS_ip" name="wapiASIP0" size="16" maxlength="15" value="0.0.0.0"></td></tr>

	<tr id="show_wapi_as2">
		 <td width="30%" class="bgblue"><font size="2"><b>Select WAPI certificate:</b></font></td>					 
	  	<td width="70%" class="bggrey"><font size="2">
		 <select size="1"  id="wapi_cert_sel" name="wapiCertSel0">	 
			<option value="0"> Use Cert from Remote AS0 </option>
			<option value="1"> Use Cert from Remote AS1 </option>
			<% getInfo("wapiLocalAsOption");%>
		</select> </font></td>
	</tr>
   
   </tr>
</span>

<span id = "pocket_wlan1_security_div" class = "off" >
	<table border=0 width="500" cellspacing=4 cellpadding=0>
	<tr><td colspan="2"><hr size=1 noshade align=top></td></tr>
   <td width="35%"><font size="2"><b><SPAN id=wlan1security></SPAN>:&nbsp;</b>
        <select size="1" name="method1" onChange="pocket_checkState(1)">
          <option  value="0">None</option>
          <option value="1">WEP</option>
          <option value="2">WPA</option>
	  <option value="4">WPA2</option>
<script>	
if(pocketRouter_Mode != POCKETROUTER_BRIDGE_CLIENT)
document.write('<option value="6">WPA2 Mixed</option>');
</script>
	 

        </select></font></td>
</table>

<span id = "pocket_wep_div1" class = "off" >
<table border=0 width="500" cellspacing=4  cellpadding=0>
  <tr>
      <td width="15%"><font size=2><b>Key Length:</b></td>
      <td width="60%"><font size=2><select size="1" name="length1" ONCHANGE="lengthClick(document.wizardPocket,0)">
      			<option value=1 >64-bit</option>
			<option value=2 >128-bit</option>
      </select></td>
  </tr>
  <tr>
      <td width="15%"><font size=2><b>Key Format:</b></td>
      <td width="40%"><font size=2><select size="1" name="format1" ONCHANGE="setDefaultWEPKeyValue(document.wizardPocket,0)">
     	<option value=1>ASCII</option>
	<option value=2>Hex</option>
       </select></td>
  </tr>
  <tr>
     <td width="15%"><font size=2><b>Key Setting:</b></td>
     <td width="40%"><font size=2>
     	<input type="text" name="key1" size="26" maxlength="26">
     </td>
  </tr>
</table>
</span>


<span id = "pocket_wpa_div1" class = "off" >
   <table border=0 width="500" cellspacing=4 cellpadding=0>
    <tr>
      <td width="35%"><font size="2"><b>Pre-Shared Key Format:</b></font> </td>
      <td width="65%"><font size="2"><select size="1" name="pskFormat1">
          <option value="0" >Passphrase</option>
          <option value="1" >Hex (64 characters)</option>
        </select></font></td>
    </tr>
    <tr>
      <td width="35%"><font size="2"><b>Pre-Shared Key:</b></font> </td>
      <td width="65%"><font size="2"><input type="text" name="pskValue1" size="32" maxlength="64" value=""></font></td>
    </tr>
     <tr></tr><tr></tr><tr></tr>
  </table>

</span>
</span> <!--pocket_wlan1_security_div -->


<br>
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClickPocket_Security(0)' >
		  <input type="button" value="  Finished  " name="next" onClick='saveClickPocket_Security(1)'>
  </td> </tr>
</table>

</span>

</form>


</blockquote>


<script>
	
function saveClickPocket_Wan(next)
{
	
	if(next)
	{
		form =  document.wizardPocketGW;
		if(saveChanges_wan(form) == false)
		{
			return false ;
		}
		else
			document.wizardPocketGW.submit();
	}
	else
	{
		wizardHideDiv();
		show_div(true, "top_div");
	}
		
}

function pocketWanTypeInit()
{
	var wan_type=<% write(getIndex("wanDhcp")); %>;
	
	var pocketForm=document.wizardPocketGW;

	show_div(false,"pocket_pptp_div");
  show_div(false,"pocket_dns_div");
  show_div(false,"pocket_dnsMode_div");  
  show_div(false,"pocket_dhcp_div"); 
  show_div(false,"pocket_static_div"); 
	show_div(false,"pocket_l2tp_div");
	show_div(false,"pocket_pppoe_div");
	
	if(wan_type == 0)
	{
		wanTypeValue="fixedIp";
		show_div(true,"pocket_static_div"); 
		show_div(true,"pocket_dns_div");
		wizardPocketGW.elements["dnsMode"].value = "dnsManual";
	}
	else if(wan_type == 1)
	{
		wanTypeValue="autoIp";
		show_div(true,"pocket_dhcp_div"); 
	}
	else if(wan_type == 3)
	{
		wanTypeValue="ppp";
		show_div(true,"pocket_pppoe_div"); 
	}
	else if(wan_type == 4)
	{
		wanTypeValue="pptp";
		show_div(true,"pocket_pptp_div"); 
	}
	else if(wan_type == 6)
	{
		wanTypeValue="l2tp";
		show_div(true,"pocket_l2tp_div"); 
	}
	

	for (index=0; index<pocketForm.elements["wanType"].length; index++) 
	{

		if(wanTypeValue == pocketForm.elements["wanType"][index].value)
		{
			pocketForm.elements["wanType"].selectedIndex = index;
		}
	}
	
}
	
function pocketWanTypeSelection(selValue)
{

	show_div(false,"pocket_pptp_div");
  show_div(false,"pocket_dns_div");
  show_div(false,"pocket_dnsMode_div");  
  show_div(false,"pocket_dhcp_div"); 
  show_div(false,"pocket_static_div"); 
	show_div(false,"pocket_l2tp_div");
	show_div(false,"pocket_pppoe_div");
	
	wizardPocketGW.elements["dnsMode"].value = "dnsAuto";
	
	if(selValue == "fixedIp")
	{		
		show_div(true,"pocket_static_div"); 
		show_div(true,"pocket_dns_div");
		wizardPocketGW.elements["dnsMode"].value = "dnsManual";
	}
	else if(selValue == "autoIp")
	{
		show_div(true,"pocket_dhcp_div"); 
	}
	else if(selValue == "ppp")
	{
		show_div(true,"pocket_pppoe_div"); 
	}
	else if(selValue == "pptp")
	{
		show_div(true,"pocket_pptp_div"); 
	}
	else if(selValue == "l2tp")
	{
		show_div(true,"pocket_l2tp_div"); 
	}
	
	
}	
</script>
<blockquote>
<form action=/goform/formPocketWizardGW method=POST name="wizardPocketGW">
<input type=hidden id="mode0" name="mode0" value="0"*1>		
<input type="hidden" id="hiwanType" name="hiwanType" value="ppp">
<input type="hidden" name="pppServiceName" value="<% getInfo("pppServiceName"); %>">
<input type="hidden" name="pppConnectType" value="0"> <!-- 0:Continuous -->
<input type="hidden" name="pppMtuSize" value="<% getInfo("pppMtuSize"); %>">
<input type="hidden" name="dnsMode" value="dnsAuto">
<input type="hidden" name="isPocketWizard" value="1">
<INPUT type=hidden name=wlBandMode value=<% write(getIndex("wlanBand2G5GSelect")); %>>

<!-- pocketRouter ssid -->
<span id = "pocket_wan_setting_div" class = "off" >
<table  border=0 width="500" cellspacing=4 cellpadding=0>
  <tr><td colspan="2"><h2><font color="#0000FF">1. WAN Interface Setup</font></h2></td></tr>
  <tr><td colspan="2"><font size=2>
    This page is used to configure the parameters for Internet network which
    connects to the WAN port of your Access Point.
    </td>
  </tr>
  <tr><td colspan="2"><hr size=1 noshade align=top></td></tr>
  <tr>
</table>
  

  <table border="0" width=500>
    <tr>
       <td width="30%" ><font size=2><b>WAN Access Type:</b></td>
       <td width="70%"><font size=2>
       	<select size="1" name="wanType" onChange="pocketWanTypeSelection(this.value)" disable=false>
 	<option value="fixedIp">Static IP</option>
	<option value="autoIp">DHCP Client</option>
 	<option value="ppp">PPPoE</option>
	<option value="pptp">PPTP</option>
	<option value="l2tp">L2TP</option>
	</select>
	</td>
    <tr>
  </table>
  <span id = "pocket_static_div" class = "off" >  
  <table border="0" width=500>
    <tr>
       <td width="30%"><font size=2><b>IP Address:</b></td>
       <td width="70%"><font size=2>
        <input type="text" name="wan_ip" size="18" maxlength="15" value="<% getInfo("wan-ip-rom"); %>">
      </td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="wan_mask" size="18" maxlength="15" value="<% getInfo("wan-mask-rom"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Default Gateway:</b></td>
      <td width="70%"><font size=2><input type="text" name="wan_gateway" size="18" maxlength="15" value="<% getInfo("wan-gateway-rom"); %>"></td>
    </tr>
  </table>  
  </span>
  <span id = "pocket_dhcp_div" class = "off" >  
  </span>
  <span id = "pocket_pppoe_div" class = "off" >  
  <table border="0" width=500>
     <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" id="pppUserName" name="pppUserName" size="18" maxlength="128" value="<% getInfo("pppUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="pppPassword" size="18" maxlength="128" value="<% getInfo("pppPassword"); %>"></td>
    </tr>
      </table>
  </span>
      
  <span id = "pocket_pptp_div" class = "off" >  
  <table border="0" width=500>
      <td width="30%"><font size=2><b>IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpIpAddr" size="18" maxlength="30" value="<% getInfo("pptpIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpSubnetMask" size="18" maxlength="30" value="<% getInfo("pptpSubnet"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Server IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpServerIpAddr" size="18" maxlength="30" value="<% getInfo("pptpServerIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="pptpUserName" size="18" maxlength="128" value="<% getInfo("pptpUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="pptpPassword" size="18" maxlength="128" value="<% getInfo("pptpPassword"); %>"></td>
    </tr>
        </table>
    </span>
    
<!-- keith: add l2tp support. 20080515  -->
    <span id = "pocket_l2tp_div" class = "off" >  
    <table border="0" width=500>
      <td width="30%"><font size=2><b>IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpIpAddr" size="18" maxlength="30" value="<% getInfo("l2tpIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Subnet Mask:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpSubnetMask" size="18" maxlength="30" value="<% getInfo("l2tpSubnet"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Server IP Address:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpServerIpAddr" size="18" maxlength="30" value="<% getInfo("l2tpServerIp"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>User Name:</b></td>
      <td width="70%"><font size=2><input type="text" name="l2tpUserName" size="18" maxlength="128" value="<% getInfo("l2tpUserName"); %>"></td>
    </tr>
    <tr>
      <td width="30%"><font size=2><b>Password:</b></td>
      <td width="70%"><font size=2><input type="password" name="l2tpPassword" size="18" maxlength="128" value="<% getInfo("l2tpPassword"); %>"></td>
    </tr>
        </table>
    </span>
    
    <span id = "pocket_dnsMode_div" class = "off" >
<!--    	
    <table border="0" width=500>

     <tr>
      <td width="100%" colspan="2"><font size=2>
        <b><input type="radio" value="dnsAuto" name="dnsMode" <% if (getIndex("wanDNS")==0) write("checked"); %> onClick="autoDNSclicked()">Attain DNS Automatically</b>
      </td>
    </tr>
    <tr>
      <td width="100%" colspan="2"><font size=2>
        <b><input type="radio" value="dnsManual" name="dnsMode" <% if (getIndex("wanDNS")==1) write("checked"); %> onClick="manualDNSclicked()">Set DNS Manually</b>
      </td>
    </tr>
    <tr>
    </table>
-->    
    </span>
    
    <span id = "pocket_dns_div" class = "off" >
    <table border="0" width=500>
    <tr>
       <td width="30%"><font size=2><b>DNS :</b></td>
       <td width="70%"><font size=2><input type="text" name="dns1" size="18" maxlength="15" value=<% getInfo("wan-dns1"); %>></td>
    </tr>
    
    </table>
    </span>
<table border=0 width="500" cellspacing=4 cellpadding=0>  
	<tr> <td colspan="2" align=right>
		  <input type="button" value="  Cancel  " name="cancel" onClick='cancelClick();'>
		  <input type="button" value="<<Back  " name="back" onClick='saveClickPocket_Wan(0)' >
		  <input type="button" value="  Finished  " name="next" onClick='saveClickPocket_Wan(1)'>
  </td> </tr>
</table>
<script>	
			pocketWanTypeInit();
</script>   
</span>

</form>


</blockquote>

</body>

</html>
