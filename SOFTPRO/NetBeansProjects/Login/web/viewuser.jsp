<%-- 
    Document   : viewuser
    Created on : May 16, 2024, 8:59:28 AM
    Author     : Muhammed Imthiyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body class="bg-info">
        <h1>Hello!</h1>
        <table class="table table-bordered mt-5" style="width: 80%; margin: auto">
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Gender</th>
                <th>Email</th>
            </tr>
            <% 
                DbManager db = new DbManager();
                String query = "select * from registration";
                ResultSet rs = db.select(query);
                while (rs.next()){
            %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("contactno")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("email")%></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
