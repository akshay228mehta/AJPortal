<%--
    Document   : delete
    Created on : Sep 3, 2013, 1:19:13 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
   try
           {
       int param =Integer.parseInt(request.getParameter("var"));
       String email = (String)session.getAttribute("email");
       config c =new config();
    Connection con=c.getcon();
    String Query= "delete from  company_registration where id="+param+"";

   Statement stmt=con.createStatement();
    int result=stmt.executeUpdate(Query);
 response.sendRedirect("admin.jsp");
      }


   catch(Exception e)
           { e.printStackTrace();
             }
   %>

