<%-- 
    Document   : viewdatabasecode
    Created on : Jun 13, 2024, 9:35:21 PM
    Author     : Muhammed Imthiyas
--%>
<%@page import="connectionmaker.DBManagerTask"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    DBManagerTask db = new DBManagerTask();
    String query = "delete from registration where id = '" + id + "'";
    if (db.insertUpdateDelete(query) == true) {
        out.print("<script>alert('Deleted');window.location.href='viewdatabase.jsp';</script>");
    } else {
        out.print("<script>alert('Not Deleted');window.location.href='viewdatabase.jsp';</script>");
    }
%>
