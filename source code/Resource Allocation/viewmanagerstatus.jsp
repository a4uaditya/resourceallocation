
<%@ page  language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
try{
   
   String name = null,email=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String ownerid=(String)(session.getAttribute( "id" ));
  
  
   email=(String)session.getAttribute("email");
 
   String s = "select * from request where owneremail='"+email+"'";
   
   ResultSet rs = st.executeQuery(s);
   %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MORPHOSYS: Efficient Colocation of QoS-Constrained <br>
        Workloads in the Cloud</title>
<meta name="Description" content="FCT01 by SymiSun* is an open source XHTML 1.0 and CSS valid template, released under the creative commons license." />
<meta name="Keywords" content="symisun, symisun*, free css template, valid xhtml template, open source template, free xhtml template, ftc01, symisun 01" />
<link rel="stylesheet" media="screen" href="style.css" />
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" /><!-- custom favicon -->
<meta name="Author" content="SymiSun* - symisun.com" />
<meta name="Robots" content="index,follow" />
<meta http-equiv="imagetoolbar" content="no" /><!-- disable IE's image toolbar -->
</head>

<body>
<div id="daddy">
	<div id="header">
		<div id="logo"><a href="./"><img src="images/logo.gif" alt="Your Company Logo" width="318" height="85" /></a><span id="logo-text"><a href="./">MORPHOSYS</a></span></div><!-- logo -->
		<div id="menu">
			<ul>
				<li><a href="index.html" id="active">Home</a></li>
				
        <li> <a href="customerlogin.jsp"><strong>Customer Login</strong></a> </li>
        <li> <a href="csp.jsp"><strong>Service Provider/Admin</strong></a> </li>
        <li> <a href="index.html"><strong>LogOut</strong></a> </li>
			</ul>
		</div><!-- menu -->
		<div id="ticker">
			
		</div><!-- ticker -->
		<div id="headerimage">
			
			<div id="icons">
					</div><!-- icons -->
			
      <div id="slogan"><strong>MORPHOSYS: Efficient Colocation of QoS-Constrained <br>
        Workloads in the Cloud</strong></div>
		</div>
		<!-- headerimage -->
	</div>
	<!-- header -->
	<div id="content">
		<div id="cA">
			<div class="Ctopleft"></div>
			<h3>SEARCH</h3>
			<div id="search">
				<input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
			</div><!-- search -->
			<p>&nbsp;</p>
			<h3>Cloud Computing</h3>
			<p class="testimonial"><img src="images/cloud-db1.jpg" alt="Skuola Screenshot Piece" width="87" height="100" class="leflo" />Cloud computing in general and Infrastructure as a Service (IaaS) in particular have emerged as compelling paradigms for the deployment of distributed applications and
services on the Internet due in large to the maturity and wide
adoption of virtualization<br /><strong></strong></p>
			<p class="testimonial"><img src="images/11.png" alt="The Music Magazine Screenshot Piece" width="87" height="100" class="leflo" />
			 <li><a href="customer.jsp">Domain Register</a> </li>
        <li><a href="viewmanager.jsp">View ManagerDetails</a></li>
        <li><a href="viewmanagerstatus.jsp">View ManagerStatus</a></li>
        <li><a href="sitestatus.jsp">View site Status</a> </li>
			
			</p>
		</div><!-- cA -->
		<div id="cB">
			<div class="Ctopright"></div>
			<div id="cB1">
			 <p align="right"> <font color="#FF0000" size="4"><strong><font color="#000000"><img src="images/37.png" width="50" height="50">WelcomeSiteOwner!</font></strong>&nbsp;&nbsp; 
          <%=email%>
          </font> </p>
        <p><strong><font color="#000000">View ManagerStatus:</font></strong></p>
        <table align="center" width="600" style="border:5px solid #335B63;">
          <tr bgcolor="#335B63"> 
            <th width="150" height="44"><font color="#FFFFFF">CustomerId</font></th>
            <th width="150"><font color="#FFFFFF">ManagerName</font></th>
            <th width="150"><font color="#FFFFFF">ManagerEmailid</font></th>
            <th width="150"><font color="#FFFFFF">DomainName</font></th>
            <th width="150"><font color="#FFFFFF">Status</font></th>
          </tr>
          <%
			while(rs.next()){
  			%>
          <tr> 
            <td height="49"> 
              <%=rs.getString("owneremail")%>
            </td>
            <td> 
              <%=rs.getString("managername")%>
            </td>
            <td> 
              <%=rs.getString("manageremail")%>
            </td>
            <td> 
              <%=rs.getString("domainname")%>
            </td>
            <td> <font color="#FF0000"><strong> 
              <%=rs.getString("status")%>
              </strong></font> </td>
          </tr>
          <%}%>
        </table>
				
			</div><!-- cB1 -->
			<!-- cB2 -->
		</div><!-- cB -->
		<div class="Cpad">
			<br class="clear" /><div class="Cbottomleft"></div><div class="Cbottom"></div><div class="Cbottomright"></div>
		</div><!-- Cpad -->
	</div><!-- content -->
	<div id="properspace"></div><!-- properspace -->
</div><!-- daddy -->
<div id="footer">
	<div id="foot">
		<div id="foot1"></div><!-- foot1 -->
		<div id="foot2">
			<span class="valid"> 
		</div><!-- foot1 -->
	</div><!-- foot -->
</div><!-- footer -->
	<% 
}
catch(Exception e)
{
System.out.println(e);
}
%></body>
</html>
