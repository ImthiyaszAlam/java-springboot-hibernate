<%-- 
    Document   : profile
    Created on : May 2, 2024, 12:28:31 PM
    Author     : Muhammed Imthiyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (session.getAttribute("userid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM for MARC Lab Customer Home</title>
        <link href="../css/bootstrap.css" rel="stylesheet"type="text/css"/>
        <link href="../js/bootstrap.bundle.js" type="text/javascript" rel="javascript"/>
        
    </head>
    <body>
        <h1>Welcome , <%= session.getAttribute("userid")%>   </h1>

        <div class="container">
            <%@include  file="menu.jsp" %>
            
            <div class="row mt-2">
                <div class="col-sm-12" style="background-color: aqua; min-height: 600px;  " >
                    <h2 style="text-align: center;" >My Profile</h2>
                    <%
                    DbManager db = new DbManager();
                    String userid = session.getAttribute("userid").toString();
                    String query = "select * from registration where email = '"+userid+"'";
                    ResultSet rs = db.select(query);
                    if(rs.next()){
                    }
                    %>
                    
                    <table class="table" style="width: 60%; margin:auto " >
                        <tr>
                            <td>Name</td>
                            <td><%=rs.getString("name")%></td>
                        </tr>
                         <tr>
                            <td>Gender</td>
                            <td><%=rs.getString("gender")%></td>
                        </tr>
                         <tr>
                            <td>Contact No</td>
                            <td><%=rs.getString("contactno")%></td>
                        </tr>
                        
                         <tr>
                            <td>Email Address</td>
                            <td><%=rs.getString("email")%></td>
                        </tr>
                        
                        <tr>
                            <td> Address</td>
                            <td><%=rs.getString("address")%></td>
                        </tr>
                    </table>
                    
                </div>
                <%@include file="../footer.jsp" %>
                
            </div>
        </div>
    </body>
</html>
