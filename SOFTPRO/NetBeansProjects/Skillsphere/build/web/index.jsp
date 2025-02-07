<%-- 
    Document   : index
    Created on : Apr 28, 2024, 12:25:20 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/68bda705f2.js" crossorigin="anonymous"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <title>Home Page</title>
        <style>
            .headerMarginTop{
                margin-top: 100px;
            }
            ul li{
                list-style: none;
                text-transform: capitalize;
            }
            ul li a{
                text-decoration: none;
            }
            p{
                text-align: justify;
            }
        </style>
    </head>
    <body class="bg-dark text-light">

        <div class="container">
            <%@include file="./components/navbar.jsp" %>
            <%@include file="./components/intro.jsp" %>
            <%@include file="./components/companies.jsp" %>
            <%@include file="./components/eduintro.jsp" %>
            <%@include file="./components/benefits.jsp" %>
            <%@include file="./components/popcourses.jsp" %>
            <%@include file="./components/testimonials.jsp" %>
            <%@include file="./components/mentors.jsp" %>
            <%@include file="./components/blog.jsp" %>
             
        </div>
<%@include file="./components/footer.jsp" %>
    </body>
</html>
