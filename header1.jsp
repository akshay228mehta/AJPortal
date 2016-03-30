<%--
    Document   : header
    Created on : Aug 13, 2013, 1:04:56 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style>

p#socialicons img{ /* 1st set of icons. Rotate them 360deg onmouseover and out */
-moz-transition: all 0.8s ease-in-out;
-webkit-transition: all 0.8s ease-in-out;
-o-transition: all 0.8s ease-in-out;
-ms-transition: all 0.8s ease-in-out;
transition: all 0.8s ease-in-out;
}

p#socialicons img:hover{
-moz-transform: rotate(360deg);
-webkit-transform: rotate(360deg);
-o-transform: rotate(360deg);
-ms-transform: rotate(360deg);
transform: rotate(360deg);
}

</style>
        <style>
#menu
{
}
#menu a:link
{text-decoration:none;
color:#000000;
}
#menu a:hover
{text-decoration:underline;
background-color:#FF9933;
color:#FFFFFF;
border-radius:8px;
font-size:24px;
}


.sea
{
    height: 30px;
    width: 90px;
    background: url(images/sea2.jpg);
}
.sea1
{
    height: 20px;
    width:30px;
    background: url(image/s00.png);
    background-repeat: no-repeat;
}
</style>



 <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="js/jquery.waterwheelCarousel.min.js"></script>

<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="jquery.easing.1.3.js"></script>
<script type="text/javascript" src="SpryAssets/SpryAccordion.js" ></script>
<link rel="stylesheet" href="css/index.css" type="text/css" />
<link href="SpryAssets/SpryAccordion.css" rel="stylesheet" type="text/css" />
 <script src="/js/jquery.js" type="text/javascript"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/soft-white-backgrounds-wallpapers.jpg">
        <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

   <table height="50px" width="1150px" align="center" border="0px" cellspacing="0px" cellpadding="0px" bgcolor="#E1E1E1" background="images/hed2.jpg">
<tr>
<td style="font-size:18px" colspan="3" align="center">
<div id="menu">
<a href="index.jsp" style="color:#FFFFFF; text-decoration:none"><b> Home </b></a>
&nbsp;&nbsp; |
<a href="about.jsp" style="color:#FFFFFF; text-decoration:none"> <b> About us </b></a>
&nbsp;&nbsp; |
<a href="interview.jsp" style="color:#FFFFFF; text-decoration:none;"> <b> Interview Tips </b></a>
 &nbsp;&nbsp; | <a href="contact.jsp" style="color:#FFFFFF; text-decoration:none"> <b> Contact us </b></a> |
  <a href="cv.jsp" style="color:#FFFFFF; text-decoration:none"> <b> CV Builder </b></a>

</div>
</td>
</tr >
   </table>

<table height="80px" width="1150px" align="center" border="0px" cellspacing="0px" cellpadding="0px" bgcolor="#EEEEEE">

<tr>

 <td width="200px" align="center" valign="top">
     <img src="images/images (7).jpg" height="80px" width="200px" title="LOGO" alt="LOGO"/> </td>
 <form action="aftersearch.jsp">
 <td width="150" style="padding-top:20px" valign="top" align="center"><select name="type"><option> Job By Type </option>
     <%
config c =new config();
   Connection con=c.getcon();
String Query5= "select * from jobdetail";

   Statement stmt5=con.createStatement();
  ResultSet rs5=stmt5.executeQuery(Query5);
  while(rs5.next())
      {
      String p = rs5.getString("type");
      //String name=rs1.getString("name");
%>



<option> <% out.print(p); %></option>


<%--<option>Job by Industry</option>
<option>Job by Function</option>
<option>Job by Location</option><option>Job by Industry</option>
--%>
<%
}
%>
</select>
</td>


<td width="150" style="padding-top:20px" valign="top" align="center">
    <select style="padding-left:20px" name="exp">
        <option> Experience </option>
    <%

String Query6= "select * from jobdetail";
Statement stmt6=con.createStatement();
ResultSet rs6=stmt6.executeQuery(Query6);
  while(rs6.next())
      {
      String exp = rs6.getString("expyr");
      //String name=rs1.getString("name");
%>

<option><% out.print( exp );%></option>

<%--<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>--%>
<%
}
%>
</select>
</td>
<td width="150" style="padding-top:20px" valign="top" align="center">
    <select style="padding-left:30px" name="city">
        <option> City </option>
    <%

String Query7= "select * from jobdetail";

   Statement stmt7=con.createStatement();
  ResultSet rs7=stmt7.executeQuery(Query7);
  while(rs7.next())
      {
      String cit = rs7.getString("city");
      //String name=rs1.getString("name");
%>

<option><%out.print(cit);%></option>

<%--<option>Jaipur</option>
<option>Mumbai</option>
<option>Ajmer</option>
<option>Pune</option>
<option>Delhi</option>--%>

<%
}
%>
</select>
</td>
<td width="150" style="padding-top:20px" valign="top" >
    <select style="padding-left:30px" name="salary">
        <option> Salary </option>
    <%

String Query8= "select * from jobdetail";

   Statement stmt8=con.createStatement();
  ResultSet rs8=stmt8.executeQuery(Query8);
  while(rs8.next())
      {
      String s = rs8.getString("salary");
      //String name=rs1.getString("name");
%>

<option><% out.print(s);%></option>

<%--<option>20,000 Rs</option>
<option>50,000 Rs</option>
<option>75,000 Rs</option>
<option>1,00,000 Rs</option>
<option>1,20,000 RS</option>--%>

<%
}
%>
</select>
</td>
<td width="150" style="padding-top:20px" valign="top" align="center">


    <button type="value" value="submit" class="sea"></button>

</td>
 </form>
<td  align="right" valign="top" style="padding-top:0px">
<p id="socialicons">
    <img src="images/facebook.png" border="0" height="40px" width="40px" title="Facebook"/>
    <img src="images/twitter.png" border="0" height="40px" width="40px" title="Twitter" />
    <img src="images/yahoo.png"  border="0" height="40px" width="40px" title="Yahoo" /> </p>
<!-- <td align="right" valign="top" style="padding-top::30px"> <img src="images/facebook.png" height="30px" width="30px"> <img src="images/twitter.png" height="30px" width="30px" /> <img src="images/yahoo.png" height="30px" width="30px" />--> <br>
<form action="aftergo.jsp">

    <input type="text" placeholder="Job Type" name="type" />
    <button type="value" value="submit" class="sea1" title="Search"></button>
</form>
</td>

</tr>
</table>


