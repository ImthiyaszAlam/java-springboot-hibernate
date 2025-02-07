<%-- 
    Document   : index
    Created on : Jun 8, 2024, 4:01:01 PM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Registration Form</h1>
            <form action="regcode.jsp" method="post">
                <table>
                    <tr>
                        <td>Enter Your Name</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Enter Your Father name</td>
                        <td><input type="text" name="fname"></td>
                    </tr>
                    <tr>
                        <td>Enter Your Gender</td>
                        <td><input type="radio" name="gender"> Male
                            <input type="radio" name="gender"> Female
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Your Email</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>Enter Contact No.</td>
                        <td><input type="number" name="contactno"></td>
                    </tr>
                    <tr>
                        <td>Enter Password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td>
                    <button type="submit">Register</button>
                   
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
