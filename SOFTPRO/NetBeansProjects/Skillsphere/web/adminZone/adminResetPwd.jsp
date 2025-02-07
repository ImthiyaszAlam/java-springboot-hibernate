<%-- 
    Document   : adminchangepwd
    Created on : May 4, 2024, 11:24:13 AM
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
                      <h2 style="color: blue; text-align: center">Admin Change Password </h2>

                    <form class="form-group" action="adminchangepwdcode.jsp" method="post">
                        <table style="width: 70%; margin: auto">
                            <tr>
                                <td>Enter old password</td>
                                <td>
                                    <input type="password" placeholder="enter old password" required name="oldpassword" class="form-control form-label" />
                                </td>
                            </tr>

                            <tr>
                                <td>Enter New password</td>
                                <td>
                                    <input type="password" placeholder="enter new password" required name="newpassword" class="form-control form-label" />
                                </td>
                            </tr>

                            <tr>
                                <td>Confirm New password</td>
                                <td>
                                    <input type="password" placeholder="confirm new password" required name="confirmpassword" class="form-control form-label" />
                                </td>
                            </tr>

                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" name="changebutton" class="btn btn-primary form-control" >Change Password</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            
            <%@include file='../footer.jsp' %>
        </div>
    </body>
</html>

