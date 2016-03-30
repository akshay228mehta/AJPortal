<%-- 
    Document   : forgot
    Created on : Aug 26, 2013, 9:33:40 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <table width="500" height="300" border="0" align="center" cellspacing="5" bgcolor="#E3EAF4" style="border:solid #9A4E4E;border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px;margin-left:90px; margin-top:100px; border-radius:30px;" bgcolor="#FFFFFF">
<tr>
<td>
<form action="afterforgot.jsp" method="post">
<tr>
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Forgot Password </div></td>
                            </tr>
<tr height="20px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
<tr height="100">
<td align="center">
    <label class="style2">Enter EmailId</label>
</td>
<td align="center"><b>:</b></td>
<td align="center">
<Input type="text" placeholder="Email Id" name="email"/><br>
</td>
</tr>

<tr height="50">
<td align="center" colspan="3">
<input type="submit" value="Submit" />
</td>
</tr>
</form>
</td>

</tr>
</table>


    </body>
</html>
