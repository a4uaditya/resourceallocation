<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
try{
   
   String name = null,cspemail=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String cspname=(String)(session.getAttribute( "cspname" ));
  
  
   cspemail=(String)session.getAttribute("cspemail");
 
   String s = "select * from domainrequest";
   
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
			<br><br>
			<li><a href="csp2.jsp"><strong>Cloud Sites</strong></a></li>

<br>
        <li><a href="serverstatus.jsp"><strong>Server Status</strong></a></li>
		<br>
		<li> <a href="ch_chart.jsp"><strong>ViewResource<br>AllocationStatus<br>(Using BarChart)</strong></a> </li>
		<br>
           <img src="images/hosting.jpg" width="190" >
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        
      <div class="column_w430 fl vl_divider"> 
        <h3><font color="#FFFF00" size="3">Welcome Hosting Sites</font></h3>
				  <br>
        <p><strong><font color="#FFFF00" size="3">View Server (Resource Allocation)Process:</font></strong></p>
		<br>
        <table width="683" height="109" align="center" style="border:1px solid #000000;">
          <tr bgcolor="#FF00CC"> 
            <th width="150" height="50"><font color="#000000" size="3">HostSiteNames</font></th>
            <th width="150"><font color="#000000" size="3">Date</font></th>
			 <th width="150"><font color="#000000" size="3">ServiceLevelAgreement</font></th>
            <th width="150"><font color="#000000" size="3">Used</font></th>
            <th width="150"><font color="#000000" size="3">Allocated</font></th>
            <th width="150"><font color="#000000" size="3">ServerName</font></th>
          </tr>
          <%
			while(rs.next()){
  			%>
          <tr> 
            <td height="51"> 
              <font size="3"><%=rs.getString("domainname")%></font>
            </td>
            <td> 
            <font size="3">  <%=rs.getString("date")%></font>
            </td>
			<td align="center"> 
            <font size="3">  <%=rs.getString("plan")%>days</font>
            </td>
            <td> 
             <font size="3"> <%=rs.getString("used")%></font>
              MB </td>
            <td> 
             <font size="3"> <%=rs.getString("memory")%></font>
              MB </td>
            <td> 
             <font size="3"> <%=rs.getString("server")%></font>
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