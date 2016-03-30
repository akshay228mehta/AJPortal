<%--
    Document   : afterfeedback
    Created on : Aug 7, 2013, 2:24:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   try
           {
        String email = (String)session.getAttribute("email");
   String f=request.getParameter("full");
 String e=request.getParameter("email");
   String q=request.getParameter("query");

    config c =new config();
   Connection con=c.getcon();

   String Query="insert into contactus(Name,Email,address)values('"+f+"','"+e+"','"+q+"')";

   Statement stmt=con.createStatement();

   int Result=stmt.executeUpdate(Query);
   String msg="Name "+f+" , Email "+e+",Query "+q+"";
                 SendMail mv=new SendMail(msg);
                 mv.sms2();

if(Result==1)
       {
          response.sendRedirect("index.jsp");
          }
   else
       {
         response.sendRedirect("index.jsp");
         }
   }
   catch(Exception e)
           { e.printStackTrace();
             }
   %>
