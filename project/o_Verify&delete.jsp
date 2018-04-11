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
.style8 {font-size: 16px}
.style9 {color: #000000}
.style10 {
	font-size: 14px;
	color: #FF0000;
}
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
          <h2><span class="style4"><%=request.getParameter("name")%> </span> Attacked Details</h2>
          <p>&nbsp;</p>
          <p> 
		 <%@ include file="connect.jsp" %>
		 <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
		 <%

    
      	try 
	{
	        String id = request.getParameter("id");
      		String name = request.getParameter("name");
			String attacker	,title,title1,nam,name1,cont,cont1;
			int i=0;
        
           String query="select * from attacker where id ='"+id+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		i=rs.getInt(1);
		attacker=rs.getString(2);
		title=rs.getString(3);
	    nam=rs.getString(4);
	    cont=rs.getString(6);
		
		String encryptedTitle = new String(Base64.decode(title.getBytes()));
		String encryptedName = new String(Base64.decode(nam.getBytes()));
		
		String str1 = "select * from ownerimages where id = '"+id+"' ";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		if ( rs1.next() )
	   {
	   title1 = rs1.getString(2);
	    name1 = rs1.getString(3);
		 cont1 = rs1.getString(5);
			
		String encryptedTitle1 = new String(Base64.decode(title1.getBytes()));
		String encryptedName1 = new String(Base64.decode(name1.getBytes()));	 
		 
		 
		   %>
         <form action="o_Delete.jsp" method="post" name="form1">
  <div align="center" class="style1">  
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="465" border="0">
      <tr>
        <td width="245"><div align="center" class="style12 style8 style9"> ID </div></td>
        <td width="210"><label>
          <input type="text" name="t" value="<%=i%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><div align="center" class="style12 style8 style9">Image Title </div></td>
        <td><label>
          <input type="text" name="t1" value="<%=encryptedTitle%>" readonly>
        </label></td>
      </tr>
     <tr>
        <td><div align="center" class="style12 style8 style9">Image Name </div></td>
        <td><label>
          <input type="text" name="t2" value="<%=encryptedName%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><div align="center" class="style12 style8 style9">Attacker Name</div></td>
       <td><label>
          <input type="text" name="t2" value="<%=attacker%>" readonly>
        </label></td>
      </tr>
	   <tr>
        <td height="101"><div align="center" class="style12 style8 style9">Attacked Type</div></td>
        <td><label>
		<% if(title.equalsIgnoreCase(title1))
		 {
		 String a="";
		
		 }
		 else
		 {
		 String a="Title Modified";
		  %><input type="text" name="t2" value="<%=">"+a%>" readonly><%
		 }
		 
		  if(nam.equalsIgnoreCase(name1))
		 {
		 String b="";
		 
		 }
		 else
		 {
		 String b="Name Modified";
		  %>
		<br />
		<input type="text" name="t2" value="<%=">"+b%>" readonly><%
		 }
		  if(cont.equalsIgnoreCase(cont1))
		 {
		 String c="";
		 
		 }
		 else
		 {
		 String c="Garbage Content Added";
		  %><input type="text" name="t2" value="<%=">"+c%>" readonly><%
		 }
		%>
		
		
          
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <div align="right">
            <span class="style10">Delete Img Details</span>
            <input type="submit" name="Submit" value="Delete">
            </div>
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form> </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>
		  
		  
		   <%

	 
	   }}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
                <p align="right"><a href="o_VerifyImage.jsp">Back</a></p>
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
