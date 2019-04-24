<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%

		String server=(String)session.getAttribute("minServer");
		String memory=(String)session.getAttribute("mem");
		int newmemory=Integer.parseInt(memory);
		Statement st = null;
		ResultSet rs1=null;
	
	try{
		
			Connection	con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select * from server where server='"+server+"'";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				int used=0;
				used=rs1.getInt("used")+newmemory;
				
				try{
					Connection	con2=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update server set used=? where server='"+server+"'");
				ps.setInt(1,used);
				int x=ps.executeUpdate();
				
				response.sendRedirect("csp6.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
			}	
	}
	catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
	
 %>
