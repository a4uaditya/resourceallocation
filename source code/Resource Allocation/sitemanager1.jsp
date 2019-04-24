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
var a = document.form.domainname.value;
var b = document.form.file.value;
if(a=="")
{
alert("Enter the domain name");
document.form.domainname.focus();
return false;
}
if(b=="")
{
alert("Upload the file");
document.form.file.focus();
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

            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        <div class="column_w430 fl vl_divider">
        	
          
            
			
			
			                        
<p align="right"> <font color="yellow" size="4"><strong><font color="#ffffff">Welcome!CloudUser:</font></strong> 
          <%=email%></font> </p>
		  <br>
				
				<br>
				
				 <p><font color="#000000" size="3"><strong>Create Site:</strong></font></p>
        <table width="570" align="center" bgcolor="#FF00CC">
          <form name="form" enctype="multipart/form-data" method="post" action="sitemanager2.jsp" onSubmit="return validation();">
            <tr> 
              <td height="36"><font color="#000000"><strong>Site Name</strong></font></td>
              <td><input type="text" name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td height="46"><font color="#000000"><strong>Browse File</strong></font></td>
              <td><input type="file" name="file" style="border: 2px #000000 solid;"> <font color="#000000"><strong>(Browse 
                and Upload Html files)</strong></font></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="sub" value="Submit" style="border: 2px #000000 solid;"> <input type="reset" name="clear" value="Clear" style="border: 2px #000000 solid;"> 
              </td>
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
    
 
        
        <div class="margin_bottom_10"></div>
        
   
        
        <div class="margin_bottom_10"></div>
        
       
   	</div> <!-- end of footer -->
</div> <!-- end of container -->
<!--  Free CSS Template is provided by www.TemplateMo.com  -->
</body>
</html>