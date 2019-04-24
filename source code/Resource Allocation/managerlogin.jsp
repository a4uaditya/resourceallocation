<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String name = null;
   String email = request.getParameter("email");
   String pass = request.getParameter("pass");
   
      
   String s = "select * from cspacc where email='"+email+"' and password='"+pass+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   //session.setAttribute("email",rs.getString("email"));
   //session.setAttribute("id",rs.getString("id"));
  
   %>
   
   <jsp:forward page="checksite.jsp"/>
   
   <%
   
   }
   else
   out.print("Please check your login credentials");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>