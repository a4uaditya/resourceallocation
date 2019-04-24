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
        	
          
            
			
			
			                        
		 <p align="right"> <font color="yellow" size="4"><strong><font color="#ffffff">Welcome!CloudUser:</font></strong> 
          <%=email%></font> </p>
         <p><font color="#000000" size="3"><strong>Make Payment For Domain Registration:</strong></font></p></p> 
        <p align="center"> 
          <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='yellow' size='3'><strong><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Successfully Registered Your Domain !</blink></strong></font>");
                                                       }
                                               %>
        </p>
             <fieldset style="border: 2px #000000 solid;">
        <legend><font color="#000000" size="3"><strong>Payment</strong></font></legend>
        <table width="527" align="center">
          <form action="payment1.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Web 
                Hosting Plan </strong></font></td>
              <td width="299" class="fielditem"><select name="hostingplan" style="border: 2px #000000 solid;">
                  <option value="--Select--">-----------Select----------</option>
                  <option value="Rupees5000">Rupees5000</option>
                  <option value="Rupees7000">Rupees7000</option>
                  <option value="Rupees9000">Rupees9000</option>
                </select></td></td>
            </tr>
            <tr> 

            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Domain 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Payment 
                type</strong></font></td>
              <td width="299" class="fielditem"><select name="paytype" style="border: 2px #000000 solid;">
                  <option value="--Select--">----------Select-----------</option>
                  <option value="Visa">Visa</option>
                  <option value="MasterCard">MasterCard</option>
                  <option value="AmericanExpress">AmericanExpress</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Card 
                Number</strong></font></td>
              <td width="299" class="name"><input type="password"  name="cardnumber" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Card 
                Expiration(MM/YY)</strong></font></td>
              <td width="299" class="name"><input type="text"  name="cardexpire" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>CVV2/CID</strong></font></td>
              <td width="299" class="name"><input type="password"  name="cid" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Pay" style="border: 2px #000000 solid;"> 
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