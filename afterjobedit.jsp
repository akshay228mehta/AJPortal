<%-- 
    Document   : afterjobedit
    Created on : Sep 2, 2013, 12:52:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
   try
           {
       int param =Integer.parseInt(request.getParameter("var"));
       String email = (String)session.getAttribute("company_email");
        String name=request.getParameter("name");
         String id=request.getParameter("jobid");
   String ct=request.getParameter("criteria");
String p=request.getParameter("post");
   String vac=request.getParameter("vacancy") ;

    String sal=request.getParameter("salary") ;

    config c =new config();
    Connection con=c.getcon();
    String Query= "update jobdetail set name='"+name+"',post='"+p+"', jobid='"+id+"',vaccancy ='"+vac+"', salary ='"+sal+"',criteria ='"+ct+"' where id="+param+"";

   Statement stmt=con.createStatement();
    stmt.executeUpdate(Query);

    }
   catch(Exception e)
           { e.printStackTrace();
             }
   %>
      <html>
  <body>

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">Edited successfully ..!!</span>

        </body>

   </html>