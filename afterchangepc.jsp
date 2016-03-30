<%--
    Document   : changepassword
    Created on : Aug 10, 2013, 9:59:24 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>
<%
try
{


       String email = (String)session.getAttribute("company_email");
       if(email != null)
           {


String e = (String)session.getAttribute("email");
   String old=request.getParameter("ol");
   String New=request.getParameter("ne") ;

    MessageDigest md5=MessageDigest.getInstance("MD5");
   md5.update(old.getBytes(),0,old.getBytes().length);
    byte[] newpass=md5.digest(old.getBytes());

   String finalpassword=new BASE64Encoder().encode(newpass);

  // out.println("old pss is:"+finalpassword);


    md5.update(New.getBytes(),0,New.getBytes().length);
   byte[] newpass1=md5.digest(New.getBytes());

   String finalpassword1=new BASE64Encoder().encode(newpass1);
   //out.println("new pss is:"+finalpassword1);
config c =new config();
   Connection con=c.getcon();
    String Query= "Update register set Password='"+finalpassword1+"' where EmailId='"+e+"' and Password='"+finalpassword+"'";
   String Query1= "Update company_registration set pass='"+finalpassword1+"' where email='"+e+"' and pass='"+finalpassword+"'";
    //out.print("password has been changed successful");

   Statement stmt=con.createStatement();
    stmt.executeUpdate(Query);

stmt.executeUpdate(Query1);


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

                    <span style=" font-size: 30px; font-style:  italic; color: blue;">Password has been changed successfully ..!!</span>

        </body>

   </html>