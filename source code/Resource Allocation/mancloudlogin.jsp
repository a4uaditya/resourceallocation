

<html>
	<head>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>
			Web Hosting On Cloud
		</title>
		<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="style.css" />
	
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
		
<div id="bg1"></div>
		<div id="bg2"></div>
		
<div id="outer"> 
  <div id="header"> 
    <div id="logo"> 
      <h1><font size="6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
        Web Hosting On Cloud</font> </h1>
    </div>
  </div>
  <div id="main"> 
    <div id="nav"> 
      <ul>
        <li class="first"><a href="index.html"><strong>Home</strong></font></a> 
        </li>
        <li> <a href="userlogin.jsp"><strong>User</strong></a> </li>
        <li> <a href="ownerlogin.jsp"><strong>Site Owner</strong></a> </li>
        <li> <a href="csp.jsp"><strong>Service Provider/Admin</strong></a> </li>
        <li> <a href="index.html"><strong>LogOut</strong></a> </li>
      </ul>
      <br class="clear" />
    </div>
    <div id="content"> 
      <div class="box"> 
        <h3>welcome To Cloud Login:</h3>
        <fieldset style="border: 5px #CCCCCC solid;">
        <legend><font color="#336699"><strong></strong></font></legend>
        <table width="339" align="center">
          <form action="managerlogin.jsp" method="post" name="form" onSubmit="return validation();">
            <tr> 
              <td width="156" height="46" class="paragraping"><strong><font color="#000000">UserName</font></strong></td>
              <td width="189" class="fielditem"><input type="text"  name="email"></td>
            </tr>
            <tr> 
              <td width="156" height="51" class="paragraping"><strong><font color="#000000">Password</font></strong></td>
              <td width="189" class="fielditem"><input type="password"  name="pass"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button" value="Login"> 
                &nbsp;&nbsp; <input type="reset" name="reset" class="button" value="Clear"></td>
            </tr>
          </form>
        </table>
        </fieldset>
        <br>
      </div>
    </div>
    <br class="clear"/>
  </div>
</div>
		
	</body>
</html>