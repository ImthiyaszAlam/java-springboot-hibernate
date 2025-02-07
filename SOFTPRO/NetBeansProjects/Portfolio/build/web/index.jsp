<%-- 
    Document   : index.jsp
    Created on : May 29, 2024, 12:11:56 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="https://kit.fontawesome.com/68bda705f2.js" crossorigin="anonymous"></script>
        <style>
            .nav-item a{
                text-decoration: none;
                color: white;
                font-family: serif;
            }
            .stylishfont{
                font-family: serif;
            }
/*            .btn-two-color-outline {
                position: relative;
                border: 2px solid transparent; 
                background-image: linear-gradient(white, white),
                    linear-gradient(to right, rgba(255, 0, 300, 0.5), rgba(0, 123, 255, 0.5));
                background-origin: border-box;
                background-clip: content-box, border-box;
                color: #007bff;
            }*/
        </style>
    </head>
    <body class="bg-dark text-white">
        <%@include file="/navbar.jsp" %>
    </body>
</html>
