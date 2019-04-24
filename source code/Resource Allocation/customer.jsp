<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%

   
   String name = null,email=null;
   
   String ownerid=(String)(session.getAttribute( "id" ));
  
  
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
var a = document.form.name.value;
var b = document.form.domain.value;
if(a=="")
{
alert("Enter the domain name");
document.form.name.focus();
return false;
}
if(document.form.domain.selectedIndex==0)
{
alert("Select the domain");

document.form.domain.focus();

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
		  <br>
				
				<br>
				
				  <p><font color="#000000" size="4"><strong>Domain Name Options:</strong></font></p>
 <br>
        <br>
        <fieldset style="border: 2px #ffffff solid;">
        <legend><font color="#336699"><strong></strong></font></legend>
        <table width="570" align="center" bgcolor="#FF00CC">
          <form action="checksite1.jsp" method="post" name="form" onSubmit="return validation();">
            <font color="#"><strong><font color="#ffffff">I want to register 
            a domain for my first year of hosting.</font></strong></font> 
            <tr> 
              <td width="69" height="46" class="paragraping" align="center"><strong><font color="#000000">www.</font></strong></td>
              <td width="149" class="fielditem"><input type="text"  name="name" style="border: 2px #000000 solid;"></td>
              <td width="466" class="fielditem"><select name="domain" style="border: 2px #000000 solid;">
                  <option value="--Select--"></option>
                  <option value=".com">.com</option>
                  <option value=".net">.net</option>
                  <option value=".org">.org</option>
                  <option value=".biz">.biz</option>
                  <option value=".info">.info</option>
                  <option value=".us">.us</option>
                </select></td>
            </tr>
            <tr> 
              <td></td>
              <td align="center"><input type="submit" name="B1" class="button" value="SearchDomain" style="border: 2px #000000 solid;"></td>
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