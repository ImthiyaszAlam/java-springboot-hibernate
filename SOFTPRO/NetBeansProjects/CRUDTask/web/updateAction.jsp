<%@ page import="connectionmaker.DBManagerTask" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Action</title>
</head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String mobileNo = request.getParameter("mobileNo");

    String query = "UPDATE registration SET name = '" + name + "', email = '" + email + "', gender = '" + gender + "', mobileno = '" + mobileNo + "' WHERE id = " + id;

    try {
        DBManagerTask db = new DBManagerTask();
        if (db.insertUpdateDelete(query)) {
            out.print("<script>alert('Record Updated Successfully');window.location.href='viewdatabase.jsp';</script>");
        } else {
            out.print("<script>alert('Failed to Update Record');window.location.href='viewdatabase.jsp';</script>");
        }
    } catch (SQLException ex) {
        out.println("Error: " + ex.getMessage());
    } catch (ClassNotFoundException ex) {
        out.println("Error: " + ex.getMessage());
    }
%>
</body>
</html>
