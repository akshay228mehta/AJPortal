<%-- 
    Document   : afterlogin
    Created on : Jul 31, 2013, 11:54:51 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
   try
           {
   String m=request.getParameter("mail");
   String p=request.getParameter("pass");

   MessageDigest md5=MessageDigest.getInstance("MD5");
   md5.update(p.getBytes(),0,p.getBytes().length);
   byte[] newpass=md5.digest(p.getBytes());
   
   String finalpassword=new BASE64Encoder().encode(newpass);
//out.println(finalpassword);
config c =new config();
   Connection con=c.getcon();
String Query= "select * from register where EmailId='"+m+"' and Password='"+finalpassword+"'";
out.println(Query);
   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);
  if(rs.next())
      {
         String login=rs.getString("loginAs");
         int s=rs.getInt("status");
         if(login.equals("admin"))
             {
                 session.setAttribute("admin_email",m);
                 response.sendRedirect("admin.jsp");
              }
        else if(login.equals("user") && s==1)
        {
             session.setAttribute("user_email",m);
            response.sendRedirect("profile.jsp");
         }
     else if(login.equals("company"))
        {
             session.setAttribute("company_email",m);
          response.sendRedirect("company.jsp");
         }
         else
             {
              response.sendRedirect("verifypage.jsp");
               out.println(" please varify yourself");
               }
     }
   else
  {
      session.setAttribute("error", "wrong login details");
   response.sendRedirect("index.jsp");
   }


 }
  catch(Exception e)
           { e.printStackTrace();
             }
   %>