<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="connectionmaker.DBManagerTask"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page language="java"%>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("emailAddress");
    String password = request.getParameter("password");

    String loginQuery = "SELECT name, email, password FROM login WHERE name = '" + name + "' AND email = '" + email + "' AND password = '" + password + "'";

    try {
        DBManagerTask db = new DBManagerTask();
        ResultSet rs = db.select(loginQuery);

        if (rs.next()) {
            // Login successful, redirect to index.jsp
            response.sendRedirect("index.jsp");
        } else {
            out.print("<script> alert('Invalid user'); window.location.href='login.jsp'; </script>");
        }
    } catch (SQLException e) {
        e.printStackTrace(System.out);
        // Handle SQL exception here, if needed
    } catch (ClassNotFoundException e2) {
        e2.printStackTrace(System.out);
        // Handle class not found exception here, if needed
    }
%>
