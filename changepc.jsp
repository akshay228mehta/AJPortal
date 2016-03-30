<%--
    Document   : change
    Created on : Aug 16, 2013, 2:35:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <style type="text/css">
            <!--
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #993300;
            }
            .style2 {
                color: #000000;
                font-weight: bold;
            }
            -->


               #detail
{
height:auto;
width:auto;
position:relative;
margin-left:10px;
margin-top:-10px;
z-index:2000;
}
#mask
{
height:100%;
width:100%;
background-color:gray;
margin:0px;
padding:0px;
top:0px;
left:0px;
position:fixed;
z-index:50;
opacity:0.7;
}
.se10
{
    height: 25px;
    width: 70px;
    background: url(image/sub.jpg);
    background-repeat: no-repeat;
    background-position: center;


}
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
  <%
String email = (String)session.getAttribute("company_email");
if(email != null)
    {

%>

<div id="mask"></div>
        <div id="detail">

<table width="500" height="300" border="0" align="center" cellspacing="5" style="border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border:solid #9A4E4E; margin-left:90px; margin-top:60px; border-radius:30px;" bgcolor="#E3EAF4">
<tr>
<td>
<form action="afterchangepc.jsp" method="post">
<tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Change Password </div></td>
                            </tr>
                            <tr height="50px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
<tr height="20">
<td align="center">
    <label class="style2">Old Password</label>
</td>
<td align="center"><b>:</b></td>
<td align="center">
<Input type="Password" placeholder="" name="ol"/><br>
</td>
</tr>
<tr height="20">
<td align="center">
    <label class="style2">New Password</label>
</td>
<td align="center"><b>:</b></td>
<td align="center">
    <Input type="Password" placeholder="" name="ne"/> <br/>
</td>
</tr>
<tr height="20">
<td align="center">
    <label class="style2">Retype New Password</label>
</td>
<td align="center"><b>:</b></td>
<td align="center">
<Input type="Password" placeholder=""/><br>
</td>

</tr>
<tr height="50">
<td align="center" colspan="3">
<button type="value" value="submit" class="se10" ></button>
</td>
</tr>
</form>
</td>

</tr>
</table>
        </div>
<%
}
else
    {

out.println("Please Login First..!!");
}


%>
</body>
</html>
