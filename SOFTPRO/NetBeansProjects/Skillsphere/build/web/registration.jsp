<%-- 
    Document   : registration.jsp
    Created on : May 1, 2024, 11:19:58 PM
    Author     : Muhammed Imthiyas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" />
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <title>Landing Page</title>
    </head>
    <body class="bg-dark text-light">
        <%@include file="/components/navbar.jsp" %>
        <div class=" pt-5 col-sm-12 d-flex justify-content-center align-items-center row mt-5">
            <div class="container-fluid col-sm-6" >
                <h2 style="text-align: center;">Registration</h2>
                <form id="loginForm" onsubmit="event.preventDefault();
                        validateLogin();" class="mt-5" >
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Name</label>
                        <input style="border-radius: 50px" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Gender</label>
                        <select style="border-radius: 50px" class="form-control">
                            <option>Select</option>
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Mobile No</label>
                        <input style="border-radius: 50px" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input style="border-radius: 50px" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                   </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input style="border-radius: 50px" type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button style="border-radius: 50px" type="submit" class=" form-control btn btn-primary">Sign Up</button>

                </form>
            </div>


        </div>
        
        <%@include file="/components/footer.jsp" %>
    </body>
</html>
