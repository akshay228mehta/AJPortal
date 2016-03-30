<%--
    Document   : valid
    Created on : Jun 22, 2012, 8:54:41 PM
    Author     : Aasiyana
--%>
<%@page import="mail.AuthCode"%>
<%@page import="mail.MailVerify"%>
<%--
<%@page import="org.eclipse.jdt.internal.compiler.lookup.ClassScope"%>--%>
<%@page import="java.security.MessageDigest" %>
<%@page import="com.sun.mail.smtp.DigestMD5,sun.misc.*"%>
<%@page import="mail.SendMail"%>
<%@page import="mail.generator"%>
<%@page import="mail.config" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Validation</title>
        <script src="javascript.js"> </script>
    </head>
    <%-- <body onload="setTimeout('redirect()',5000)">--%>
    <body>
        <%
       String error=(String)session.getAttribute("error");
if(error !=null)
{

out.println(error);

}


%>


<%
try
        {
    //String hex=null;
         // MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
          MessageDigest md5 = MessageDigest.getInstance("MD5");
          
           
            /*Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");*/
config c=new config();
Connection con = c.getCon();
            String first_name=request.getParameter("first_name");
            String middle_name=request.getParameter("m_name");
            String last_name=request.getParameter("last_name");
            String user_name=request.getParameter("uname");
            String email=request.getParameter("email");
            String gen=request.getParameter("gen");
            String password1=request.getParameter("password1");
            String password2=request.getParameter("password2");
             String sadd=request.getParameter("sadd");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String zip=request.getParameter("zip");
            String mob=request.getParameter("mob");
            String type="user";
            int status = 0;
            //to encrpt password

            
               md5.update(password1.getBytes(),0, password1.getBytes().length);
              // String encrptedpass = new BigInteger(1,md5.digest()).toString(16);
                byte[] digestBytes = md5.digest();
            String hashValue = new BASE64Encoder().encode(digestBytes);
            /*
             for (int i = 0; i < digestBytes.length; i++)
             {
                //Convert it to positive integer and then to Hex String

              hex = Integer.toHexString(0xFF & digestBytes[i]);
                  }
            */
               System.out.println("Signature: "+hashValue);

              /* messageDigest.update(password1.getBytes("UTF-8"));
             byte[] digestBytes = messageDigest.digest();
             System.out.print("encrypted pass is" +digestBytes);
             for (int i = 0; i < digestBytes.length; i++)
             {
                //Convert it to positive integer and then to Hex String

              hex = Integer.toHexString(0xFF & digestBytes[i]);
                  }
             /*

             msgDigest = MessageDigest.getInstance(algorithm);
            msgDigest.update(plaintext.getBytes(encoding));
            byte rawByte[] = msgDigest.digest();
            hashValue = (new BASE64Encoder()).encode(rawByte);

             */
            String query="insert into registration(fname,mname,lname,uname,email,gen,pass,cpass,address,city,state,zip,mob,utype,status,Auth_Code) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(query);


            pstmt.setString(1, first_name);
            pstmt.setString(2, middle_name);
             pstmt.setString(3, last_name);
             pstmt.setString(4, user_name);
             pstmt.setString(5, email);
            pstmt.setString(6, gen);
             pstmt.setString(7, hashValue);
              pstmt.setString(8, password2);
            pstmt.setString(9, sadd);
             pstmt.setString(10,city);
            pstmt.setString(11, state);
             pstmt.setString(12, zip);
            pstmt.setString(13, mob);
            pstmt.setString(14, type);
            pstmt.setInt(15, status);

             AuthCode authCode=new AuthCode();
             String code=authCode.generateCode();
             System.out.print("code is" +code);
             pstmt.setString(16, code);
            
            pstmt.executeUpdate();
            /*String add = request.getLocalAddr();
            System.out.print("Local Address IS:"+add);
            String rmt = request.getRemoteAddr();
            System.out.print("Remote Address IS:"+rmt);
            */session.setAttribute("Email", email);
            session.setAttribute("Auth_code", code);
          
                
                 
                 String msg="Your verification CODE is:"+code+" .<br/>To verify Click on this link-- http://localhost:8084/ashishp/Verification.jsp?Email="+email+"&Auth_code="+code+"--";
                 //System.out.print("msg is" +msg);
                 //mailing preocess
                 SendMail mv=new SendMail(email, msg);
                 mv.sms2();
                 out.print("To Login verify yourself.");
                 //session.setAttribute("Auth_code", code);

          


             
           
            // response.sendRedirect("auth.jsp");

           /*  session.setAttribute("UserName", UserNa);
              session.setAttribute("email", email);
               session.setAttribute("mob", mob);
                session.setAttribute("address", address);
                 session.setAttribute("nation", nation);
                  session.setAttribute("country", country);
                     session.setAttribute("city",city);
                     session.setAttribute("con",con);
                    response.sendRedirect("validation.jsp");*/

                        }
            catch(Exception e)
            {
                e.printStackTrace();
            }

        %>
        <h3> Your registration is being processed </h3>
    </body>
</html>
