<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("id");
String b = request.getParameter("name");
String c = request.getParameter("pass");
String d = request.getParameter("email");
String e = request.getParameter("phone");


java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into ownerreg(id,name,pass,email,phone,date) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+strDateNew1+"')");
response.sendRedirect("reg1.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
