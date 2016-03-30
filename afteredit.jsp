<%-- 
    Document   : afteredit
    Created on : Aug 26, 2013, 1:40:59 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*"%>
<%
   try
           {
       String email = (String)session.getAttribute("user_email");
       if(email != null)
           {
        String name=request.getParameter("rname");
         String dob=request.getParameter("db");
   String cty=request.getParameter("radd");

   String cnm=request.getParameter("rc") ;

config c =new config();
   Connection con=c.getcon();
   String Query= "update register set Myname='"+name+"',Birthday='"+dob+"', Ilivein='"+cty+"',CollegeName ='"+cnm+"' where EmailId='"+email+"'";
  
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

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">Your profile has been edited successfully ..!!</span>

        </body>

   </html>