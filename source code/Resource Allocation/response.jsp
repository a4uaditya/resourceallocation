<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
</head>
<body>
<%

	    
		String str = request.getParameter("id");
		session.setAttribute("str",str);
		String[] temp;
 		String delimiter = ",";
		
 		temp = str.split(delimiter,5);
		for(int i =0; i < temp.length ; i++){
		}
				String ownerid=temp[0];
				String owneremail = temp[1];
				String managerid=temp[2];
				String manageremail = temp[3];
				String status = temp[4];
		
		try {
	

            
			Connection con=databasecon.getconnection(); 
			PreparedStatement ps=con.prepareStatement("update request set status=? where ownerid='"+ownerid+"' and managerid='"+managerid+"'");
			    
       			
       			ps.setString(1,status);
					
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("sitemanager.jsp?message=success");
			}
			else
			{
				response.sendRedirect("sitemanager.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>