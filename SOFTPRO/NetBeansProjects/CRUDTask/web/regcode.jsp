
<%@page import="connectionmaker.DBManagerTask"%>
<%
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobileNo");
    String email = request.getParameter("emailAddress");
    String password = request.getParameter("password");
    
    
    DBManagerTask db = new DBManagerTask();
    String query1 = "insert into registration(name, gender, mobileno, email, password)  values('" + name + "' , '" + gender + "' , '" + mobile + "' , '" + email + "' , '" + password + "'  )";
    String query2 = "insert into login(email,password,name) values('" + email + "' , '" + password + "' , '" + name + "' )";
    if (db.insertUpdateDelete(query1) && db.insertUpdateDelete(query2)) {
        out.print("<script> alert('Registration is done'); window.location.href='index.jsp'</script>");
        response.sendRedirect("viewdatabase.jsp");
    } else {
        out.print("<script> alert('Registration not done'); window.location.href='index.jsp'</script>");
    }


%>
