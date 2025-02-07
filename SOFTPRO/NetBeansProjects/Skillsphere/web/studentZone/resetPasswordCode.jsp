<%-- 
    Document   : changepwdcode
    Created on : May 1, 2024, 12:11:50 PM
    Author     : Muhammed Imthiyas
--%>


<%@page import="connect.DbManager"%>
<%
    String oldpassword = request.getParameter("oldpassword");
    String newpassword = request.getParameter("newpassword");
    String confirmpassword = request.getParameter("confirmpassword");

    if (newpassword.equals(confirmpassword)) {
        DbManager db = new DbManager();
        String userid = session.getAttribute("userid").toString();
        String updateQuery = "update login set password  = '" + newpassword + "' where userid = '" +userid+ "' and password = '" +oldpassword+ "'";
    
    
        if(db.insertUpdateDelete(updateQuery) == true){
        response.sendRedirect("logout.jsp");
        }
        else{
            out.print("<script> alert('Password didn't change);  window.location.href='changepassword.jsp'; </script>");
 }
        
    } else {
        out.print("<script> alert('Password mismatch');  window.location.href='changepassword.jsp'; </script>");
    }
%>



