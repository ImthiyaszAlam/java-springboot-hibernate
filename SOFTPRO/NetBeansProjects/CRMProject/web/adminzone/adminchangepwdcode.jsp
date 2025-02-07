<%-- 
    Document   : adminchangepwdcode
    Created on : May 4, 2024, 11:26:48 AM
    Author     : Muhammed Imthiyas
--%>


<%@page import="connect.DbManager"%>
<%
    String oldpassword = request.getParameter("oldpassword");
    String newpassword = request.getParameter("newpassword");
    String confirmpassword = request.getParameter("confirmpassword");

    if (newpassword.equals(confirmpassword)) {
        DbManager db = new DbManager();
        String adminid = session.getAttribute("adminid").toString();
        String updateQuery = "update login set password  = '" + newpassword + "' where userid = '" +adminid+ "' and password = '" +oldpassword+ "'";
    
    
        if(db.insertUpdateDelete(updateQuery) == true){
        response.sendRedirect("../customerzone/logout.jsp");
        }
        else{
            out.print("<script> alert('Password didn't change);  window.location.href='changepassword.jsp'; </script>");
 }
        
    } else {
        out.print("<script> alert('Password mismatch');  window.location.href='changepassword.jsp'; </script>");
    }
%>
