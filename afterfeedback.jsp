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
   String co=request.getParameter("cont");
   String q=request.getParameter("query");

    config c =new config();
   Connection con=c.getcon();

   String Query="insert into feedback(FullName,ContactNumber,Query)values('"+f+"','"+co+"','"+q+"')";

   Statement stmt=con.createStatement();

   int Result=stmt.executeUpdate(Query);
   String msg="Name "+f+" , Contact_No.  "+co+", Query "+q+", Email "+e+"";
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
