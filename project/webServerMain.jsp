<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Web Server Main Page</title>
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
          <li><a href="ownerLogin.jsp"><span>Owner</span></a></li>
          <li><a href="consumerLogin.jsp"><span>Consumer</span></a></li>
         <li class="active"><a href="webServerLogin.jsp"><span>Web Server</span></a></li>
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2>Welcome to <span class="style4"><%=(String)application.getAttribute("server")%> </span>main Page..! </h2>
          <p>&nbsp;</p>
          <div class="clr">
            <p><img src="images/Webserver.jpg" width="623" height="350" /></p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
           
        
          
          <p></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Server Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="w_ViewOwners.jsp">View All Owner</a></li>
            <li><a href="w_ViewConsumers.jsp">View All Consumer</a></li> 
		    <li><a href="w_ViewImageFiles.jsp">View all image Files</a></li>
			<li><a href="w_AllComments.jsp">View all image comments</a></li>
			<li><a href="w_AllAttackers.jsp">View all attackers</a></li>
			<li><a href="w_AllTransactions.jsp">View all Transactions</a></li>
			<li><a href="w_ConsumerSearch.jsp">View all Consumer Search History</a></li>
            <li><a href="webServerLogin.jsp">Log Out </a></li>
            
		   
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
