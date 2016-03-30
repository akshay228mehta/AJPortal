<%-- 
    Document   : cvframe
    Created on : Aug 16, 2013, 2:10:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<table height="400px" width="700px" align="center" >
<tr> <td colspan="3">
<div class="fresume" style="width:700px">
<h4 style="font-size:18pxpx"><center>


<h2>
<script language="JavaScript1.2">

/*
Neon Lights Text
By JavaScript Kit (http://javascriptkit.com)
For this script, TOS, and 100s more DHTML scripts,
Visit http://www.dynamicdrive.com
*/

var message="How to write that Winning Resume for your Dream job?"
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
</center></h4>
<marquee><font color="#FF0000">Important Tips on Emailing Resumes : Find out how to get more calls from each of your applications.. !!</marquee></font></br>

&nbsp;If you are a new entrant in the job market, you need to perfect your resume before applying for your 1st job.</br>

&nbsp;Since you are fresh out of college, use your education as your strong point.
<ul type="disc">
<li>Aggregate%</li>
<li> CGPA</li>
<li> club participation</li></ul>
&nbsp;"Do you really need a resume? What should I write in my resume?"<br />
<font color="#512D95">Check out these sample resumes* to understand the kind of resumes, employers are looking for--<br/> </font><font color="#FF0000"><center>Download samples in word format....</center></font><a href="r.jsp"><img src="images/resbtn.png" align="right" /></a>
</div>
<div class="right" style="width:700px">

<div class="rightb3"></div>
</div>
</td>
</tr>
</table>
