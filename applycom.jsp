<%-- 
    Document   : applycom
    Created on : Nov 14, 2013, 1:41:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="connect.*,java.sql.*,javax.mail.Message"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try
                {
String email = (String)session.getAttribute("user_email");
//out.println("Login userrrrrrrrrrr::::::"+email);
String v = request.getParameter("var");
String cname = request.getParameter("cname");
//out.println("Company email:::::::::::::::"+v);
String em=null;
String nam=null;
int Result2=0;
String ema = null;
String n = null;
String co = null;
if(email != null)
    {

config c =new config();
   Connection con=c.getcon();
/*   out.println(con);
String Query= "select * from company_registration where id='"+v+"'";
out.println(Query);
   Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(Query);

  if(rs.next())
      {
       em = rs.getString("email");
       nam=rs.getString("name");
out.println(em);

}
*/
String Query1= "select * from resume where email='"+email+"'";
//out.println("hiiii"+Query1);
   Statement stmt1=con.createStatement();
  ResultSet rs1=stmt1.executeQuery(Query1);
  if(rs1.next())
      {
      ema = rs1.getString("email");
       n = rs1.getString("name");
        co = rs1.getString("contact");
         String r = rs1.getString("resum");
         String cat = rs1.getString("categry");
         String d = rs1.getString("designation");
//out.println(ema);
 


 String msg="Name "+n+" ,Email "+ema+", Contact_No.  "+co+",Category "+cat+" ,Address "+d+"";
 //out.println(msg);
   // SendMail mv=new SendMail(em,msg);
    //   mv.sms2();
// out.println("befor mailing");
   Main m=new Main(v,msg,r);
  // out.println("intermediate"+m);
   m.sms2();
   //Message resulttttttt = m.sms2();
//out.print("Succesfully mailed");
     //out.println(m);
     //m.buildSimpleSession();
    //Main.main(String[] args);
}

  String Query2="insert into applied_candidate(company,email,username,user_email,contact)values('"+cname+"','"+v+"','"+n+"','"+ema+"','"+co+"')";


   Statement stmt2=con.createStatement();
    Result2=stmt2.executeUpdate(Query2);
  

  

%>

                    <span style=" font-size: 30px; font-style:  italic; color: navy;">Applied successfully ..!!</span>


    </body>

</html>
  <%

}
else
    {

out.print("Please login first");
}

}
        catch(Exception e)
                {

      e.printStackTrace();
      }
%>

