<%-- 
    Document   : afterregister
    Created on : Jul 31, 2013, 11:54:35 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="connect.*,java.sql.*, sun.misc.*,java.security.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   try
           {
       int s=0;
      String login="user";
       String code=null;
       int Result=0;

      // MultipartRequest m=new MultipartRequest(request,"C:/Users/Administrator/Documents/NetBeansProjects/jobportal/web/upload/");
   String name=request.getParameter("rname");
  // out.print(name);
   String gen=request.getParameter("rgen");
   //out.print(gen);
   String dob=request.getParameter("db");
   //out.print(dob);
   String city=request.getParameter("radd");
   //out.print(city);
   String clg=request.getParameter("rc");
   //out.print(clg);
   String email=request.getParameter("remail");
   //out.print(email);
   String pass =request.getParameter("rpass");
   //out.print(pass);
  String pic = "3.jpg";
   
    //String pic=m.getFilesystemName("rp");
    

    MessageDigest md5=MessageDigest.getInstance("MD5");
    md5.update(pass.getBytes(),0,pass.getBytes().length);
   byte[] newpass=md5.digest(pass.getBytes());

   String finalpassword=new BASE64Encoder().encode(newpass);


   config c =new config();
   Connection con=c.getcon();
   AuthCode authCode=new AuthCode();
    code=authCode.generateCode();
   String Query="insert into register(Myname,Iam,Birthday,Ilivein,CollegeName,EmailId,Password,uploadpic,status,loginAs,Auth_Code)values('"+name+"','"+gen+"','"+dob+"','"+city+"','"+clg+"','"+email+"','"+finalpassword+"','"+pic+"',1,'user','"+code+"')";

//out.print(Query);
   Statement stmt=con.createStatement();
    Result=stmt.executeUpdate(Query);

    //out.print(Result);
   //String msg="Your verification CODE is:"+code+" .<br/>To verify Click on this link-- http://localhost:8084/jobportal/Verification.jsp?Email="+email+"&Auth_code="+code+"";
                 
                 //SendMail mv=new SendMail(email, msg);
                // mv.sms2();
                // out.print("To Login verify yourself.");
               



   if(Result==1)
       {
         out.print("Success");
          }
   else
       {
         response.sendRedirect("afterregister.jsp");
         }
   }
   
   catch(Exception e)
           { e.printStackTrace();
             }
   %>