<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   
   String name = request.getParameter("name");
   String domain = request.getParameter("domain");
   String dn="www."+name+domain;
	
	String status=null;	
   String ownerid=(String)(session.getAttribute( "id" ));  
   String email=(String)session.getAttribute("email");

      
   String s = "select * from domainrequest where domainname='"+dn+"' ";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
   		session.setAttribute("domainname",rs.getString("domainname"));		
		response.sendRedirect("customer1.jsp");

   }
   else{
		session.setAttribute("domainname",dn);
		response.sendRedirect("customer2.jsp");	
	}
   
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>