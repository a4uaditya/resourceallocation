<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
String id=request.getParameter("id");
String temp[]=null;
temp=id.split(",",3);

String domainname=temp[0];
String days=temp[1];
session.setAttribute("days",days);
String memory=temp[2];
session.setAttribute("memory",memory);
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
	  <img src="images/db_virtualization_bg .jpg" width="960" height="300">
    	<div id="logo"></div>
        <!--  Free CSS Templates @ www.TemplateMo.com  -->
      

    </div> <!-- end of banner -->
    
    <div id="templatemo_menu">
        <ul>
             
      <li><a href="index.html" class="current"><span></span>Home</a></li>
            
      <li><a href="customerlogin.jsp"><span></span>Cloud Users Login</a></li>
            
      <li><a href="csp.jsp"><span></span>Cloud Service Provider</a></li>
            
      <li><a href="index.html"><span></span>LogOut</a></li>            
      
        </ul>   
	</div> <!-- end of menu -->

	<div id="templatemo_content_wrapper">
    	<div id="templatemo_content">
  
    	<div class="column_w210 fl">
        
        	<div class="header_01">
			<br><br><br>
			<li><a href="csp2.jsp"><strong>Cloud Sites</strong></a></li>

<br>
        <li><a href="serverstatus.jsp"><strong>Server Status</strong></a></li>
		<br>
		<li> <a href="ch_chart.jsp"><strong>ViewResource<br>AllocationStatus<br>(Using BarChart)</strong></a> </li>
		<br>
		<img src="images/dd.png" width="190">
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        
      <div class="column_w430 fl vl_divider"> 
         <h3> <font color="#FFFF00" size="4">Add A Site To Host</font></h3>
        <br>
        <table width="570" height="156" align="center" bgcolor="#A4C0BA">
          <form action="csp4.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="175" height="45"><font color="#000000" size="3"><strong>Site Name</strong></font></td>
              <td width="513"><input type="text"  name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td height="48"><font color="#000000" size="3"><strong>ServerName</strong></font></td>
              <td><select name="server" style="border: 2px #000000 solid;">
                  <option value="--Select--">-----Select Server-----</option>
                  <option value="ServerA">Server A</option>
                  <option value="ServerB">Server B</option>
                  <option value="ServerC">Server c</option>
                </select></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Enable Site" style="border: 2px #000000 solid;"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px #000000 solid;"></td>
            </tr>
          </form>
        </table>
            
       
            
    
            
       
           
        	
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
    <p>www.chennaisunday.com</p>
 
        
        <div class="margin_bottom_10"></div>
        
   
        
        <div class="margin_bottom_10"></div>
        
       
   	</div> <!-- end of footer -->
</div> <!-- end of container -->
<!--  Free CSS Template is provided by www.TemplateMo.com  -->
</body>
</html>