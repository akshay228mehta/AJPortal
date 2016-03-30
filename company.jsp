<%-- 
    Document   : company
    Created on : Jan 30, 2016, 8:45:32 AM
    Author     : Akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <table height="600px" width="600" border="0px" cellspacing="0px" align="center"  bgcolor="white" style="border:solid lightblue;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border-radius:40px; border-width:20px;">
                <form method="post" action="aftercmpnyreg.jsp"  name="cform" <%--onsubmit="return cvalidate()"--%> >
                    <tr height="50px">
                        <td colspan="3" align="center">
                            <img src="images/sign-up-icon.png" height="50px" width="50px" />
                            <span style="font-size:24px"> <b> Company Registration </b> </span>
                        </td>
                    </tr>
                    <tr height="50px"> <td colspan="3">
                            <img src="images/btn_blue.png" height="40px" width="600px" align="middle" />
                        </td> </tr>
                    <tr height="5px">
                        <td> </td>
                        <td width="150px"> <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px;"> Account Details  </b>
                            <img src="images/btn_orange - Copy.png" height="5px" width="150px" style="padding-left:130px;" />
                        </td>
                        <td>
                        </td> </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2" >
                            <label>Company Name</label>
                        </td>
                        <!--<td align="left"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <Input type="text" placeholder="Name" name="namec" id="namec" size="35"/><br>

                            <label id="error71" class="a0"></label>
                        </td> </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2">
                            <label>Enter Email Id</label>
                        </td>
                        <!--<td align="center"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <Input type="text" placeholder="Enter Your Email" name="emailc" id="emailc" size="35"/><br>
                            <label id="error72" class="a0"></label>
                        </td>
                    </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2" >
                            <label>Password</label>
                        </td>
                        <!--<td align="center"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <Input type="Password" placeholder="*************" name="passc" id="passc" size="35"/><br>
                            <label id="error73" class="a0"></label>
                        </td>
                    </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2">
                            <label> Repassword </label>
                        </td>
                        <!--<td align="center"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <Input type="Password" placeholder="*************" name="repassc" id="repassc" size="35"/><br>
                            <label id="error74" class="a0"></label>
                        </td>
                    </tr>
                    <tr height="5px">
                        <td> </td>
                        <td width="150px"> <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px"> Company Details  </b>
                            <img src="images/btn_orange - Copy.png" height="5px" width="150px" style="padding-left:130px" />
                        </td>
                        <td>
                        </td> </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2" >Company Location </td>
                        <!--<td align="left"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <textarea name="loc"></textarea>
                        </td>
                    </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2" >
                            <label>Industry Type</label>
                        </td>
                        <!--<td align="center"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <Input type="text"  name="type" id="type" size="35"/><br>
                            <label id="error75" class="a0"></label>
                        </td>
                    </tr>
                    <tr height="10">
                        <td align="left" style="padding-left:100px" colspan="2" >Contact Number </td>
                        <!--<td align="left"><b>:</b></td>-->
                        <td align="left" style="padding-left:0px">
                            <input type="text" placeholder="" name="conc" size="35"/>
                        </td>
                    </tr>
                    <tr>
                        <td height="30"></td>
                        <td align="left"><input type="hidden" name="rp" id="rp" value="3.jpg" /><br />
                            <label id="error53" class="a4"></label>
                        </td>
                    </tr>
                    <tr height="10">
                        <td> </td>
                        <td  style="padding-left:100px">
                            <button type="value" value="submit" class="se10" ></button>
                            <%--<input type="Submit" value="Submit"/>--%>
                        </td>
                        <td align="center">
                            <%--<input type="Reset" value="Reset"/>--%>
                            <button type="Reset" value="Reset" class="se" >Submit</button>
                        </td>
                    </tr>

                </form>
            </table>
        </div>
    </body>
</html>
