<%-- 
    Document   : regcode
    Created on : May 2, 2024, 10:58:23 PM
    Author     : Muhammed Imthiyas
--%>

<%@page import="connectivity.DbManager"%>
<%
    String name = request.getParameter("regname");
    String gender = request.getParameter("reggender");
    String address = request.getParameter("regaddress");
    String contactno = request.getParameter("regcontactno");
    String emailaddress = request.getParameter("regemailaddress");
    String password = request.getParameter("regpassword");
    String usertype = "Student";
    
    
    DbManager db = new DbManager();
    String query1 = "insert into registration values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"')";
    String query2 = "insert into login values('"+emailaddress+"', '"+password+"','"+usertype+"')";
    if(db.dml(query1) == true){
    if(db.dml(query2) == true){
        out.print("<script>alert('Registration done');window.location.href='index.jsp';</script>");
    }else{
        out.print("<script>alert('Registration failed');window.location.href='index.jsp';</script>");
        
    }
    }
%>
