<%-- 
    Document   : logout
    Created on : May 1, 2024, 11:22:01 AM
    Author     : Muhammed Imthiyas
--%>


<%
  session.invalidate();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout(){
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
        </script>
    </head>
    <body style="background-color: black" onload="logout()">
        
    </body>
</html>

