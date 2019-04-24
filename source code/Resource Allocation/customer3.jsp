<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("siteowner");
String b = request.getParameter("domainname");
String c = request.getParameter("plan");
String d = request.getParameter("memory");
String e = "processing";
String f = request.getParameter("companyname");
String g = request.getParameter("streetaddress");
String h = request.getParameter("city");
String i = request.getParameter("country");
String j = request.getParameter("phone");
String used="0";
String server="processing";
String index="nill";
session.setAttribute("siteowner",a);
session.setAttribute("domainname",b);
java.util.Date now = new java.util.Date();
	String date=now.toString();
 	String DATE_FORMAT = "yyyy-MM-dd";
 	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
 	String strDateNew1 = sdf.format(now) ;
 	Calendar p = Calendar.getInstance();
 	p.setTime(sdf.parse(strDateNew1));
 	p.add(Calendar.DATE, 30);  // number of days to add
 	String strDateNew2 = sdf.format(p.getTime());

try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into domainrequest values('"+index+"','"+index+"','"+index+"','"+index+"','"+index+"','"+index+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+strDateNew1+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+used+"','"+server+"','"+index+"')");
response.sendRedirect("payment.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
