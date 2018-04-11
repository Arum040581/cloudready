
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Images</title>
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
         
          <p class="style5">Search Image Files Content Based on Keyword</p>
          <div class="clr"></div>
           
        
        
          <p>
		  <DIV CLASS="article">
         
              <H2>&nbsp;</H2>
            <FORM ACTION="c_SearchImages.jsp" METHOD="post">
                
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><P align="center" class="style15"><span class="style10">Enter Keyword to Search &nbsp;</span>&nbsp;</P></TD>
                      <TD width="165"><div align="center" class="style15">
                        <INPUT TYPE="text" name="keyword" />
                      </div></TD>
                      <TD width="72"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><P align="center" class="style14">[ searching content Based on Image Description ] </P></TD>
                    </TR>
                  </TABLE>
                </DIV>
              
             
				
            </FORM>
          </DIV>
<%@ include file="connect.jsp" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="java.text.SimpleDateFormat,java.util.Date"%>
                <%
							try{
								
								String strDate,strTime,dt;
								String consumer,input,input1;
								String status=null;
								String title,imgName,desc,desc1,rank;
								int i=0;
								
								 consumer=(String)application.getAttribute("consumer");
								 input1= request.getParameter("keyword");
								 input = input1.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
									
								
								if(!input.equalsIgnoreCase(""))
								{
									   Statement st3 = connection.createStatement();
									   String query3 ="insert into search(consumer,keyword,dt) values('"+consumer+"','"+input1+"','"+dt+"')";
									   st3.executeUpdate (query3); 	   
								}
							
								
								Statement st4 = connection.createStatement();
					   			String query4 ="select * from consumer where username='"+consumer+"'";
					   			ResultSet rs4 = st4.executeQuery(query4);
								if(rs4.next())
								{
									status=rs4.getString(10);
											
								}
								  
								Statement stmt=connection.createStatement();
								String strQuery = "select * from serverimages order by rank desc";
								ResultSet rs = stmt.executeQuery(strQuery);
								%><table width="552" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="69" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">Id</div></td>
			  <td  width="69" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">Image</div></td>
			  <td  width="148" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">Title</div></td>
              <td  width="183" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">Name</div></td>
              <td  width="142" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">Rank</div></td>
			  <td  width="142" valign="baseline" height="34" style="color: #2c83b0;"><div align="center" class="style4 style5 style11 style12">View Comments</div></td>
            </tr><%
								while(rs.next()){
									
									  i=rs.getInt(1);
									 title = rs.getString(2);
									 imgName = rs.getString(3);
									 desc1 = rs.getString(5);
									 rank = rs.getString(9);
									 String encryptedTitle = new String(Base64.decode(title.getBytes()));
									 String encryptedName = new String(Base64.decode(imgName.getBytes()));
                                     String encryptedDesc1 = new String(Base64.decode(desc1.getBytes()));

					                 desc = encryptedDesc1.toLowerCase();
									if ( desc.indexOf(input)>=0){
								
										
			    	 					
										
										
									%>
              </P>
            
          <tr>
			  <td  width="69" valign="baseline" height="31" style="color: #2c83b0;"><p>&nbsp;</p>
			  <div align="center" class="style15 style4 style5 style10 style13"><%=i%></div></td>
			    <td width="146" rowspan="1" ><div class="style3 style10" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
          <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=i%>&type=<%="serverimages"%>" style="width:110px; height:100px;"  /></a></div></td>
			  
              <td  width="148" valign="baseline" height="31" style="color: #2c83b0;"><p>&nbsp;</p>
              <div align="center" class="style15 style4 style5 style10 style13"><%=encryptedTitle%></div></td>
              <td  width="183" valign="baseline" height="31" style="color: #2c83b0;"><p>&nbsp;</p>
              <div align="center" class="style15 style4 style5 style10 style13"><a href="c_SearchImages1.jsp?imgName=<%=encryptedName%>"><%=encryptedName%></a></div></td>
              <td  width="142" valign="baseline" height="31" style="color: #2c83b0;"><p>&nbsp;</p>
              <div align="center" class="style15 style4 style5 style10 style13"><%=rank%></div></td>
			  <td  width="142" valign="baseline" height="31" style="color: #2c83b0;"><p>&nbsp;</p>
			  <div align="center" class="style15 style4 style5 style10 style13"><a href="c_ViewComments.jsp?id=<%=i%>&keyword=<%=input%>"><%="View"%></a></div></td>
            </tr>
             
                <%
						  	}
						 }
				
	
				
						
					}catch(Exception e){						  
						e.printStackTrace();
					}
						  
				%>
				</table>
</P>
          <p align="right"><a href="consumerMain.jsp">Back</a></p>
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
