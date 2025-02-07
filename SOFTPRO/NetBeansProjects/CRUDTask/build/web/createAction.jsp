<%@ page import="connectionmaker.DBManagerTask" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Action</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String mobileNo = request.getParameter("mobileNo");
    String password = request.getParameter("password");

    String query = "INSERT INTO registration (name, email, gender, mobileno, password) VALUES ('" + name + "', '" + email + "', '" + gender + "', '" + mobileNo + "', '" + password + "')";

    try {
        DBManagerTask db = new DBManagerTask();
        if (db.insertUpdateDelete(query)) {
            out.print("<script>alert('Record Created Successfully');window.location.href='viewdatabase.jsp';</script>");
        } else {
            out.print("<script>alert('Failed to Create Record');window.location.href='create.jsp';</script>");
        }
    } catch (SQLException ex) {
        out.println("Error: " + ex.getMessage());
    } catch (ClassNotFoundException ex) {
        out.println("Error: " + ex.getMessage());
    }
%>
</body>
</html>
