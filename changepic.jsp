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

//Session Getting Process
   String e = (String)session.getAttribute("user_email");
   String itemName=null;
   String name=null;
   Connection con=null;


 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 //Coding If Your Form Is Not Multipart
 } else {
                  //name=request.getParameter("rname");

                   //System.out.println("Your name is:::"+name);
				   
	   FileItemFactory factory = new DiskFileItemFactory();            // For converting source values into byte code
	   ServletFileUpload upload = new ServletFileUpload(factory);      // For Uploading File
	   List items = null;                                              // For Listing A File Bytes
	   try {
		   
		   items = upload.parseRequest(request);

	   } catch (FileUploadException e1) {
		   e1.printStackTrace();
	   }
	   
	   Iterator itr = items.iterator(); //For uploading each and every byte into folder
	  
	   
	   while (itr.hasNext()) {
	   FileItem item = (FileItem) itr.next();
	   
	   
	   
	   
	   
	   
	   if (item.isFormField()) {
	   
	   
	      itemName = item.getName(); //Getting Name Of The Field
		  if(itemName.equals("name")) //Checking Field name
		  {
		     name=item.getString();      //Fetching Value Of The Field
		  }
	     //If Your Form Containing Textfileds
	   
	   } else {
		   try {
			   itemName = item.getName();//File Name
			   //Rename Coding
			   //Resize
                           //System.out.println("Your file is:::"+itemName);
			   File savedFile = new File(config.getServletContext().getRealPath("/")+"upload/"+itemName); //File Object Creation And Initialized with uplaoding location
			   item.write(savedFile); //Writing All Bytes /Data Into Folder


			   //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
		   } catch (Exception e1) {
			   e1.printStackTrace();
		   }
	   }
	   }
	   
	   
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","");




     String Query="update register set uploadpic='"+itemName+"' where EmailId='"+e+"'";
  //  String Query="insert into uploadin(`picname`)values('"+itemName+"')";


   Statement stmt=con.createStatement();
   int Result=stmt.executeUpdate(Query);
 //  out.println("Result Is::::::::::::"+Result);
    if(Result==1)
       {
          response.sendRedirect("profile.jsp");
          }
   else
       {
         response.sendRedirect("profile.jsp");
         }
   }

 } catch (Exception e) {
			   e.printStackTrace();
		   }
   %>
    </table>
   </center>