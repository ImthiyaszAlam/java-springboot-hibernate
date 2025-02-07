<%@page import="java.sql.ResultSet"%>
<%@page import="connectionmaker.DBManagerTask"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Database View</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body class="bg-dark text-light">

        <%@include file="navbarheader.jsp" %>
        <div class="container ">
            <h1 class="text-center mt-5">Database Records</h1>
            <div class="col-sm-3">
                
            <a style="widows: 50%" href="create.jsp" class="btn btn-primary mb-3 form-control">Create New Record</a>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Mobile No</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DBManagerTask db = new DBManagerTask();
                        String query = "select * from registration";
                        ResultSet rs = db.select(query);
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("mobileno")%></td>
                        <td>
                            <a href="delete.jsp?id=<%=rs.getInt("id")%>" class="btn btn-danger">Delete</a>
                            <a href="update.jsp?id=<%=rs.getInt("id")%>" class="btn btn-warning">Update</a>
                            <a href="read.jsp?id=<%=rs.getInt("id")%>" class="btn btn-info">Read</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
