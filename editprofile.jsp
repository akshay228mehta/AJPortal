<%-- 
    Document   : editprofile
    Created on : Aug 26, 2013, 12:32:12 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
String email = (String)session.getAttribute("user_email");
if(email != null)
    {

config c =new config();
   Connection con=c.getcon();
String Query= "select * from register where EmailId='"+email+"'";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
      String name = rs.getString("Myname");
       
   String dob=rs.getString("Birthday");
   String city=rs.getString("Ilivein");
   String clg=rs.getString("CollegeName");
  
    
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <style>
            .b
{
	background-repeat:no-repeat;
	background-size:100% 100%;

}
            </style>
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
                padding-left: 30px;
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
        <table width="500" height="300" border="0" align="center" class="r b" cellspacing="5" bgcolor="#E3EAF4" style=" border: solid #9A4E4E; margin-left:90px; margin-top:90px; border-radius:30px; -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; ">
        <form action="afteredit.jsp" method="post"  name="regsform" onSubmit="return regvalidate()">
  <tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Edit Your Profile </div></td>
                            </tr>
  <tr>
      <td height="20" colspan="2" align="center" background="images/btn_blue.png"  class="b"><font color="white">About yourself </font> </td>
  </tr> 
  <tr>
      <td width="153" height="30" class="style2">My name</td>
    <td width="238" align="left"><input type="text" name="rname" id="rname" size="30" value="<% out.print(name); %>"/>
    </td>
  </tr>
  <tr>
      <td height="30" class="style2">Birthday</td>
    <td align="left"><input type="date" name="db" value="<% out.print(dob); %>"/></td>
  </tr>
  <tr>
      <td height="30" class="style2">I live in</td>
    <td align="left"><input type="text" name="radd" id="radd" size="30" value="<% out.print(city); %>" /></td>
  </tr>
  <tr>
      <td height="20" class="style2">College Name</td>
    <td align="left"><input type="text" name="rc" id="rc"  value="<% out.print(clg); %>"/></td>
  </tr>
  
 
  <tr>
    <td height="20" colspan="2" align="center"><button type="value" value="submit" class="se10" ></button></td>
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