<%-- 
    Document   : response
    Created on : May 2, 2024, 10:44:09 AM
    Author     : Muhammed Imthiyas
--%>

<%
    if (session.getAttribute("userid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM for MARC Lab Customer Home</title>
        <link href="../css/bootstrap.css" rel="stylesheet"type="text/css"/>
        <link href="../js/bootstrap.bundle.js" type="text/javascript" rel="javascript"/>

    </head>
    <body>
        <h1>Welcome , <%= session.getAttribute("userid")%>   </h1>

        <div class="container">
            <%@include  file="menu.jsp" %>

            <div class="row mt-2">
                <div class="col-sm-12" style="background-color: aqua; min-height: 600px;  " >
                    <h2 style="text-align:center;">Submit your Response</h2>

                    <form method="post" action="responsecode.jsp" class="form-group"  >
                        <table class="table" style="margin-auto">
                            <tr>
                                <td>Select Response Type</td>
                                <td>
                                    <select name="responsetype" class="form-control">
                                        <option>Select</option>
                                        <option>Feedback</option>
                                        <option>Complaint</option>
                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td>Select Subject</td>
                                <td>
                                    <input type="text" name="subject" placeholder="select subject" class="form-control" />
                                </td>
                            </tr>

                            <tr>
                                <td>Enter your response </td>
                                <td>
                                    <textarea name="responsetext" class="form-control"></textarea>
                               <td>
                            </tr>

                            <tr>
                                <td> </td>
                                <td>
                                    <button class="btn btn-primary form-control" type="submit" >Submit Response</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <%@include file="../footer.jsp" %>

            </div>
        </div>
    </body>
</html>
