<%--
    Document   : aftercmpnyreg
    Created on : Aug 7, 2013, 1:51:25 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"  import="connect.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   try
            {
       String email = (String)session.getAttribute("company_email");
       if(email != null)
           {
        //String email = (String)session.getAttribute("email");
    String name=request.getParameter("name");
   String id=request.getParameter("jobid");
   
   String p=request.getParameter("post");
   String cr=request.getParameter("criteria");
   String va=request.getParameter("vacancy");
   String e=request.getParameter("exp");
   String city=request.getParameter("city");
    String type=request.getParameter("type");
   String s=request.getParameter("salary");
    

   config c =new config();
   Connection con=c.getcon();

   String Query="insert into jobdetail(name,jobid,email,post,criteria,vaccancy,expyr,city,type,salary) values('"+name+"','"+id+"','"+email+"','"+p+"','"+cr+"','"+va+"','"+e+"','"+city+"','"+type+"','"+s+"')";

   Statement stmt=con.createStatement();
   int Result=stmt.executeUpdate(Query);

     }
   else
       {
   out.println("plz login first");


   }
       }
   catch(Exception e)
           { e.printStackTrace();
             }
   %>
   <html>
  <body>

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">Job has been added successfully ..!!</span>

        </body>

   </html>