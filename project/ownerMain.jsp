<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Main Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-marketingscript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 40px}
.style2 {font-size: 14px}
.style4 {color: #FF9900}
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
        <h1><a href="index.html" class="style1">Statistics Extraction in Malicious Situations</a></h1>
      </div>
      <div class="clr"></div>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2>Welcome to <span class="style4"><%=(String)application.getAttribute("owner")%> </span>main Page..! </h2>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p><img src="images/Arc.png" width="706" height="282" /></p>
          <div class="clr"></div>
           
        
          
          <p></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span>Owner Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="o_Profile.jsp">My Profile</a></li>
            <li><a href="o_AddImage.jsp">Upload Image</a></li>
			<li><a href="o_ImageFiles.jsp">List All Uploaded Image</a></li>
			<li><a href="o_VerifyImage.jsp">Verify Owner Image Files</a></li>
			<li><a href="o_AllComments.jsp">Comments on My Images</a></li>
           <li><a href="o_MyImgTransaction.jsp">My ImageFiles Transaction</a></li>
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
