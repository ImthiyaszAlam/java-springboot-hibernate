<%-- 
    Document   : adminhome
    Created on : May 3, 2024, 10:41:48 AM
    Author     : Muhammed Imthiyas
--%>


<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM Home</title>
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../js/bootstrap.bundle.js" type="text/javascript" ></script>
    </head>
    <body>
        <div class="container" >
            
            <%@include file='adminheader.jsp' %>
            
            <div class="row">
                <div class="col-sm-12" style="background-color: gray; min-height: 600px;  " >
                    
                </div>
            </div>
            
            <%@include file='../footer.jsp' %>
        </div>
    </body>
</html>
