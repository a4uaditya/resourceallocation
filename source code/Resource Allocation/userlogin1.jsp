
<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<body bgcolor=" #6A4D8A">
<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
 
   String domainname = request.getParameter("domainname");
   
      
   String s = "select * from domainrequest where domainname='"+domainname+"' and status='Allocated'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
  		response.sendRedirect(rs.getString("first"));
   }
   else
  response.sendRedirect("host.jsp?Not Hosted");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>
   </body>
</html>