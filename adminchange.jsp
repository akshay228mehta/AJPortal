<%--
    Document   : change
    Created on : Aug 16, 2013, 2:35:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <style type="text/css">
            
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #993300;
            }
            .style2 {
                color: #000000;
                font-weight: bold;
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

 <body style="margin:0px; height: 100%; width: 100%;" bgcolor="#666734"  >
        <table width="1150px" height="504" border="0" valign="top" align="center">
          <tr>
            <td height="23" colspan="2" <%--bgcolor="#666734"--%><jsp:include page="AdminHeader.jsp"/></td>
          </tr>
          <tr>
              <td width="150px" align="left" <%--bgcolor="#666734"--%> ><jsp:include page="Adminmenu.jsp"/></td>
            <td  bgcolor="#CC9966">
  


<table width="500" height="300" border="0"  align="center" cellspacing="5" style="border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border:solid #9A4E4E; margin-left:90px; margin-top:60px; border-radius:30px;" bgcolor="#FFFFCC">
<tr>
<td>
<form action="changepassword.jsp" method="post">
<tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Change Password </div></td>
                            </tr>
                            <tr height="50px"> <td colspan="3">
<img src="images/btnorange.png" height="20px" width="500px" align="middle" />
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

        </td>
        </tr>
         <tr bgcolor="white">
            <td height="23" colspan="2" <%--bgcolor="#666734"--%><jsp:include page="flash.jsp"/></td>
          </tr>
        </table>
 <jsp:include page="adminfooter.jsp"/>
</body>

</html>
