<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	
	java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

	ResultSet rs1=null;
	int n=0;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(id) from ownerreg";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		session.setAttribute("id",n);
		}
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
var a = document.form.id.value;
var b = document.form.name.value;
var b1 = document.form.pass.value;
var c = document.form.email.value;
var d= document.form.phone.value;



if(a=="")
{
alert("Enter Your Id");
document.form.id.focus();
return false;
}
if(b=="")
{
alert("Enter the Name");
document.form.name.focus();
return false;
}
if(b1=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(c=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (c.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(d=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(d))
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
           <img src="images/cloud user reg.jpg" width="180">
            </div>
            
			

                        

            
         
                        
            
            
        
        	<div class="cleaner"></div>
        </div> <!-- end of a column -->
        

        <div class="column_w430 fl vl_divider">
        	
          
            
			
			
			                        
<h3><font size="4" color="#FFFF33">CloudUsers Registration</font></h3>
				<br>
				
				 <p align="center"> 
          <%
                                                       String message=request.getParameter("Message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='yellow' size='+1'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered Successfully !</blink></font>");
                                                       }
                                               %>
        </p>
        <fieldset style="border: 2px #000000 solid;">
        <legend><font color="#000000" size="4"><strong>Registration</strong></font></legend>
        <table width="366" align="center">
          <form action="reginsert.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Id</strong></font></td>
              <td width="172" class="id"><input type="text"  name="id" value="<%=n%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>UserName</strong></font></td>
              <td width="172" class="name"><input type="text"  name="name" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>Password</strong></font></td>
              <td width="172" class="name"><input type="password"  name="pass" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>EmailId</strong></font></td>
              <td width="172" class="email"><input type="text"  name="email" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="#ffffff" size="3"><strong>PhoneNo</strong></font></td>
              <td width="172" class="phone"><input type="text"  name="phone" style="border: 2px #000000 solid;"></td>
            </tr>
           
            <tr> 
              <td></td>
              <td> <font color="yellow"> 
                <%=strDateNew1%>
                </font> </td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Register" style="border: 2px #000000 solid;"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px #000000 solid;"></td>
            </tr>
          </form>
          <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>
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