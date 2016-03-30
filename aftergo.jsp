<%--
    Document   : aftersearch
    Created on : Sep 5, 2013, 12:46:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="connect.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header1.jsp" %>
<table height="300px" width="1150px" align="center" border="0px" cellspacing="0px" cellpadding="0px" bgcolor="#EEEEEE">
    <tr>
    <td>
<%
     try
           {


        String p=request.getParameter("type");


String Query= "select * from jobdetail where type='"+p+"'";

   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  int flag=0;
  while(rs.next())
  {
   String name= rs.getString("name");
   String post=rs.getString("post");
   String criteria=rs.getString("criteria");
    String vaccancy=rs.getString("vaccancy");
     String salary=rs.getString("salary");
      String city1=rs.getString("city");
       String ex=rs.getString("expyr");
        String t=rs.getString("type");
        %>




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
        </style>



<table width="300" height="300" border="0" align="left" class="r b" cellspacing="5" style="margin-left:50px; margin-top:30px; margin-bottom:30px; border-radius:20px;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border:solid #9A4E4E;" bgcolor="#E3EAF4">
    <form action="#" method="post"  name="regsform" onSubmit="return regvalidate()">
 <tr >
                                <td height="30" colspan="3" align="center" >

                                    <div  class="style1"> <img src="images/vnm.jpg" height="100px" width="300px" align="center" /> </div></td>
                            </tr>
  <%--<tr>
      <td height="5" colspan="2" align="center" background="images/btn_blue.png"  class="b"> <font color="white"> </font> </td>
  </tr>--%>
  <tr>
      <td width="153" height="30" class="style2">Company Name</td>
    <td>  <% out.print(name); %>
    </td>
  </tr>
  <tr>
      <td height="30" class="style2">Post</td>
    <td><% out.print(post); %></td>
  </tr>
  <tr>
      <td height="30" class="style2">Criteria</td>
    <td><% out.print(criteria); %></td>
  </tr>
  <tr>
      <td height="20" class="style2"> vaccancy</td>
    <td ><% out.print(vaccancy); %></td>
  </tr>
<tr>
      <td height="20" class="style2"> Salary</td>
    <td ><% out.print(salary); %></td>
  </tr>
  <tr>
      <td height="20" class="style2"> City</td>
    <td ><% out.print(city1); %></td>
  </tr>
  <tr>
      <td height="20" class="style2"> Experience Year</td>
    <td ><% out.print(ex); %></td>
  </tr>
  <tr>
      <td height="20" class="style2"> Job Type</td>
    <td ><% out.print(t); %></td>
  </tr>


  </form>
</table>



 <%
 flag++;

}

     if(flag == 0)
{
     out.print("Please Enter correct Job Type...!!");

     }




     }


catch(Exception e)
           { e.printStackTrace();
             }




%>
</td>
</tr>
</table>

  <%@include file="flash.jsp" %>
 <%@include file="footer1.jsp" %>
