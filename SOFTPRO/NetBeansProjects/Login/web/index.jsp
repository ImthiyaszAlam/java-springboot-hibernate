<%-- 
    Document   : index
    Created on : May 16, 2024, 6:31:15 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css"rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <title>Home</title>
    </head>
    <body class="bg-dark text-light">
        <a href="viewuser.jsp">View</a>
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center      ">
                <h1 class="text-center">Registration</h1>
                <form class="form-group mt-5" method="post" action="regcode.jsp" style="width: 800px;">
                    <table class="table text-center">

                        <tr>
                            <td>Name</td>
                            <td>
                                <input name="name" class="form-control" type="text" placeholder="Enter your name"/>
                            </td>
                        </tr>

                        <tr>
                            <td>Contact No</td>
                            <td>
                                <input name="contactno" class="form-control" type="number" placeholder="Enter your name"/>
                            </td>
                        </tr>

                        <tr>
                            <td>Gender</td>
                            <td>
                                <input name="gender" value="male" type="radio" placeholder="Enter your name"/>Male
                                <input name="gender" value="female" type="radio" placeholder="Enter your name"/>Female
                            </td>
                        </tr>

                        <tr>
                            <td>Email Address</td>
                            <td>
                                <input name="emailaddress" class="form-control" type="email" placeholder="Enter your name"/>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                            <td>
                                <button class="form-control btn btn-success" type="submit"  >Submit</button>
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>

    </body>
</html>
