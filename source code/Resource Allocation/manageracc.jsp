

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

var b = document.form.email.value;
var b1 = document.form.user.value;
var c = document.form.pass.value;
var d= document.form.repass.value;
var e= document.form.quest.value;
var f= document.form.answer.value;

if(b=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (b.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (b.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(c=="")
{
alert("Enter the UserName");
document.form.user.focus();
return false;
}
if(d=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(e=="")
{
alert("Re-Enter the Password");
document.form.repass.focus();
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
    <div style="position:absolute; left:650px; top:220px;"><img src="images/cloud.jpeg" width="200" height="150"></div>
    <div id="content"> 
      <div class="box"> 
        <h3>Create an Account 
          <p align="right"> <a href="mancloudlogin.jsp"><img src="images/loginhere.gif"> 
            </a> </p>
        </h3>
        <fieldset style="border: 12px #CCCCCC solid;">
        <legend><font color="#336699" size="4"><strong></strong></font></legend>
        <table width="527" align="center">
          <form action="insertmanageracc.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>EmailAddress</strong></font></td>
              <td width="299" class="name"><input type="text"  name="email"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Create 
                a username</strong></font></td>
              <td width="299" class="name"><input type="text"  name="user"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Create 
                your password</strong></font></td>
              <td width="299" class="email"><input type="password"  name="pass"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Re-enter 
                your password</strong></font></td>
              <td width="299" class="phone"><input type="password"  name="repass"></td>
            </tr>
            <tr> 
              <td width="216" height="51" class="paragraping"><strong><font color="#000000">Select 
                a security question</font></strong></td>
              <td width="299" class="fielditem"><select name="quest">
                  <option value="--Select--">---------Select--------</option>
                  <option value="SiteOwner">What was your Chilhood Nicknname?</option>
                  <option value="SiteManger">What was the name of your first school?</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Enter 
                your answer</strong></font></td>
              <td width="299" class="phone"><input type="text"  name="answer"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Create"> 
                <input type="reset" name="reset" class="button2" value="Clear"></td>
            </tr>
          </form>
        </table>
        </fieldset>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
		
	</body>
</html>