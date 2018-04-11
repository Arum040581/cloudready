
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download Image</title>
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
.style11 {font-size: 16px}
.style12 {color: #FF9900}
.style13 {color: #000000}
.style14 {font-size: 14px; color: #959595; }
.style15 {color: #959595}
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
         
        
          <div class="clr"></div>
           
        
        
          <p>
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	 
		<%

try 
			
			
				{
				
		  		String name = request.getParameter("name");
				String key = request.getParameter("sk");
				
			
				
				String strQuery = "select * from serverimages where name='"+name+"' and sk='"+key+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);

					if(rs.next()==true)
					{
					    
						int id=rs.getInt(1);
						String ct=rs.getString(5);
						
						
						
							
			%>
		  </p>
		  <p align="center" class="style1">Image</p>
		  
		    <label>
	            <p>&nbsp;</p>
	            <div align="center">
	              <p>
                  <td width="146" rowspan="1" ><div class="style3 style10" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
          <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=id%>&type=<%="serverimages"%>" style="width:200px; height:200px;"  /></a></div></td>
                 <td><a href="w_ProfilePic.jsp?id=<%=id%>&type=<%="serverimages"%>" class="style2">Click Here To Download</a></td>
				  </p>
				     

	              <p align="right"><a href="c_Comment.jsp?name=<%=name%>">Comment</a><br/>
	                <br/>
                  </p>
          </div>
		    </label>
		  <p align="right"><a href="c_Request.jsp?t1=<%=name%>">Back</a></p>
		  <p>
		    <%	
					}
					else
					{
						
		%>
	      </p>
		  <p>
		  <h1 class="style1">File Doesn't Exist !!!</h1>
		  </p><br />
	<%
					}

        connection.close();
		  } 
          catch(Exception e)
          {
            out.println(e.getMessage());
          }%>
	 
			        
</P>
     
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
