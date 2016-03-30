<%--
    Document   : upload_file_multipale
    Created on : Sep 11, 2013, 12:51:06 PM
    Author     : Surbhi
--%>


<%@page import="java.sql.*" %>
 <%@ page import="java.util.List" %>
   <%@ page import="java.util.Iterator" %>
   <%@ page import="java.io.File,java.util.*" %>
   <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
   <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.*"%>
   <%@ page contentType="text/html;charset=UTF-8" language="java" %>
   <%@page import="com.oreilly.servlet.MultipartRequest" %>
   <center><table border="2">
        <%--<tr><td><h1>Your files  uploaded </h1></td></tr>--%>
   <%
   try
           {

        String e = (String)session.getAttribute("company_email");
   String itemName=null;

  Connection con=null;


 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 } else {
                  //name=request.getParameter("rname");

                   //System.out.println("Your name is:::"+name);
	   FileItemFactory factory = new DiskFileItemFactory();
	   ServletFileUpload upload = new ServletFileUpload(factory);
	   List items = null;
	   try {
		   items = upload.parseRequest(request);


	   } catch (FileUploadException e1) {
		   e1.printStackTrace();
	   }
	   Iterator itr = items.iterator();
	   while (itr.hasNext()) {
	   FileItem item = (FileItem) itr.next();
	   if (item.isFormField()) {
	   } else {
		   try {
			   itemName = item.getName();
                           //System.out.println("Your file is:::"+itemName);
			   File savedFile = new File(config.getServletContext().getRealPath("/")+"upload/"+itemName);
			   item.write(savedFile);


			   //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
		   } catch (Exception e1) {
			   e1.printStackTrace();
		   }
	   }
	   }
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","");




     String Query="update company_registration set logo='"+itemName+"' where email='"+e+"'";
  //  String Query="insert into uploadin(`picname`)values('"+itemName+"')";


   Statement stmt=con.createStatement();
   int Result=stmt.executeUpdate(Query);
 //  out.println("Result Is::::::::::::"+Result);
    if(Result==1)
       {
          response.sendRedirect("company.jsp");
          }
   else
       {
         response.sendRedirect("company.jsp");
         }
   }

 } catch (Exception e) {
			   e.printStackTrace();
		   }
   %>
    </table>
   </center>