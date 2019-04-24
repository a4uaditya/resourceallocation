
<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%

   
   String name = null,email=null;
   name=(String)(session.getAttribute( "name" ));
   String ownerid=(String)(session.getAttribute( "id" ));
   String domainname=(String)(session.getAttribute( "domainname" ));
  
   email=(String)session.getAttribute("email");

   %>
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
var a = document.form.plan.value;
var b = document.form.memory.value;
var c = document.form.companyname.value;
var d = document.form.streetaddress.value;
var e = document.form.city.value;
var f = document.form.country.value;
var g = document.form.phone.value;

if(document.form.plan.selectedIndex==0)
{
alert("Select the Plan");

document.form.plan.focus();

return false;
}
if(document.form.memory.selectedIndex==0)
{
alert("Select the Memory");

document.form.memory.focus();

return false;
}

if(c=="")
{
alert("Enter the companyname");
document.form.companyname.focus();
return false;
}
if(d=="")
{
alert("Enter the streetaddress");
document.form.streetaddress.focus();
return false;
}
if(e=="")
{
alert("Enter the city");
document.form.city.focus();
return false;
}
if(f=="")
{
alert("Enter the country");
document.form.country.focus();
return false;
}
if(g=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(g))
    {
        alert("Please enter the Correct Phone number");
			document.form.phone.focus();
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
        	
          
            
			
			
			                        
		 <p align="right"> <font color="yellow" size="4"><strong><font color="#ffffff">Welcome!CloudUser:</font></strong>
          <%=email%></font> </p>
        <p><font color="#000000" size="4"><strong>Domain Registration:</strong></font></p>

        <fieldset style="border: 2px #000000 solid;">
        <legend><font color="#000000" size="3"><strong>Register</strong></font></legend>
        <table width="527" align="center">
          <form action="customer3.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong> 
                Customer</strong></font></td>
              <td width="299" class="name"><input type="text"  name="siteowner" value="<%=email%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Domain 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>SLA Plan</strong></font></td>
              <td width="299" class="fielditem"><select name="plan" style="border: 2px #000000 solid;">
                  <option value="--Select--">---------Select---------</option>
                  <option value="90">3 month</option>
                  <option value="180">6 month</option>
                  <option value="365">1 year</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Choose Memory</strong></font></td>
              <td width="299" class="fielditem"><select name="memory" style="border: 2px #000000 solid;">
                  <option value="--Select--">---------Select---------</option>
                  <option value="10">10 MB</option>
                  <option value="20">20 MB</option>
                  <option value="30">30 MB</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Company 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="companyname" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Street 
                Address</strong></font></td>
              <td width="299" class="name"><input type="text"  name="streetaddress" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>City</strong></font></td>
              <td width="299" class="name"><input type="text"  name="city" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Country</strong></font></td>
              <td width="299" class="name"><input type="text"  name="country" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Phone</strong></font></td>
              <td width="299" class="name"><input type="text"  name="phone" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Continue" style="border: 2px #335B63 solid;"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px #000000 solid;"></td>
            </tr>
          </form>
        </table>
        </fieldset>
			
			
			
			
			
           
        	
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