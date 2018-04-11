<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Transactions</title>
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
.style4 {color: #FF9900}
.style5 {font-size: 16px}
.style10 {font-size: 14px}
.style11 {color: #000000}
.style12 {color: #FF0000}
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
         <li><a href="webServerLogin.jsp"><span>Web Server</span></a></li>
		  <li class="active"><a href="auditorLogin.jsp"><span>Auditor</span></a></li>
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
          <h2> All Image Transactions</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
        
          <p> 
		  
		  <table width="618" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="53" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">SI NO</div></td>
              <td  width="115" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">User Name</div></td>
			  <td  width="113" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Image Name</div></td>
              <td  width="125" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">SecretKey</div></td>
			  <td  width="88" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Task</div></td>
              <td  width="51" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Date</div></td>
            </tr>
			
            <%@ include file="connect.jsp" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%
					  
						String s1,s2,s3,s4,s5;
						
						int id=0;
					
						try 
						{
								
								String str1 = "select * from transaction ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
									
								
								while(rs1.next())
								{
							 
		
					      
								id = rs1.getInt(1);
								s1 = rs1.getString(2);
								s2 = rs1.getString(3);
								s3 = rs1.getString(4);
								s4 = rs1.getString(5);
								s5 = rs1.getString(6);
								String encryptedName = new String(Base64.decode(s2.getBytes()));
								
		
				             %>
          <tr>
	      <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(id);%></div></td>
		  <%if(s4.equalsIgnoreCase("Upload"))
		  {%>
          <td  valign="baseline" height="25"><div align="center" class="style3 style10 style12"><%out.println(s1);%></div></td>
          <%}
		  else
		  {
		  %>
		   <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s1);%></div></td>
          <%}%>
		  <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(encryptedName);%></div></td>
          <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s3);%></div></td>
	      <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s4);%></div></td>
          <td width="57" height="25"  valign="baseline"><div align="center" class="style3 style10 style11"><%out.println(s5);%></div></td>
          </tr>
			
                           <%
						}
						
						
						
						%>
			<tr>
			
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
			   <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
            </tr>
			<p></p>
           <%
				
				connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
		   %>
		  </table>	
           </p>
		   
		   
						
          <p align="right"><a href="webServerMain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Server Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="webServerMain.jsp">Server Main</a></li>
		    <li><a href="webServerLogin.jsp">Log Out</a></li>
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
