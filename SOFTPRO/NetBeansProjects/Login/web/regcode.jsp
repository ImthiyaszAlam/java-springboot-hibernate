<%@page import="connection.DbManager"%>
<%
    String name = request.getParameter("name");
    String contactno = request.getParameter("contactno");
    String gender = request.getParameter("gender");
    String email = request.getParameter("emailaddress");

    DbManager db = new DbManager();

    String query1 = "insert into registration(name,contactno,gender,email) values('" + name + "','" + contactno + "','" + gender + "','" + email + "')";
    if (db.insertUpdateDelete(query1) == true) {
        out.print("<script> alert('Registered'); window.location.href='index.jsp';</script>");
    } else {
        out.print("<script>alert('Not Registered'); window.location.href='index.jsp';</script>");
    }
%>