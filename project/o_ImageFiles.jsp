<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Image Files</title>
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
.style6 {color: #aeaeae; font-size: 14px; }
.style7 {font-size: 14px}
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
          <h2><span class="style4"><%=(String)application.getAttribute("owner")%> </span> Image Files</h2>
          <p>&nbsp;</p>
          <p> 
		
								<table width="657" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
			 <td  width="29" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Id</div></td>
              <td  width="146" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Image</div></td>
              <td  width="99" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Title</div></td>
              <td  width="88" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Name</div></td>
              <td  width="123" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Secret Key</div></td>
              <td  width="95" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Date</div></td>
              <td  width="61" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Rank</div></td>
            </tr> 
			<%@ include file="connect.jsp" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>

            <%
					  
						String owner,title,name,mac,sk,date,rank;
						int id=0,i=1;
						try 
						{
						        owner = (String)application.getAttribute("owner");
								
								String str1 = "select * from serverimages where owner = '"+owner+"' ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
								
								while(rs1.next())
								{
								
								id = rs1.getInt(1);
								title = rs1.getString(2);
								name = rs1.getString(3);
								mac = rs1.getString(6);
								sk = rs1.getString(7);
								date = rs1.getString(8);
								rank = rs1.getString(9);
								
								String encryptedTitle = new String(Base64.decode(title.getBytes()));
								String encryptedName = new String(Base64.decode(name.getBytes()));
								

					%>
            <tr>
            
	    <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(id);%>
                </div></td>
              <td width="146" rowspan="1" ><div class="style3" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=id%>&type=<%="serverimages"%>" style="width:110px; height:100px;"  />
              </a> </div></td>
			  
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(encryptedTitle);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(encryptedName);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(sk);%>
                </div></td>
               <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(date);%>
                </div></td>
				 <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(rank);%>
                </div></td>
	   
            </tr>
            <%
						}
						%>
						 <tr>
						 <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
          </table>
						<%
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%></p>
                <p align="right"><a href="ownerMain.jsp">Back</a></p>
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
