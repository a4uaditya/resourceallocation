<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
				String domainname=(String)(session.getAttribute( "domainname" ));
				String hostingplan=request.getParameter("hostingplan");
				String paytype=request.getParameter("paytype");
				String cardnumber=request.getParameter("cardnumber");
				String cardexpire=request.getParameter("cardexpire");
				String cid=request.getParameter("cid");
				String pay="paied";
				
				try{
					Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update domainrequest set hostingplan=?,paytype=?,cardnumber=?,cardexpire=?,cid=?,pay=? where domainname='"+domainname+"'");
				ps.setString(1,hostingplan);
				ps.setString(2,paytype);
				ps.setString(3,cardnumber);
				ps.setString(4,cardexpire);
				ps.setString(5,cid);
				ps.setString(6,pay);
				int x=ps.executeUpdate();
				
				response.sendRedirect("payment2.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}

		
	
 %>
