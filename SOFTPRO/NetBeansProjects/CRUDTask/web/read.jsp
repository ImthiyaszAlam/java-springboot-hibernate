<%@page import="java.sql.ResultSet"%>
<%@page import="connectionmaker.DBManagerTask"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Read Record</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body class="bg-dark text-light">
        <%@include file="navbarheader.jsp" %>
        <div class="container">
            <h1 class="text-center mt-3 ">Record Details</h1>
            <table class="table table-bordered mt-3">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Mobile No</th>
                        <th>Password</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        DBManagerTask db = new DBManagerTask();
                        String query = "select * from registration where id=" + id;
                        ResultSet rs = db.select(query);
                        if (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("mobileno")%></td>
                        <td><%=rs.getString("password")%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
            <div class="col-sm-3">
                <a href="viewdatabase.jsp" class="btn btn-secondary form-control">Back</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
