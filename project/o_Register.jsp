<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Registration</title>
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
.style4 {font-size: 18px}
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2>Owner Registration</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p><form action="o_InsertData.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li>
                <label for="name"><span class="style2">User Name </span>(required)</label>
                <input id="name" name="userid" class="text" />
              </li>
               <li>
                <label for="password"><span class="style2">Password</span> (required)</label>
                <input type="password" id="password" name="pass" class="text" />
              </li>
              <li>
                <label for="email"><span class="style2">Email Address </span>(required)</label>
                <input id="email" name="email" class="text" />
              </li>
			  <li>
                <label for="mobile"><span class="style2">Mobile Number </span>(required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              
              <li>
                <label for="address"><span class="style2">Your Address</span></label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
			  <li>
                <label for="dob"><span class="style2">Date of Birth </span>(required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
			  <li>
                <label for="gender"><span class="style2">Select Gender</span> (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>
              </li>
			  <li>
                <label for="pincode"><span class="style2">Enter Pincode</span> (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
			  
			  
			  <li>
                <label for="pic"><span class="style2">Select Profile Fingerprint </span> (required)</label>
                <input type="file" id="pic" name="pic" class="text" />
                <ol>
                  
                  <ol>
                      
                    <ol>
                          <li>
                            <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                      </li>
                    </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
          </form></p>
          <p align="right"><span class="style2"><a href="ownerLogin.jsp">Back</a></span></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="ownerLogin.jsp">Owner</a></li>
            <li><a href="consumerLogin.jsp">Consumer</a></li>
            <li><a href="webServerLogin.jsp">Web Server</a></li>
		    <li><a href="auditorLogin.jsp">Auditor</a></li>
            <li><a href="projectDetails.html">Project Details</a></li>
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
