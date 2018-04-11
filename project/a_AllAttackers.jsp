<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Attackers</title>
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
        <h1><a href="index.html" class="style1">Data Lineage in Malicious Environments</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider">
		
		<img src="images/slide1.jpg" width="960" height="360" alt="" />
		<img src="images/slide2.jpg" width="960" height="360" alt="" />
		<img src="images/slide3.jpg" width="960" height="360" alt="" /> 
		
		</div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2> All Attackers</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
        
          <p> 
		  
		  <table width="657" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="29" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Id</div></td>
              <td  width="99" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Title</div></td>
              <td  width="88" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Name</div></td>
			  <td  width="146" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Attacker</div></td>
              <td  width="95" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Attacked Date</div></td>
			  <td  width="123" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Digital Sign</div></td>
            </tr>
			
            <%@ include file="connect.jsp" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%
					  
						String title,name,mac,date,attacker;
						
						int id=0,i=1;
					
						try 
						{
								
								String str1 = "select * from attacker ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
									
								
								while(rs1.next())
								{
							 
		
					      
								id = rs1.getInt(1);
								attacker = rs1.getString(2);
								title = rs1.getString(3);
								name = rs1.getString(4);
								mac = rs1.getString(6);
								date = rs1.getString(7);
								
								String decryptedTitle = new String(Base64.decode(title.getBytes()));
                                String decryptedName = new String(Base64.decode(name.getBytes()));
								
		
				             %>
          <tr>
	      <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(id);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(decryptedTitle);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(decryptedName);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(attacker);%></div></td>
	      <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(date);%></div></td>
		  <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><a href="a_DSign.jsp?mac=<%=mac%>&name=<%=decryptedName%>&type=<%="attack"%>">View</a></div></td>
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
		   
		   
						
          <p align="right"><a href="auditorMain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Auditor Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
             <li><a href="auditorMain.jsp">Auditor Main</a></li>
		    <li><a href="auditorLogin.jsp">Log Out</a></li>
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
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Index Terms </span></h2>
        
           <li>document flow</li>
		   <li>owner</li>
		   <li>consumer</li>
		   <li>auditor</li> 
		   <li>auditing process</li>
		   <li>communication</li>
      </div>
      <div class="col c3">
        <h2>Project Details </h2>
		   <li>Robust Watermarking</li>
		   <li>Communication Overhead</li>
		   <li>Storage Overhead</li>
		   <li>Multiple Iterations  Outsourcing</li> 
		   <li>Analysis of the Protocol</li>
		   <li>Data Lineage Generation</li>
		   <li>Untrusted Sender</li>  
        <p></p>
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
