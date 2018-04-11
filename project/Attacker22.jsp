<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
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
.style3 {font-size: 14px; color: #333333; }
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
          <h2>Attacker</h2>
          <p>
 <%@ include file="connect.jsp" %>
 <%@ page import ="java.math.BigInteger" %>
 <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 <%
		
  
 
  
  	try {
	
  		String title = request.getParameter("t1");
  		String name = request.getParameter("t2");
	    String cont = request.getParameter("text");
		
		String encryptedTitle = new String(Base64.encode(title.getBytes()));
		String encryptedName = new String(Base64.encode(name.getBytes()));
		String encryptedCont = new String(Base64.encode(cont.getBytes()));
		
		String tnc = title + name + cont;
		
      		String h1 = "" ;
      		String filename = "filename.txt";
      		
      			
      			
      		
      		PrintStream p = new PrintStream(new FileOutputStream("E:/DataLineage/"+filename));  //E:/DataLineage/
			p.print(new String(tnc));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream("E:/DataLineage/"+filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
		
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			
			h1 = bi1.toString(16);
				
				
  %>

<form action="Attacker3.jsp" method="get" name="form1" >
<table width="478" border="0" align="center">
	<tr>
		<td width="223"><div align="center"><span class="style3">Title</span></div></td>
		<td width="245"><label> <input required name="t1"type="text" value="<%=encryptedTitle%>" size="25" /> </label></td>
	</tr>

	<tr>
		<td height="34"><div align="center"><span class="style3">Image Name  </span></div></td>
		<td><input name="t2" type="text" value="<%=encryptedName%>" size="25" /></td>
	</tr>
		
	<tr>
		<td><div align="center"><span class="style3">Discription</span></div></td>
		<td><textarea name="t3" id="textarea" cols="26" rows="17"><%=encryptedCont%></textarea></td>
	</tr>


	<tr>
		<td height="34"><div align="center"><span class="style3">Trapdoor</span></div></td>
		<td><input name="t4" type="text" size="25" value="<%=h1%>"/></td>
	</tr>
	<tr>
		<td><div align="right"></div></td>
		<td><label> <input type="submit" name="Submit2"value="Attack" /> </label></td>
	</tr>
</table>
</form>

<%
		
								
  							  			
  	}					catch(Exception e) {
									out.println(e.getMessage());
								}
							%>

						        </p>
							
          <div class="clr"></div>
         
        
          
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
           
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
