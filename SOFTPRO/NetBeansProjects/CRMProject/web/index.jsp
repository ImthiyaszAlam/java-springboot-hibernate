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
                <div class="col-sm-8" style="background-color: green; min-height: 600px"></div>
            </div>


            <%@include file= "footer.jsp" %>
        </div>
    </body>
</html>
