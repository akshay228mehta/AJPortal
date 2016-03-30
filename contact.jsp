<%-- 
    Document   : contact
    Created on : Aug 16, 2013, 1:57:02 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header1.jsp"%>

<style type="text/css">
.shadowblockmenu{
font-weight: bold;
font-size: 90%;
width: 100%;
}

.shadowblockmenu ul{
border: 1px solid #BBB;
border-width: 1px 0; /* Show only top and bottom border for main menu container */
padding: 0;
margin: 0;
overflow: hidden;
}

.shadowblockmenu ul li{
display: inline;
margin:0;
padding:0;
}

.shadowblockmenu ul li a{
display:block;
float:left;
text-transform: uppercase;
color: #494949;
padding: 8px 15px 8px 9px;
margin: 0;
text-decoration: none;
border-right: 1px solid #BBB; /*right border between menu items*/
-moz-box-shadow: inset -7px 0 10px rgba(114,114,114, 0.4); /* Add inset shadow to each menu item. First 3 values in (114,114,114, 0.4) specifies rgb values, last specifies opacity */
-webkit-box-shadow: inset -7px 0 10px rgba(114,114,114, 0.4);
box-shadow: inset -7px 0 10px rgba(114,114,114, 0.4);
text-shadow: 0 -1px 1px #cfcfcf; /* CSS text shadow to give text some depth */
-moz-transition: all 0.2s ease-in-out; /* Enable CSS transition between property changes */
-webkit-transition: all 0.2s ease-in-out;
-o-transition: all 0.2s ease-in-out;
-ms-transition: all 0.2s ease-in-out;
transition: all 0.2s ease-in-out;
}


.shadowblockmenu li:nth-of-type(1) a{ 
border-left: 1px solid #BBB;
padding-left:25px;
background: url(media/onebit_home.png) 1px center no-repeat;
}

.shadowblockmenu li:nth-of-type(2) a{
padding-left:25px;
background: url(image/media/onebit_bulb.png) 1px center no-repeat; /* Add icon */
}

.shadowblockmenu ul li a:hover{
color: black;
-moz-box-shadow: inset -7px 0 10px rgba(60,162,221, 0.4), inset 0 0 12px rgba(60,162,221, 0.6); /* Add 2 inset shadows to each menu item  */
-webkit-box-shadow: inset -7px 0 10px rgba(60,162,221, 0.4), inset 0 0 12px rgba(60,162,221, 0.6);
box-shadow: inset -7px 0 10px rgba(148,63,154, 0.4), inset 0 0 12px rgba(148,63,154, 0.6);
}

</style>
<style>


.shadowblockmenu-v{
font: bold 14px Germand;
width: 200px;
height: 200px; /* width of menu */
}

.shadowblockmenu-v ul{
border: 1px solid #eee;
padding: 0;
margin: 0;
list-style: none;
}

.shadowblockmenu-v ul li{
margin:0;
padding:0;
}

.shadowblockmenu-v ul li a{
display:block;
text-transform: uppercase;
color:#000000;
padding: 10px 15px;
text-decoration: none;
border-bottom: 1px solid  ;
border-right: 1px solid #cacaca; /*right border between menu items*/
-moz-box-shadow: inset 7px 0 10px rgba(114,114,114, 0.6); /* Add inset shadow to each menu item. First 3 values in (114,114,114, 0.5) specifies rgb values, last specifies opacity */
-webkit-box-shadow: inset 7px 0 10px rgba(114,114,114, 0.6);
box-shadow: inset 7px 0 10px rgba(114,114,114, 0.6);
text-shadow: 0 -1px 1px #cfcfcf; /* CSS text shadow to give text some depth */
-moz-transition: all 0.2s ease-in-out; /* Enable CSS transition between property changes */
-webkit-transition: all 0.2s ease-in-out;
-o-transition: all 0.2s ease-in-out;
-ms-transition: all 0.2s ease-in-out;
transition: all 0.2s ease-in-out;
}

.shadowblockmenu-v ul li a:hover, .shadowblockmenu-v ul li a.selected{
color: black;
-moz-box-shadow: inset 7px 0 10px rgba(216,89,39, 0.5), inset 0 0 15px rgba(216,89,39, 0.6), inset 0 0 20px rgba(216,89,39, 0.8); /* Add 3 inset shadows to each menu item  */
-webkit-box-shadow: inset 7px 0 10px rgba(216,89,39, 0.5), inset 0 0 15px rgba(216,89,39, 0.6), inset 0 0 20px rgba(216,89,39, 0.8);
box-shadow: inset 7px 0 10px rgba(148,63,154, 0.5), inset 0 0 15px rgba(148,63,154, 0.6), inset 0 0 20px rgba(148,63,154, 0.8);
}

.sea4
{
    height: 40px;
    width: 95px;
    background: url(images/submit.png);
    background-repeat:  no-repeat;
}

</style>

<body background="images/soft-white-backgrounds-wallpapers.jpg">
<table height="500px" width="1150px" align="center" border="0px" cellspacing="0px" cellpadding="0px" bgcolor="#EEEEEE">
    <tr>
        <td background="images/contactus copy.jpg" height="500px" width="1000px" style="background-repeat:no-repeat;background-position: left" align="left">
   <table height="400" width="700">
       <form action="aftercontact.jsp">
   <tr height="100px">
   <td width="400" rowspan="4">
   <p style="padding-left:100px; font-style:  italic; font-size: larger; color: orange;">S-71<br />
   Near Jaipur Hospital<br />
   Mahaveer Nagar,Tonk Road<br />
      JAIPUR(RAJ).<br />
      aartigugalia94@gmail.com<br />
      sharma.anjali2792@gmail.com<br />
   </p>

   </td>

   <td width="100px">
   <img src="images/download (11).jpg" height="50px" width="50px" />
   </td>
   <td align="center"><b>:</b></td>
   <td align="left">
   <Input type="text" placeholder="Enter Your Name" name="full"/>
   </td>
   </tr>
   <tr height="100px">
   <td>
   <img src="images/CONTACT (3).png" height="50px" width="50px"/>
   </td>
   <td align="center"><b>:</b></td>
   <td align="left">
       <Input type="text" placeholder="Enter Your Email"  name="email"/>
   </td>
   </tr>
    <tr height="100px">
   <td>
   <img src="images/ask1.jpg" height="50px" width="50px"/>
   </td>
   <td align="center"><b>:</b></td>
   <td align="left">
       <textarea name="query"></textarea>
   </td>
   </tr>
   <tr height="100px">

   <td colspan="4" align="center">
       <button type="value" value="submit" class="sea4" ></button>
      <%-- <button class="sea">
   <img src="images/submit.png" />
   </button>--%>
   </td>
   </tr>
       </form>
 </table>
</td>
<td>
 <img src="image/map.png" height="500px" width="400px">
 


</td>
   </tr>
   
</table>
  <table width="86.3%" align="center">
    <div  class="marquee" style="background-color:#EEEEEE;width:86.3%;margin-left: 92px" align="center">

    <marquee onmouseover="stop()" onmouseout="start()">
      <a href="http://www.airtel.in/" target="_blank"><img src="image/co1.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co2.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co3.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co4.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co5.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co6.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co7.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co8.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co9.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co10.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co11.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co12.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co13.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co14.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co15.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co16.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co17.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co18.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co19.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co20.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co21.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co22.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co23.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co24.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co25.gif" border="0" /></a>&nbsp;<a href="#"><img src="image/co26.gif" border="0" /></a>
 </marquee>


</div>
</table>
<%@include file="footer1.jsp"%>