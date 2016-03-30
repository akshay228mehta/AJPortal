<%-- 
    Document   : editdetail
    Created on : Aug 27, 2013, 1:46:54 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
String email = (String)session.getAttribute("company_email");
if(email != null)
    {

config c =new config();
   Connection con=c.getcon();
String Query= "select * from company_registration where email='"+email+"'";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
      String name = rs.getString("name");


   String ct=rs.getString("contact");
   String tp=rs.getString("type");

  String add=rs.getString("companyadd");

%>
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
    </head>
    <body>
        <div id="mask"></div>
        <div id="detail">

        <table height="400px" width="300" border="0px" cellspacing="0px" align="center"  bgcolor="#E3EAF4" style="border:solid #9A4E4E; border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; margin-top: 50px;">
    <form method="post" action="aftercmpnyedit.jsp"  name="cform" onsubmit="return cvalidate()">
<tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Edit Your Detail </div></td>
                            </tr>
<tr height="50px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
<tr height="5px">
<td> </td>
<td width="150px"> <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px;" class="style1"> Account Details  </b>
 <img src="images/btnorange.png" height="5px" width="150px" style="padding-left:130px;" />
</td>
<td>
</td> </tr>
<tr height="10">
    <td align="left" style="padding-left:40px" colspan="2" >
        <label class="style2">Company Name &nbsp; &nbsp;<b>:</b></label>
</td>
<!--<td align="left"><b>:</b></td>-->
<td align="left">
<Input type="text" placeholder="Name" name="namec" size="20"  value="<% out.print(name); %>"/>
</td> </tr>

<tr height="5px">
<td> </td>
<td width="150px"> <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px" class="style1"> Company Details  </b>
 <img src="images/btnorange.png" height="5px" width="150px" style="padding-left:130px" />
</td>
<td>
</td> </tr>
<tr height="10">
    <td align="left" style="padding-left:40px" colspan="2" class="style2" >Company Location &nbsp; &nbsp;<b>:</b> </td>
<!--<td align="left"><b>:</b></td>-->
<td align="left" style="padding-left:0px">
    <textarea name="loc"><% out.print(add); %></textarea>
</td>
</tr>
<tr height="10">
<td align="left" style="padding-left:40px" colspan="2" >
    <label class="style2">Industry Type &nbsp; &nbsp;<b>:</b></label>
</td>
<!--<td align="center"><b>:</b></td>-->
<td align="left" style="padding-left:0px">
<Input type="text"  name="type" size="20" value="<% out.print(tp); %>"/>
</td>
</tr>
<tr height="10">
    <td align="left" style="padding-left:40px" colspan="2" class="style2" >Contact Number &nbsp; &nbsp;<b>:</b> </td>
<!--<td align="left"><b>:</b></td>-->
<td align="left" style="padding-left:0px">
<input type="text" placeholder="" name="conc" size="20" value="<% out.print(ct); %>"/>
</td>
</tr>

<tr height="10">
<td> </td>
<td  style="padding-left:100px" align="center">
  <button type="value" value="submit" class="se10" ></button>
</td>
</tr>

</form>
</table>
        </div>
    </body>
</html>
<%
}}
else
    {

out.println("Please Login First..!!");
}



%>