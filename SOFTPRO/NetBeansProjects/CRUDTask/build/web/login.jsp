<%-- 
    Document   : login
    Created on : Jun 13, 2024, 5:11:05 PM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>  
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    </head>
    <body class="bg-dark text-light ">
        <%@include file="navbarheader.jsp" %>
        <div class="row d-flex justify-content-center ">
            <h1 class="pt-5" style="text-align: center">Login Form</h1>
            <form action="logcode.jsp" method="post" id="loginForm"  class="mt-5 "  style="width: 40%; height: auto">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Name</label>
                    <input name="name" required style="border-radius: 50px" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input name="emailAddress" required style="border-radius: 50px" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input name="password" required style="border-radius: 50px" type="password" class="form-control" id="exampleInputPassword1">
                </div>
                <button style="border-radius: 50px" type="submit" class=" form-control btn btn-primary">Login</button>

            </form>
        </div>
    </body>
</html>

