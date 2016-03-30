<%-- 
    Document   : aftercmpnyedit
    Created on : Aug 27, 2013, 1:11:00 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
   try
          {
       String email = (String)session.getAttribute("company_email");
       if(email != null)
           {
       //String email = (String)session.getAttribute("email");
         String name=request.getParameter("namec");


   String add=request.getParameter("loc");
    String t=request.getParameter("type");
     String co=request.getParameter("conc");

     config c =new config();
      Connection con=c.getcon();
      String Query= "update company_registration set name='"+name+"',companyadd='"+add+"', type='"+t+"',contact ='"+co+"' where email='"+email+"'";

   Statement stmt=con.createStatement();
    stmt.executeUpdate(Query);

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

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">Your Details have been edited successfully ..!!</span>

        </body>

   </html>