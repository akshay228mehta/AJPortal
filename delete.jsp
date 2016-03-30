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
       String email = (String)session.getAttribute("company_email");
       config c =new config();
    Connection con=c.getcon();
    String Query= "delete from jobdetail  where id="+param+"";

   Statement stmt=con.createStatement();
    int result=stmt.executeUpdate(Query);
    
      }

   catch(Exception e)
           { e.printStackTrace();
             }
   %>

