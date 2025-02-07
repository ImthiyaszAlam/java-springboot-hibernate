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
    </head>
    <body>
        <div class="container">

            <%@include file="header.jsp" %>

            <div class="row mt-2">
                <div class="col-sm-4" style="background-color: aqua; min-height: 600px"></div>
                <div class="col-sm-8" style="background-color: green; min-height: 600px">
                    <h2 style="text-align: center">User Registration Form</h2>
                    <form class="form-group " action="regcode.jsp" method="post" >
                        <table class="table" style="margin-auto">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" placeholder="Enter name" required class="form-control"/>
                                </td>
                            </tr>

                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                 <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <textarea name="address" placeholder="enter Address" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter contact number</td>
                                <td>
                                    <input type="number"  placeholder="enter contact no" name="contactno" class="form-control" />
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter email address</td>
                                <td>
                                    <input type="email" placeholder="enter email" name="emailaddress" required class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Password</td>
                                <td>
                                    <input type="password" placeholder="enter password" name="password" class="form-control" required/>
                                </td>
                            </tr>
                                      <tr>
                                <td>Confirm Password</td>
                                <td>
                                    <input type="password" placeholder="confirm password" name="confirmpassword" class="form-control" required/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success form-control">Register</button>
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
