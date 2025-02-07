<%@page import="connection.DbManager"%>
<%
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String contactno = request.getParameter("contactno");
    String password = request.getParameter("password");

    String query = "insert into registration values ('" + name + "','" + fname + "','" + gender + "','" + email + "','" + contactno + "','" + password + "')";
    DbManager db = new DbManager();
    if (db.insertUpdateDelete(query) == true) {
        out.print("<script> alert('Registration is done'); window.location.href='index.jsp'</script>");
    } else {
        out.print("<script> alert('Registration not done'); window.location.href='index.jsp'</script>");
    }
%>
