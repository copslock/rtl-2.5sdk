<html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Save/Reload Setting</title>
<script type="text/javascript" src="common.js"> </script>
<script>
function resetClick()
{
   if ( !confirm('Do you really want to reset the current settings to default?') ) {
	return false;
  }
  else
	return true;
}

function saveClick(url)
{
  if (verifyBrowser() == "ie4" ) {
	window.location.href = url;
	return false;
  }
  else
  	return true;
}

</script>

</head>
<body>
<blockquote>
<h2><font color="#0000FF">Save/Reload Settings</font></h2>
  <table border="0" cellspacing="4" width="500">
  <tr><font size=2>
 This page allows you save current settings to a file or reload the settings
 from the file which was saved previously. Besides, you could reset the current
 configuration to factory default.
  </tr>
  <tr><hr size=1 noshade align=top></tr>
  <form action=/goform/formSaveConfig method=POST name="saveConfig">
  <tr>
    <td width="32%"><font size=2><b>Save Settings to File:</b></td>
    <td width="30%"><font size=2>
        <p><input type="submit" value="Save..." name="save" onclick="return saveClick('/config.dat')"></p>
   </tr>
  </form>
  <form method="post" action="goform/formSaveConfig" enctype="multipart/form-data" name="saveConfig">
  <tr>
    <td width="32%"><font size=2><b>Load Settings from File:</b></td>
    <td width="30%"><font size=2><input type="file" name="binary" size=24></td>
    <td width="20%"><font size=2><input type="submit" value="Upload" name="load"></td>
  </tr>
  </form>
  <form action=/goform/formSaveConfig method=POST name="saveConfig">
  <tr>
    <td width="32%"><font size=2><b>Reset Settings to Default:</b></td>
    <td width="30%"><font size=2><input type="submit" value="Reset" name="reset" onclick="return resetClick()"></td>
  </form>
  </tr>
</table>
</blockquote>
</body>
</html>
