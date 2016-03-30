<%--
    Document   : change
    Created on : Aug 16, 2013, 2:35:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>

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



<table width="500" height="150" border="0"  align="center" cellspacing="5" style="border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border:solid #9A4E4E; margin-left:90px; margin-top:60px; border-radius:30px;" bgcolor="#FFFFCC">
    <tr> <td>

    <%
config c =new config();
   Connection con=c.getcon();
   int param =Integer.parseInt(request.getParameter("var"));
String Query= "select * from company_registration where id="+param+"";


   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
   String name = rs.getString("name");
   
  %>

  <form action="aftergrade.jsp?cname=<%= name %>" method="post">

    
<tr height="20">
<td align="center">
    <span style=" font-size: 40px; font-style: italic; color: olive; "> Enter Company Grading..!! </span>
</td>
</tr>


  
<%--<tr height="20">
<td align="center">
    <Input type="text" placeholder="Company Name" name="name"/> <br/>
</td>
</tr>--%>
<tr height="20">
    <td width="150" style="padding-top:20px" valign="top" align="center">
    <select style="padding-left:30px" name="gd">
        <option> Grading </option>




        <option value="A">A</option>

<<option value="B">B</option>
<option value="C">C</option>
<option value="D">D</option>
<option value="E">E</option>
    </select></td>


<%--<td align="center">
    <Input type="text" placeholder="Grading" name="gd"/> <br/>
</td>--%>
</tr>

<tr height="50">
<td align="center" colspan="3">
<button type="value" value="submit" class="se10" ></button>
</td>
</tr>
</form>
<%  } %>
</td>

</tr>
</table>

        </td>
        </tr>
        </table>
 <jsp:include page="adminfooter.jsp"/>
</body>

</html>
