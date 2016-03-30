<%--
    Document   : viewjobdetails
    Created on : Sep 2, 2013, 12:08:32 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
String email = (String)session.getAttribute("admin_email");
if(email != null )
    {

config c =new config();
   Connection con=c.getcon();
String Query= "select * from company_registration ";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);

 %>

<html>
    <head>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 18px;
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
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin:0px; height: 100%; width: 100%;" bgcolor="#666734"  >
        <table width="1150px" height="504" border="0" valign="top" align="center">
          <tr>
            <td height="23" colspan="2" <%--bgcolor="#666734"--%><jsp:include page="AdminHeader.jsp"/></td>
          </tr>
          <tr>
              <td width="150px" align="left" <%--bgcolor="#666734"--%> ><jsp:include page="Adminmenu.jsp"/></td>
            <td  bgcolor="#CC9966">

        <div id="detail">
       <table height="300px" width="800px" border="0px" cellspacing="0px" align="center" bgcolor="#FFFFCC" style="border:solid #9A4E4E 10px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border-radius:20px; margin-top: 50px;">

           <tr class="style1" height="30px">

               <td width="80px" style=" font-size: 20px; padding-left: 20px" >S.No</td>&nbsp; &nbsp; &nbsp; &nbsp;
               <td width="100px"  style=" font-size: 20px"> Company</td>
                <td width="150px"  style=" font-size: 20px">Contact No.</td><td width="200px" style=" font-size: 20px" >Email Id</td>
                <td width="140px"  style=" font-size: 20px">Industry</td><td width="100px"  style=" font-size: 20px">Address</td>

            </tr>
            <tr> <td colspan="8">
                    <img src="images/btnorange.png" height="20px" width="900px">

                </td></tr>

<%
int i = 1;
while(rs.next())
    {
   String name = rs.getString("name");
    String contact = rs.getString("contact");
    String em = rs.getString("email");
    String ty = rs.getString("type");
    String add = rs.getString("companyadd");
    int id = rs.getInt("id");


%>
<tr>

    <td style="padding-left:20px"><% out.print(i); %></td>
    <td><% out.print(name); %>

    </td>
    <td><% out.print(contact); %></td>
    <td><% out.print(em); %></td>
    <td><% out.print(ty); %></td>
    <td><% out.print(add); %></td>
  
    <td>
        <a href="Grade.jsp?var=<%= id %>" style=" color: blue;">Grade</a>

        <a href="deletecom.jsp?var=<%= id %>">Delete</a>

    </td>

</tr>

<%
i++;
}
%>
        </table>
        </div>
        </td>
        </tr>
         <tr bgcolor="white">
            <td height="23" colspan="2" <%--bgcolor="#666734"--%><jsp:include page="flash.jsp"/></td>
          </tr>
        </table>
        <jsp:include page="adminfooter.jsp"/>
    </body>
</html>
<%
}
else
    {
    out.println("Please LoginFirst..!!");
//response.sendRedirect("index.jsp");
}


%>