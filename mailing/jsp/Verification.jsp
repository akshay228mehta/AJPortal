<%-- 
    Document   : Verification
    Created on : 10 Jan, 2013, 11:41:23 PM
    Author     : Heena
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String auth =  request.getParameter("Auth_code");
  String email=  request.getParameter("Email");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping", "root", "");
    String query="Update registration set status=1 where Auth_code='"+auth+"' and email='"+email+"'";
    Statement st=con.createStatement();
    st.executeUpdate(query);
    
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Verification</title>
    </head>
    <body>
        <h1>You are successfully verified. </h1>
            <h3>Now Login and update your profile and enjoy the services..</h3>
        <a href="Webpage1.html"> Home </a>
    </body>
</html>
