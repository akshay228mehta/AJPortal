<%-- 
    Document   : aftercmpnyreg
    Created on : Aug 7, 2013, 1:51:25 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"  import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   try
           {
       int s=0;
       int g=0;
       String login="company";
        String code=null;
       int Result=0;

       // MultipartRequest m=new MultipartRequest(request,"C:/Users/Administrator/Documents/NetBeansProjects/jobportal/web/upload/");
   String name=request.getParameter("namec");
   String email=request.getParameter("emailc");
   String p=request.getParameter("passc");
  
   String add=request.getParameter("loc");
   String t=request.getParameter("type");
   String co=request.getParameter("conc");
   //String pic=m.getFilesystemName("cl");
   String pic = "3.jpg";
  
   MessageDigest md5=MessageDigest.getInstance("MD5");
    md5.update(p.getBytes(),0,p.getBytes().length);
   byte[] newpass=md5.digest(p.getBytes());
  
   String finalpassword=new BASE64Encoder().encode(newpass);

    config c =new config();
   Connection con=c.getcon();
   AuthCode1 authCode=new AuthCode1();
   code=authCode.generateCode();

   String Query="insert into register(EmailId,Password,status,loginAs,Auth_Code) values('"+email+"','"+finalpassword+"',0,'"+login+"','"+code+"')";

   String Query1="insert into company_registration(name,email,pass,companyadd,type,contact,grade,logo,status,loginAs,Auth_Code) values('"+name+"','"+email+"','"+finalpassword+"','"+add+"','"+t+"','"+co+"',0,'"+pic+"',0,'"+login+"','"+code+"')";
   Statement stmt=con.createStatement();
    Result=stmt.executeUpdate(Query);

   Statement stmt1=con.createStatement();
   int Result1=stmt1.executeUpdate(Query1);
   String msg="Your verification CODE is:"+code+" .<br/>To verify Click on this link-- http://localhost:8084/jobportal/Verification1.jsp?Email="+email+"&Auth_code="+code+"";
                 System.out.print("msg is" +msg);
                 //mailing preocess
                 SendMail1 mv=new SendMail1(email, msg);
                 mv.sms2();
                 //out.print("To Login verify yourself.");
                // session.setAttribute("Auth_code", code);

   if(Result==1 && Result1==1)
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
