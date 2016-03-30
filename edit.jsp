<%-- 
    Document   : edit
    Created on : Sep 2, 2013, 12:42:03 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
String email = (String)session.getAttribute("company_email");

int param =Integer.parseInt(request.getParameter("var"));

if(email != null)
    {

config c =new config();
   Connection con=c.getcon();
String Query= "select * from jobdetail where id="+param+"";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
      String name = rs.getString("name");

 String id = rs.getString("jobid");
   String p=rs.getString("post");
   String ct=rs.getString("criteria");

  String vac=rs.getString("vaccancy");

String sal=rs.getString("salary");
%>
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


    <table height="400px" width="400" border="0px" cellspacing="0px" align="center" bgcolor="#E3EAF4" style="border:solid #9A4E4E;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border-radius:40px; margin-top: 50px;">
         <form name="form1" method="post" action="afterjobedit.jsp?var=<%= param %>">

                            <tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Job Description </div></td>
                            </tr>
                            <tr height="50px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
                             <tr>
                                <td width="160" height="26" ><div align="left" class="style2">Company Name</div></td>
                                <td width="213">
                                    <label>
                                        <input name="name" id="name"type="text" size="30" value="<% out.print(name); %>">
                                </label>            </td>
                            </tr>
                            <tr>
                                <td width="160" height="26" ><div align="left" class="style2">JobID</div></td>
                                <td width="213">
                                    <label>
                                        <input name="jobid" id="jobid"type="text" size="30" value="<% out.print(id); %>">
                                </label>            </td>
                            </tr>
                            <tr>
                                <td height="26"><div align="left" class="style2"> Name of Post </div></td>
                                <td ><input name="post" name="post" type="text" size="30" value="<% out.print(p); %>"></td>
                            </tr>
                            <tr>
                                <td height="26"><div align="left" class="style2">Criteria</div></td>
                                <td ><input name="criteria" name="criteria" type="text" size="30" value="<% out.print(ct); %>"></td>
                            </tr>
                            <tr>
                                <td height="26" ><div align="left" class="style2">No: of Vacancies </div></td>
                                <td><input name="vacancy" name="vacancy" type="text" size="30" value="<% out.print(vac); %>"></td>
                            </tr>
                            <tr>
                                <td height="26" ><div align="left" class="style2">Salary/Annum</div></td>
                                <td><input name="salary" name="salary" type="text" size="30" value="<% out.print(sal); %>"></td>
                            </tr>
                           
                            <tr >
                                <td height="28" colspan="2">
                                    <div align="center">
                                        <input type="submit" name="Submit" value="Submit" onClick="return check()">
                                </div>           </td>
                            </tr>


         </form>
        </table>
        </body>
</html>
<%
}}
else
    {

response.sendRedirect("index.jsp");
}


%>