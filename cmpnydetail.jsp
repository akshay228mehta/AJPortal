<%-- 
    Document   : cmpnydetail
    Created on : Aug 27, 2013, 12:55:01 PM
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

   String mail=rs.getString("email");
   String cont=rs.getString("contact");
   String add=rs.getString("Companyadd");

 String tp=rs.getString("type");

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
        </style>

  <%-- <script type="text/javascript">

$(document).ready(function(){

$("#detail").click(function() {
$("#mask").show();
$("#detail").show();
});

$(document).click(function() {
$("#mask").hide();
$("#detail").hide();
});
});
</script>--%>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="mask"></div>
        <div id="detail">
      <table height="370px" width="400" border="0px" cellspacing="0px" align="center"  bgcolor="#E3EAF4" style="border:solid #9A4E4E;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border-radius:40px; margin-top:70px;">

    <form method="post" action="#"  name="cform" onsubmit="return cvalidate()" enctype="multipart/form-data">
<tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Comapny Detail </div></td>
                            </tr>
<tr height="50px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
<tr height="5px">
    <td width="150px" > <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px" class="style1"> Account Details  </b>
 <img src="images/btnorange.png" height="5px" width="150px" style="padding-left:130px" />
</td>
</tr>
<tr height="50">
    <td style="padding-left:40px">
        <label class="style2">Company Name &nbsp; &nbsp; &nbsp; <b>:</b></label>
</td>
<!--<td align="left"><b>:</b></td>-->
<td>
<% out.print(name); %>
</td> </tr>
<tr height="20">
<td style="padding-left:40px">
    <label class="style2">Email Id  &nbsp; &nbsp; &nbsp; <b>:</b></label>
</td>
<!--<td align="center"><b>:</b></td>-->
<td>
<% out.print(mail); %>
</td>
</tr>

<td width="150px"> <b style="font-size:20px; font-family:'Times New Roman', Times, serif; padding-left:130px" class="style1"> Company Details  </b>
 <img src="images/btnorange.png" height="5px" width="150px" style="padding-left:130px" />
</td>

<tr height="50">
    <td style="padding-left:40px" class="style2">Company Location  &nbsp; &nbsp; &nbsp; <b>:</b> </td>
<!--<td align="left"><b>:</b></td>-->
<td align="left" style="padding-left:0px">
 <% out.print(add); %>
</td>
</tr>
<tr height="20">
<td style="padding-left:40px" >
    <label class="style2">Industry Type  &nbsp; &nbsp; &nbsp; <b>:</b></label>
</td>
<!--<td align="center"><b>:</b></td>-->
<td>
<% out.print(tp); %>
</td>
</tr>
<tr height="50">
    <td style="padding-left:40px" class="style2">Contact Number  &nbsp; &nbsp; &nbsp; <b>:</b></td>
<!--<td align="left"><b>:</b></td>-->
<td >
 <% out.print(cont); %>
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
