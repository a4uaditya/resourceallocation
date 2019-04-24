<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>


<%


		String str = (String)(session.getAttribute( "str" ));
		String[] temp;
 		String delimiter = ",";
		
 		temp = str.split(delimiter,3);
		for(int i =0; i < temp.length ; i++){
		}
				String ownerid=(String)(session.getAttribute( "id" ));
				String owneremail=(String)session.getAttribute("email");
				String managerid=temp[0];
				String managername=temp[1];
				String manageremail = temp[2];
				String domainname=request.getParameter("domainname");
				String message=request.getParameter("message");
			
        	    String status = "waiting for approve"; 
ResultSet rs=null;
PreparedStatement psmt1=null;


java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

try{

Connection con=databasecon.getconnection();

String sql=null;

psmt1=con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?)");
psmt1.setString(1,ownerid);
psmt1.setString(2,owneremail);
psmt1.setString(3,managerid);
psmt1.setString(4,manageremail);
psmt1.setString(5,status);
psmt1.setString(6,strDateNew);
psmt1.setString(7,domainname);
psmt1.setString(8,message);
psmt1.setString(9,managername);

int s = psmt1.executeUpdate();
response.sendRedirect("customer.jsp?Message Sent Successfully To Manager ");

con.close();
psmt1.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>

</body>
</html>