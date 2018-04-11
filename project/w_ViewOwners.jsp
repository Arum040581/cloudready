<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Owners</title>
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
          <h2>View All Owners</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p></p>
          <p>  <table width="631" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="34" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">ID</div></td>
              <td  width="108" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">UserFingerPrint</div></td>
              <td  width="102" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Username</div></td>
              <td  width="110" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Mobile</div></td>
              <td  width="132" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Address</div></td>
              <td  width="90" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style15 style4 style5">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4;
						int i=0;
						try 
						{
						   	String query="select * from owner"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(10);
								
								
								
								
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <p>
                      <%out.println(i);%>
                    </p>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="108" rowspan="1" ><div class="style3" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=i%>&type=<%="owner"%>" style="width:90px; height:90px;"  />
              </a> </div></td>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(s1);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(s2);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(s3);%>
                </div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="90" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style3">
                  <p>&nbsp;</p>
                <p><a href="w_Status.jsp?id=<%=i%>&type=<%="owner"%>">waiting</a></p>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="35" height="0"  valign="baseline"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(s4);%>
                </div></td>
              <%
						}
						%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
          </table></p>
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
