<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Product Purchased Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 23px}
.style2 {color: #FF0000}
.style3 {font-family: "Times New Roman", Times, serif}
.style9 {font-size: 15px}
.style10 {
	font-size: 15px;
	color: #0000FF;
	font-weight: bold;
}
.style11 {color: #0000FF}
.style18 {font-family: "Times New Roman", Times, serif; font-size: 15px; color: #000000; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">ProGuard Detecting Malicious<br />Accounts in Social-Network<br />Based Online Promotions</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Bank Admin</span></a></li>
          <li class="active"><a href="s_login.jsp"><span>Seller</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">View Malicious Users Based on Product Purchase </span></h2>
		  <p>&nbsp;</p>
		  
		  
		  
<table width="630" border="1.5" cellpadding="0" cellspacing="0" align="left">
          <tr bgcolor="#00FF33">
               <td width="50" height="44" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Id  </strong></div></td>
               <td width="82" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>User  </strong></div></td>
               <td width="115" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Product Name  </strong></div></td>
               <td width="105" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Task </strong></div></td>
               <td width="98" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>IP Address</strong></div></td>
               <td width="97" bgcolor="#99CC00"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4"><strong>Blocked Date</strong></div></td>
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("seller");

 try 
	{		
      	   String query="select * from blocked_user where task='Product Purchase' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//pn
		s4=rs.getString(4);//task
		s5=rs.getString(5);//ip
		s6=rs.getString(6);//dt
		
		   String query2="select owname from products where pname='"+s3+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
	       if ( rs2.next() )
		   {  
		      s7=rs2.getString(1);//user
			  if(s7.equalsIgnoreCase(user))
			  {
		
		
		%>
                    
                    <tr>
                      <td height="53"><div align="center" class="style18"><%=j%></div></td>
                      <td><div align="center" class="style18"><%=s2%></div></td>
                      <td><div align="center" class="style18"><%=s3%></div></td>
					  <td><div align="center" class="style18"><%=s4%></div></td>
					  <td><div align="center" class="style18"><%=s5%></div></td>
					  <td><div align="center" class="style18"><%=s6%></div></td>
        <%
		
	  j=j+1;}}}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
	  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
                      <p align="right"><a href="s_main.jsp" class="style3 style9">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Seller</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="s_main.jsp"><span>Seller Main</span></a></li>
            <li><a href="s_login.jsp"><span>Log Out</span></a></li>
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>