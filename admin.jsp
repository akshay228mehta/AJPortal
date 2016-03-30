<%--
    Document   : AdminHomePage
    Created on : May 12, 2013, 5:28:00 PM
    Author     : Surbhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
String email = (String)session.getAttribute("admin_email");
       if(email != null)
           {
           %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome_To_Job_Portal_Zone</title>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
$("#mask").hide();
 $("#login").hide();
$("#flash1").cycle(
function()
{
 fx: 'slideToggle'
 });
});
</script>

       <style type="text/css">
.body {
        margin:0%;
}
a:link {
	color: #000066;
	text-decoration: underline;
}
a:visited {
	text-decoration: underline;
	color: #C0DCC0;
}
a:hover {
	text-decoration: none;
	color: #996666;
}
a:active {
	text-decoration: underline;
	color: #FF9999;
}
.style1 {
	font-size: 16px;
	font-weight: bold;
}
.style2 {font-size: 18px}
.style3 {color: #CBD1D9}

</style>
</head>
    <body style="margin:0px; height: 100%; width: 100%;" bgcolor="#666734"  >
        <table width="1150px" height="504" border="0" valign="top" align="center">
          <tr>
              <td height="23" colspan="3" <%--bgcolor="#666734"--%><jsp:include page="AdminHeader.jsp"/></td>
          </tr>
          <tr>
              <td width="150px" <%--bgcolor="#666734"--%>><jsp:include page="Adminmenu.jsp"/></td> 
              <td  bgcolor="#CC9966" valign="top">
                  <table border="0px" height="300px" width="900px" >
                      <%--<tr><td colspan="2">
            
              <h4 style="font-size:18px"><center>


<h2>
<script language="JavaScript1.2">

/*
Neon Lights Text
By JavaScript Kit (http://javascriptkit.com)
For this script, TOS, and 100s more DHTML scripts,
Visit http://www.dynamicdrive.com
*/

var message="Welcome to Job Portal..!!"
var neonbasecolor="black"
var neontextcolor="purple"
var flashspeed=100  //in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)
//eval("document.all.neonlight"+m).style.color=neonbasecolor
crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",1500)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()


</script>
</h2>
</center></h4>   <div align="right">
            <img src="images/midd.jpg" width="639" height="349"></div></td> </tr>--%>
          <tr bgcolor="#CC9966">
              <td bgcolor="#CC9966" width="250">

                  <div class="flash" id="flash1">
<%--<img src="image/f2.jpg" height="350px" width="402px" />
<img src="image/f3.jpg" height="350px" width="402px" />
<img src="image/f9.jpg" height="350px" width="402px" />
<img src="image/f12.jpg" height="350px" width="402px" />
<img src="image/f14.jpg" height="350px" width="402px" />
<img src="image/f15.jpg" height="350px" width="402px" />--%>
<img src="image/f18.jpg" height="350px" width="402px" />
<img src="image/f24.jpg" height="350px" width="402px" />
<img src="image/j3.jpg" height="350px" width="402px" />
<img src="image/j7.jpg" height="350px" width="402px" />
<img src="image/x5.jpg" height="350px" width="402px" />
<img src="image/p31.jpg" height="350px" width="402px" />
<%--<img src="image/x3.jpg" height="350px" width="402px" />
<img src="image/x4.jpg" height="350px" width="402px" />--%>






</div>



              </td>
          

              <td bgcolor="#CC9966" align="right" valign="top">

<%--
                   <div class="c2">
        <div class="c21"><b><font color="#006600">Top Companies:</font></b></div>
        <div class="c22"><img src="image/ad2.gif" height="520px" width="188px" /></div>
        </div>--%>


<div class="fb1" >
<div class="ff1" style="background-color:#CC9966">
<div class="ffb1"><img src="image/w7.jpg" height="50px" width="125px" />
<a href="www.android.com"><img src="image/android-logo.png" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/app_store_badge.png" height="50px" width="80px" /></a><a href="www.android.com"><img src="image/honeycomb-bee-550x550.png" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/windowsmobile_logo.png" height="50px" width="55px" /></a></div>
</div>
<div class="ff2" style="background-color:#CC9966">
<div class="ffb1"><img src="image/w8.jpg" height="50px" width="125px" />
    <a href="www.android.com"><img src="image/gmail-logo-icon.png" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/Skype_Logo.png" height="50px" width="80px" /></a><a href="www.android.com"><img src="image/nokia-ovi-store-logo.png" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/Wi-Fi Alliance.png" height="50px" width="55px" /></a>
</div>
</div>
<div class="ff2" style="background-color:#CC9966">
<div class="ffb1"><img src="image/w9.jpg" height="50px" width="125px" />
    <a href="www.android.com"><img src="image/co8.gif" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/co19.gif" height="50px" width="80px" /></a><a href="www.android.com"><img src="image/co12.gif" height="50px" width="50px" /></a><a href="www.android.com"><img src="image/co11.gif" height="50px" width="55px" /></a></div>
</div>
</div>   </td>


          </tr>
        </table>
           <tr bgcolor="white">
            <td height="23" colspan="3" <%--bgcolor="#666734"--%><jsp:include page="flash.jsp"/></td>

          </tr>

       </table>
    <jsp:include page="adminfooter.jsp"/>
</body>
</html>
<%

}
   else
       {
   out.println("plz login first");

   }
%>
