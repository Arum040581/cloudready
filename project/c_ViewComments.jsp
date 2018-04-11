
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Comments</title>
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
.style5 {
	font-size: 25px;
	color: #333333;
}
.style10 {font-size: 14px}
.style15 {color: #333333}
.style16 {font-size: 14px; color: #FF6600; }
.style17 {color: #FF6600}
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
          <li class="active"><a href="consumerLogin.jsp"><span>Consumer</span></a></li>
         <li><a href="webServerLogin.jsp"><span>Web Server</span></a></li>
		  <li><a href="auditorLogin.jsp"><span>Auditor</span></a></li>
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
         
          <p class="style5">Comments..!</p>
          <div class="clr"></div>
           
        
        
          <p>
		 <%@ include file="connect.jsp" %>
		 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
         <%

  
      	try 
	{    
           String id= request.getParameter("id");
		   String keyword= request.getParameter("keyword");
		   String title,name,rank,user,comment,date;
		   
		   String str1="select * from serverimages where id='"+id+"' "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	if ( rs1.next() )
	   {
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
     <td  width="184" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style16" style="margin-left:20px;"> ID </div></td>
     <td width="142"><span class="style15 style10"> &nbsp;&nbsp;<%=id%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="48" style="color: #2c83b0;"><div align="left" class="style16" style="margin-left:20px;">Image Title </div></td>
     <td><span class="style15 style10">&nbsp;&nbsp;<%=encryptedTitle%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="39" style="color: #2c83b0;"><div align="left" class="style16" style="margin-left:20px;">Image Name </div></td>
     <td><span class="style15 style10">&nbsp;&nbsp;<%=encryptedName%></span></td>
   </tr>
   <tr>
     <td  width="184" valign="middle" height="25" style="color: #2c83b0;"><div align="left" class="style16" style="margin-left:20px;">Rank</div></td>
     <td><span class="style15 style10">&nbsp;&nbsp;<%=rank%></span></td>
   </tr>
   
  </td>
   </tr>
    <tr>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #2c83b0;"><div align="center" class="style8 style10 style17">Commented By</div></td>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #2c83b0;"><div align="center" class="style8 style10 style17">Comments Details </div></td>
      <td  width="144" valign="middle" height="30" colspan="1" style="color: #9e4c66;"><div align="left" class="style16" style="margin-left:20px;">
	   <div align="center">Date</div>
	 </div></td> 
   </tr>
   <%
   
   
   	   String str2="select * from comment where id='"+id+"'"; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(str2);
	while ( rs2.next() )
	   {
	     user=rs2.getString(2);
		 comment=rs2.getString(5);
		 date=rs2.getString(6);
	   
	 %>  
	 <tr>
   <td height="36"><div align="center"><span class="style15">&nbsp;&nbsp;<%=user%></span></div></td>
   <td><div align="center"><span class="style15">&nbsp;&nbsp;<%=comment%></span></div></td>
   <td><div align="center"><span class="style15">&nbsp;&nbsp;<%=date%></span></div></td>
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

 <p align="right"><a href="c_SearchImages.jsp?keyword=<%=keyword%>">Back</a></P>
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
           </table>
            </P>
   
    </p>
    <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Consumer Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
			<li><a href="consumerMain.jsp">Consumer Main</a></li>
            <li><a href="consumerLogin.jsp">Log Out </a></li>
            
		   
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
		   <li>Multiple Iterations Outsourcing</li> 
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
