<%--
    Document   : viewjobdetails
    Created on : Sep 2, 2013, 12:08:32 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
String email = (String)session.getAttribute("user_email");
//out.println("welcomeeeeeeeeeeeeeeeeeeeeeee"+email);
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
margin-top:-10px;
z-index:2000;}




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
    <body >
        <div id="mask"></div>
         <div id="detail">
      <table width="300" height="400" border="0" align="center"  cellspacing="5" style="margin-left:2px; margin-top:70px; border-radius:40px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border:solid #9A4E4E;" bgcolor="#E3EAF4">

           <tr class="style1" height="20px">

               <td width="30px" style=" font-size: 20px; padding-left: 20px;" >S.No</td>&nbsp; &nbsp; &nbsp; &nbsp;
               <td width="30px"  style=" font-size: 20px"> Company</td>
                <td width="30px"  style=" font-size: 20px">Contact</td>
                 <td width="30px"  style=" font-size: 20px">Grade</td>

                <td width="30px"  style=" font-size: 20px">Industry</td><td width="30px"  style=" font-size: 20px">City</td>
                 <td width="30px" style=" font-size: 20px" >Email</td>
            </tr>
            <tr> <td colspan="8">
                    <img src="images/btn_blue.png" height="20px" width="670px">

                </td></tr>

<%
int i = 1;
while(rs.next())
    {
   String name = rs.getString("name");
    String contact = rs.getString("contact");
    String g = rs.getString("grade");

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
    <td><% out.print(g); %></td>

    
    <td><% out.print(ty); %></td>
    <td><% out.print(add); %></td>
    <td><% out.print(em); %></td>

    <td>

        <a href="applycom.jsp?var=<%= em %>&cname=<%= name %>">Apply</a>

    </td>

</tr>

<%
i++;
}
%>
        </table>
        </div>
       
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