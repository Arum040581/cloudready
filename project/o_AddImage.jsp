<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Imge</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-marketingscript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
        function loadFileAsText()
    {
	    var fileToLoad = document.getElementById("file").files[0];
	    var fileReader = new FileReader();
	    fileReader.onload = function(fileLoadedEvent) 
    {
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	    fileReader.readAsText(fileToLoad, "UTF-8");
    }
</script>
<style type="text/css">
<!--
.style1 {font-size: 40px}
.style2 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="ownerLogin.jsp"><span>Owner</span></a></li>
          <li><a href="consumerLogin.jsp"><span>Consumer</span></a></li>
         <li><a href="webServerLogin.jsp"><span>Web Server</span></a></li>
		  <li><a href="auditorLogin.jsp"><span>Auditor</span></a></li>
          <li><a href="projectDetails.html"><span>Project Details</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Statistics Extraction in Malicious Environment</a></h1>
      </div>
      <div class="clr"></div>
      <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2>Image Upload</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p><form id="form1" name="form1" method="post" action="o_AddImage1.jsp">
                <table width="600" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				    
					<tr>
					  <td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">  Title </div></td>
					  <td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="title"></div></td>
					</tr>
					
					<tr>
					  <td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;">Image Name </div></td>
					  <td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="name"></div></td>
					</tr>
					
					<tr>
  						<td  width="188" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style7" style="margin-left:20px;"> Description <br />
					  </div></td>
						<td  width="412" valign="middle" height="45"><div align="left" style="margin-left:20px;">
						   <input required="required" type="file" name="text" id="file"  onchange="loadFileAsText()" />
					  </div></td>
					</tr>
					
					<tr>
					
					<td height="101"></td>
				
            <td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
                        <textarea name="desc" id="textarea" cols="30" rows="5"></textarea>
                    </div></td>
					</tr>
					  <span class="style8">
				      </tr>
					  </span>
					
					
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/>&nbsp;&nbsp;<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
			</table>
				</form></p>
          <p align="right"><span class="style2"><a href="ownerMain.jsp">Back</a></span></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
              <li><a href="ownerMain.jsp">Owner Main </a></li>
            <li><a href="ownerLogin.jsp">Log Out </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
		    <li>Scenarios</li>
            <li>The Lime Framework</li>
            <li>Accountable Data Transfer</li>
			<li>Implementation & Microbenchmarking</li>
            <li>Truster Sender</li>
            <li>Untruster Sender</li>
          
             
          
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
   <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
