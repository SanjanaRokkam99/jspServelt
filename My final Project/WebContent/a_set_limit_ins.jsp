<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
          
<%
					
	try {
		String tn = "Access Limit";
		String lim = request.getParameter("limit");
		int limit= Integer.parseInt(lim);
						
		    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		    SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		    Statement st22 = connection.createStatement();
			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			            String query1="select * from access_limit "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
								Statement st3 = connection.createStatement();
								String query3 ="update access_limit set count="+limit+" ";
								st3.executeUpdate (query3);
								
								%> Successfully Updated Access Limit
								
								<%							
					   }
					   else
					   {
					  
					  PreparedStatement ps=connection.prepareStatement("insert into access_limit (name,count) values(?,?)");
						ps.setString(1,tn);
						ps.setString(2,lim);
						
						
						int x=ps.executeUpdate();
						if(x>0){
						
								out.println("Successfully Set Access Limit");
															
					           
							   }
					   }
	     }
		 catch (Exception e) 
					{
						out.println("Check the Limit Entered, Write only Integer Values");
						e.printStackTrace();
					}
				
			
			
%>		  
<p align="left"><a href="a_set_limit.jsp">Back</a></p>