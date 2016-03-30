<%-- 
    Document   : afterforgot
    Created on : Oct 4, 2013, 10:35:16 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
   try
           {
     config c =new config();
   Connection con=c.getcon();
    String m=request.getParameter("email");
    //session.setAttribute("email",m);



    String msg="To verify Click on this link-- http://localhost:8084/jobportal/newpass.jsp?Email="+m+"";

                 SendMail mv=new SendMail(m, msg);
                 mv.sms2();
                // out.print("To Login verify yourself.");


   }
    catch(Exception e)
           { e.printStackTrace();
             }
   %>
    <html>
   <body>
       <table> <tr> <td>
                    <span style=" font-size: 30px; font-style:  italic; color: olive;"> To Login Verify Yourself through your gmail...!! </span>
               </td>      </tr>  <tr>  <td> <a href="index.jsp"> Home </a> </td> </tr>
        </body>

   </html>