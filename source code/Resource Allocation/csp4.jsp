
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
<%@page import=" java.security.MessageDigest,databaseconnection.databasecon.*,java.sql.*"%>

<%
String minServer=null;
Connection con=null;
int minMemory=0;
//String minMem1=null;

try{
 con = databasecon.getconnection();
Statement st = con.createStatement();
ResultSet rs = null;
boolean flag=false;

String minMem = "select max(used) from server";

 rs = st.executeQuery(minMem);
if(rs.next())
{
 minMemory = rs.getInt(1);
}
st.close();
ResultSet rs1=null;
String s1 = (String)session.getAttribute("mem");
int res = Integer.parseInt(s1);
minMemory = minMemory + res;
 if(minMemory>=120)
	{
 String minMem1 = "select min(used) from server";
Statement st1 = con.createStatement();
 rs1 = st1.executeQuery(minMem1);
if(rs1.next())
{
 minMemory = rs1.getInt(1);
}
st.close();
rs1.close();
	}//if
	else
	{
minMemory = minMemory - res;
	}




System.out.println("minMemory : " + minMemory);
Statement st1 = con.createStatement();
String query="select server from server where used='"+minMemory+"' ";
ResultSet rss = st1.executeQuery(query);

if(rss.next())
	{
 minServer = rss.getString(1);
 
	}
	session.setAttribute("minServer",minServer);
	st1.close();
	rss.close();
}
catch(Exception e){e.printStackTrace();}
		String domainname = (String) session.getAttribute("dom");
		//String server = request.getParameter("server");
		session.setAttribute("minServer",minServer);
		//String days = (String)session.getAttribute("days");
String 	days = (String)session.getAttribute("pa");
System.out.println("days : " + days);
//session.setAttribute("days",days);
		int day=Integer.parseInt(days);
	/*	java.util.Date now = new java.util.Date();
	String date=now.toString();
 	String DATE_FORMAT = "yyyy-MM-dd";
 	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
 	String strDateNew1 = sdf.format(now) ;
 	Calendar p = Calendar.getInstance();
 //	p.setTime(sdf.parse(strDateNew1));
 	//p.add(Calendar.DATE, day);  // number of days to add
 	String strDateNew2 = sdf.format(p.getTime());
					*/					
				try{
System.out.println("minServer "+minServer);
		String status="Allocated";
		System.out.println("domainname " +domainname);
				/* PreparedStatement ps=con.prepareStatement("Update domainrequest set date=?,status=?,server=? where domainname='"+domainname+"' ");
				ps.setString(1,strDateNew2);
				ps.setString(2,status);
				ps.setString(3,minServer); */
String query="update domainrequest set status='"+status+"',server='"+minServer+"' where domainname='"+domainname+"'";
Statement st3 = con.createStatement();
				int x=st3.executeUpdate(query);
				
				response.sendRedirect("csp5.jsp?message=success");
				con.close();
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
					ex.printStackTrace();
				}
		
			
	
		
	
 %>
