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
       String email = (String)session.getAttribute("admin_email");

       String name = request.getParameter("cname");
       if(email != null)
           {
    //   MultipartRequest m=new MultipartRequest(request,"C:/Users/Administrator/Documents/NetBeansProjects/jobportal/web/resumes/");
        //String email = (String)session.getAttribute("email");

    //String name=request.getParameter("name");
     //out.print(name);

   String g=request.getParameter("gd");
// out.print(g);






   config c =new config();
   Connection con=c.getcon();

   //String Query="insert into grade (name,grading) values('"+name+"','"+g+"')";
     String Query= "update company_registration set grade='"+g+"' where name='"+name+"'";
   //out.print(Query);

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

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">  Submitted successfully ..!!</span>

        </body>

   </html>