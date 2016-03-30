<%-- 
    Document   : cmpnyadd
    Created on : Aug 31, 2013, 12:39:20 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <style type="text/css">
            <!--
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #993300;
            }
            .style2 {
                color: #000000;
                font-weight: bold;
            }
            -->

            #detail
{
height:auto;
width:auto;
position:relative;
margin-left:10px;
margin-top:-10px;
z-index:2000;
}
#mask
{
height:100%;
width:100%;
background-color:gray;
margin:0px;
padding:0px;
top:0px;
left:0px;
position:fixed;
z-index:50;
opacity:0.7;
}
.se10
{
    height: 25px;
    width: 70px;
    background: url(image/sub.jpg);
    background-repeat: no-repeat;
    background-position: center;


}
        </style>
        <script language="javascript">
            function check()
            {
				
                                 if(document.form1.name.value=="")
                {
                    alert("Enter Company Name");
                    document.form1.name.focus();
                    return false;
                }


                if(document.form1.jobid.value=="")
                {
                    alert("Enter Job Id");
                    document.form1.jobid.focus();
                    return false;
                }
				
            	
                if(document.form1.post.value=="")
                {
                    alert("Enter Post");
                    document.form1.post.focus();
                    return false;
                }
                if(document.form1.criteria.value=="")
                {
                    alert("Enter Criteria");
                    document.form1.criteria.focus();
                    return false;
                }
              
                if(document.form1.vacancy.value=="")
                {
                    alert("Enter no: of Vacancies available");
                    document.form1.vacancy.focus();
                    return false;
                }
                if(document.form1.salary.value=="")
                {
                    alert("Enter Salary");
                    document.form1.salary.focus();
                    return false;
                }
		
                if(document.form1.lastdate.value=="")
                {
                    alert("Enter Last Date");
                    document.form1.lastdate.focus();
                    return false;
                }

                return true;
            }

        </script>
    </head>
    <body>

        <%
String email = (String)session.getAttribute("company_email");
if(email != null)
    {
%>
         <div id="mask"></div>
        <div id="detail">
        <table height="400px" width="400" border="0px" cellspacing="0px" align="center" bgcolor="#E3EAF4" style="border:solid #9A4E4E;  -moz-box-shadow:0 0 20px; -webkit-box-shadow:0 0 20px; border-radius:40px; margin-top: 50px;">
         <form name="form1" method="post" action="aftercmpnyadd.jsp">
                        
                            <tr >
                                <td height="30" colspan="3" align="center" >
                                    
                                    <div  class="style1"> <img src="images/sign-up-icon.png" height="50px" width="50px" align="center" /> Job Description </div></td>
                            </tr>
                            <tr height="50px"> <td colspan="3">
<img src="images/btn_blue.png" height="20px" width="500px" align="middle" />
</td> </tr>
                             <tr>
                                <td width="160" height="26" ><div align="left" class="style2">Company Name</div></td>
                                <td width="213">
                                    <label>
                                        <input name="name" id="name"type="text" size="30">
                                </label>            </td>
                            </tr>
                            <tr>
                                <td width="160" height="26" ><div align="left" class="style2">JobID</div></td>
                                <td width="213">
                                    <label>
                                        <input name="jobid" id="jobid"type="text" size="30">
                                </label>            </td>
                            </tr>
                             
                            <tr>
                                <td height="26"><div align="left" class="style2"> Name of Post </div></td>
                                <td ><input name="post" id="post" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26"><div align="left" class="style2">Criteria</div></td>
                                <td ><input name="criteria" id="criteria" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" ><div align="left" class="style2">No: of Vacancies </div></td>
                                <td><input name="vacancy" id="vacancy" type="text" size="30"></td>
                            </tr>
                             <tr>
                                <td height="26" ><div align="left" class="style2">Experience </div></td>
                                <td><input name="exp" id="exp" type="text" size="30"></td>
                            </tr>
                            
                                 <tr>
                                <td height="26" ><div align="left" class="style2">City </div></td>
                                <td><input name="city" id="city" type="text" size="30"></td>
                            </tr>
                             <tr>
                                <td height="26" ><div align="left" class="style2">Industry </div></td>
                                <td><input name="type" id="type" type="text" size="30"></td>
                            </tr>

                            <tr>
                                <td height="26" ><div align="left" class="style2">Salary/Annum</div></td>
                                <td><input name="salary" id="salary" type="text" size="30"></td>
                            </tr>
                          
                            <tr >
                                <td height="28" colspan="2">
                                    <div align="center">
                                          <button type="value" value="submit" class="se10" ></button>
                                </div>           </td>
                            </tr>
                        

         </form>
        </table>
        </div>
        </body>
</html>
<%
}
else
    {

out.println("Please Login First..!!");
}



%>