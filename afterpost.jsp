<%-- 
    Document   : afterpost
    Created on : Sep 3, 2013, 2:44:35 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"   import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%
   try
             {
       String email = (String)session.getAttribute("user_email");
       if(email != null)
           {
       MultipartRequest m=new MultipartRequest(request,"C:/Users/Administrator/Documents/NetBeansProjects/jobportal/resources/");
        //String email = (String)session.getAttribute("email");
    String name=m.getParameter("user");
   String e=m.getParameter("email1");
    String ph=m.getParameter("phn");
   String exp=m.getParameter("expyears");
    String cmp=m.getParameter("company");
   String desi=m.getParameter("designation");
   String sal=m.getParameter("salary");
   String add=m.getParameter("comAddress");

   String p=m.getFilesystemName("pic");
   String s=m.getParameter("sel");

   config c =new config();
   Connection con=c.getcon();

   String Query="insert into resume(name,email,contact,resum,categry,expyr,company,designation,salary,cmpnyadd) values('"+name+"','"+e+"','"+ph+"','"+p+"','"+s+"','"+exp+"','"+cmp+"','"+desi+"','"+sal+"','"+add+"')";

  // out.print("Resume has been posted successfully");
   Statement stmt=con.createStatement();
   int Result=stmt.executeUpdate(Query);

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

                    <span style=" font-size: 30px; font-style:  italic; color: navy;"> Resume has been posted successfully ..!!</span>

        </body>

   </html>