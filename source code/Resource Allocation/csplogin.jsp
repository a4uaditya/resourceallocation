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
var a = document.form.email.value;
var b = document.form.pass.value;

if (a.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (a.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	

if(b=="")
{
alert("Enter the password");
document.form.pass.focus();
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
           <img src="images/admin.png" width="190" >
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        <div class="column_w430 fl vl_divider">
        	
         
        <h3><font color="#FFFF00" size="3">Welcome To Cloud Login:</font></h3>
				  <br><br>
        <fieldset style="border: 1px #000000 solid;">
        <legend><font color="#ffffff" size="3"><strong>CloudLogin</strong></font></legend>
        <table width="339" align="right">
          <form action="csplogin1.jsp" method="post" name="form" onSubmit="return validation();">
            <tr> 
              <td width="156" height="46" class="paragraping"><strong><font color="#000000" size="3">UserName</font></strong></td>
              <td width="189" class="fielditem"><input type="text"  name="email" style="border: 1px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="156" height="51" class="paragraping"><strong><font color="#000000" size="3">Password</font></strong></td>
              <td width="189" class="fielditem"><input type="password"  name="pass" style="border: 1px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button" value="Login" style="border: 1px #335B63 solid;"> 
                &nbsp;&nbsp; <input type="reset" name="reset" class="button" value="Clear" style="border: 1px #000000 solid;"></td>
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