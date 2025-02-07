<%-- 
    Document   : complaints
    Created on : May 4, 2024, 10:43:41 AM
    Author     : Muhammed Imthiyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Home</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js" type="text/javascript" ></script>
    </head>
    <body>
        <div class="container" >

            <%@include file='adminheader.jsp' %>

            <div class="row">
                <div class="col-sm-12" style="background-color: gray; min-height: 600px;  " >
                    <h2 style="color: blue; text-align: center; ">View Complaints</h2>
                    <table class="table table-border" style="width: 80%; margin: auto">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Contact No</th>
                            <th>Email Address</th>
                            <th>Subject</th>
                            <th>Complaint Text</th>
                             <th>Delete </th>
                        </tr>
                        <%
                            DbManager db = new DbManager();
                            String query = "select * from response where responsetype='Complaint'";
                            ResultSet rs = db.select(query);
                            while (rs.next()) {

                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("name")%> </td>
                            <td><%=rs.getString("contactno")%> </td>
                            <td><%=rs.getString("emailaddress")%> </td>
                            <td><%=rs.getString("subject")%> </td>
                            <td><%=rs.getString("responsetext")%></td>
                            
                             <td>
                                <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                        <button type="button" class="btn btn-danger">Delete</button>
                             
                                </a>
                           </td>
                        </tr>
                        <%}%>
                    </table>
                </div>
            </div>

            <%@include file='../footer.jsp' %>
        </div>
    </body>
</html>
