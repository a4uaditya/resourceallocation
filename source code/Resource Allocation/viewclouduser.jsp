﻿<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
try{
   
   String name = null,email=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String ownerid=(String)(session.getAttribute( "id" ));
  
  
   email=(String)session.getAttribute("email");
 
   String s = "select * from ownerreg where email='"+email+"'";
   
   ResultSet rs = st.executeQuery(s);
   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cloud Computing</title>
<meta name="keywords" content="Lin Photo, free website template, XHTML CSS layout" />
<meta name="description" content="Lin Photo, free website template, free XHTML CSS layout provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="templatemo_container">
	<div id="templatemo_banner">
	  <img src="images/cloud-computing header.jpg" width="960" height="300">
    	<div id="logo"></div>
        <!--  Free CSS Templates @ www.TemplateMo.com  -->
      

    </div> <!-- end of banner -->
    
    <div id="templatemo_menu">
        <ul>
   <li><a href="index.html" class="current"><span></span>Home</a></li>
            <li><a href="customerlogin.jsp"><span></span>Cloud Users Login</a></li>
                        <li><a href="index.html"><span></span>LogOut</a></li>            
      
        </ul>   
	</div> <!-- end of menu -->

	<div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
  
    	<div class="column_w210 fl">
        
        	<div class="header_01">
			<br><br><br>
			 <li><a href="customer.jsp">Domain Register </a></li>
			<br> <br> 
			<li><a href="viewclouduser.jsp">View CloudUser Details</a></li>
			<br><br> 
			<li><a href="viewdomain.jsp">ViewDomainDetails</a></li>
			<br><br> 
			<li><a href="sitemanager1.jsp">Create Site</a></li>
			<br><br> 
			<li><a href="sitestatus.jsp">View SiteStatus</a></li>
			<br><br>
			<li><a href="userlogin.jsp">View Hosted Sites</a></li>
			
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        <div class="column_w430 fl vl_divider">
        	
          
            
			 <p align="right"> <font color="yellow" size="4"><strong><font color="#ffffff">Welcome!CloudUser:</font></strong>
          <%=email%></font> </p>
		  <br>
        <p><font color="yellow" size="3"><strong>View CloudUser Detail:</strong></font></p>
        <table align="center" width="640" style="border:1px solid #000000;">
          <tr bgcolor="#FF00CC"> 
            <th width="150" height="48"><font color="#000000" size="3">UserID</font></th>
            <th width="150"><font color="#000000" size="3">Name</font></th>
            <th width="150"><font color="#000000" size="3">EmailID</font></th>
            <th width="150"><font color="#000000"size="3">Password</font></th>
			<th width="150"><font color="#000000" size="3">PhoneNo</font></th>
			
          </tr>
          <%
			while(rs.next()){
  			%>
          <tr> 
            <td height="49" bordercolor="#6699FF"> 
              <font color="#ffffff" size="3"><%=rs.getString("id")%></font>
            </td>
            <td> 
             <font color="#ffffff" size="3"> <%=rs.getString("name")%></font>
              </td>
            <td> 
              <font color="#ffffff" size="3"><%=rs.getString("email")%></font>
            </td>
            <td> 
             <font color="#ffffff" size="3"> <%=rs.getString("pass")%></font>
            </td>
			 <td> 
             <font color="#ffffff" size="3"> <%=rs.getString("phone")%></font>
            </td>
			 
          </tr>
          <%}%>
        </table>
			
	
			<% 
}
catch(Exception e)
{
System.out.println(e);
}
%>
			
			
           
        	
        </div> <!-- end of a column -->
        
       <div class="column_w210 fl vl_divider">
        

	  
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        
        <div class="margin_bottom_20 h_divider"></div>        
        <div class="margin_bottom_20"></div>
        
        <div class="column_w920">
        
      
            

            

            
   
        
       	  <div class="margin_bottom_15"></div>
        </div>
    
    	<div class="cleaner"></div>
	</div> <!-- end of wrapper 02 -->        
    </div> <!-- end of wrapper 01 -->
    
    <div id="templatemo_footer">
    
 
        
        <div class="margin_bottom_10"></div>
        
   
        
        <div class="margin_bottom_10"></div>
        
       
   	</div> <!-- end of footer -->
</div> <!-- end of container -->
<!--  Free CSS Template is provided by www.TemplateMo.com  -->

				
</body>
</html>