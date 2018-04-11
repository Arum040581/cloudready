<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Image Verification</title>
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
.style9 {font-size: 14px}
.style10 {color: #000000}
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
          <h2>Comments on <span class="style4"><%=(String)application.getAttribute("owner")%> </span>Images</h2>
          <p>&nbsp;</p>
           <p>  
		   <%@ include file="connect.jsp" %>
		   <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
         <%

  
      	try 
	{    
           String owner = (String)application.getAttribute("owner");
		  
		   String title,name,rank,user,comment,date;
		   int id = 0;
		   String str1="select * from serverimages where owner = '"+owner+"' order by rank desc "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	while ( rs1.next() )
	   {
	     id = rs1.getInt(1);
	     title=rs1.getString(2);
		 name=rs1.getString(3);
		 rank=rs1.getString(9);
		 
		 String encryptedTitle = new String(Base64.decode(title.getBytes()));
		 String encryptedName = new String(Base64.decode(name.getBytes()));
	     
          
%>
          </p>
          
 <table width="510" border="1" align="center"  cellpadding="0" cellspacing="0"  >
   <tr>
     <td width="176" rowspan="5" ><div style="margin:10px 13px 10px 13px;" > 
             <div align="center" class="style8"> <a class="#" id="img1" href="#" >
               <input  name="image2" type="image" src="w_ProfilePic.jsp?id=<%=id%>&type=<%="serverimages"%>" style="width:150px; height:150px;"  />
             </a> </div>
     </div></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style16 style4 style5" style="margin-left:20px;"> ID </div></td>
     <td width="142"><span class="style15 style10 style6 style7"> &nbsp;&nbsp;<%=id%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="48" style="color: #2c83b0;"><div align="left" class="style16 style4 style5" style="margin-left:20px;">Image Title </div></td>
     <td><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=encryptedTitle%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="39" style="color: #2c83b0;"><div align="left" class="style16 style4 style5" style="margin-left:20px;">Image Name </div></td>
     <td><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=encryptedName%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="25" style="color: #2c83b0;"><div align="left" class="style16 style4 style5" style="margin-left:20px;">Rank</div></td>
     <td><span class="style15 style10 style6 style7">&nbsp;&nbsp;<%=rank%></span></td>
   </tr>
   
  </td>
   </tr>
    <tr>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #2c83b0;"><div align="center" class="style10 style17 style5 style4">Commented By</div></td>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #2c83b0;"><div align="center" class="style10 style17 style5 style4">Comments Details </div></td>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #9e4c66;"><div align="left" class="style16 style4 style5" style="margin-left:20px;">
	   <div align="center">Date</div>
	 </div></td> 
   </tr>
   <%
   
   
   	   String str2="select * from comment where id="+id+""; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(str2);
	while ( rs2.next() )
	   {
	     user=rs2.getString(2);
		 comment=rs2.getString(5);
		 date=rs2.getString(6);
	   
	 %>  
	 <tr>
   <td height="36"><div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=user%></span></div></td>
   <td><div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=comment%></span></div></td>
   <td><div align="center" class="style9"><span class="style15">&nbsp;&nbsp;<%=date%></span></div></td>
   <tr>   </tr>
  
   

    <%
       	
       
						}
					%>
               <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>					
        </table>  

    <p>
      <%
       	
    
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
           </table>  </p>
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
