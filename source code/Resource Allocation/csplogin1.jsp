<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String cspname = null,cspemail=null;
   String email = request.getParameter("email");
   String pass = request.getParameter("pass");
   
      
   String s = "select * from cspacc where email='"+email+"' and password='"+pass+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   session.setAttribute("cspname",rs.getString("name"));
   session.setAttribute("cspemail",rs.getString("email"));
  		response.sendRedirect("csp1.jsp");
     
   }
   else
   out.print("Please check your login credentials");
   }

   catch(Exception x)
   {
   out.println(x);
   }
   %>