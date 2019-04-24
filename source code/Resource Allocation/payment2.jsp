<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cloud Computing</title>
<meta name="keywords" content="Lin Photo, free website template, XHTML CSS layout" />
<meta name="description" content="Lin Photo, free website template, free XHTML CSS layout provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function validation()
{
var a = document.form.hostingplan.value;
var b = document.form.paytype.value;
var c = document.form.cardnumber.value;
var d = document.form.cardexpire.value;
var e = document.form.cid.value;


if(document.form.hostingplan.selectedIndex==0)
{
alert("Select the hostingplan");

document.form.hostingplan.focus();

return false;
}
if(document.form.paytype.selectedIndex==0)
{
alert("Select the paytype");

document.form.paytype.focus();

return false;
}

if(c=="")
{
alert("Enter the cardnumber");
document.form.cardnumber.focus();
return false;
}


if(d=="")
{
alert("Enter the cardexpiration date and month");
document.form.cardexpire.focus();
return false;
}
if(f=="")
{
alert("Enter the CVV2/CID number");
document.form.cid.focus();
return false;
}

}
</script>
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
            <li><a href="csp.jsp"><span></span>Cloud Service Provider</a></li>
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
			<br><br><br>
           <img src="images/hosting.jpg" width="180">
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        <div class="column_w430 fl vl_divider">
        	
          
            
			
			
			                        
		         <p align="center"> 
          <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='yellow' size='3'><strong><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Successfully Registered Your Domain !</blink></strong></font>");
                                                       }
                                               %>
        </p>
                      
        	
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