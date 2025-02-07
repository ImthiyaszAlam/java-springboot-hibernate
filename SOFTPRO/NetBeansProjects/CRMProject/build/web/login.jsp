<%-- 
    Document   : index.jsp
    Created on : Apr 24, 2024, 11:03:37 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark crm</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script>
            function validate() {
                var userId = document.getElementById("userId");
                var password = document.getElementById("passwordLogin");
                if (userId.value == "" || userId.value == null) {
                    alert("Please Enter user id");
                    userId.focus();
                } else if (password.value == "" || password.value == null) {
                    alert("please Enter password");
                    password.focus();
                } else {
                    document.getElementById("loginForm").submit();
                }
            }
        </script>
    </head>
    <body>
        <div class="container">

            <%@include file="header.jsp" %>

            <div class="row mt-2">
                <div class="col-sm-4" style="background-color: aqua; min-height: 600px"></div>
                <div class="col-sm-8" style="background-color: green; min-height: 600px">

                    <h2 style="text-align: center">Login Form</h2>
                    <form id="loginForm" onsubmit="event.preventDefault();
                            validate();" class="form-group" action="logcode.jsp" method="post">

                        <table class="table" style="margin-auto">
                            <tr>
                                <td>Enter userId</td>
                                <td>
                                    <input type="text" name="userid" id="userId" class="form-control"/>
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Password</td>
                                <td>
                                    <input type="password" name="password" id="passwordLogin" class="form-control"/>
                                </td>
                            </tr>

                            <tr>
                                <td>Select User Type</td>
                                <td >
                                    <select class="form-control">
                                        <option value="user">Customer</option>
                                        <option values="admin">Admin</option>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                                <td>
                                    <button class="form-control btn btn-success">Login</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>


            <%@include file= "footer.jsp" %>
        </div>
    </body>
</html>
