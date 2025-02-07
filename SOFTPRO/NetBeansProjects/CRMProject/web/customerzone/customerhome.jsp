<%-- 
    Document   : customerhome
    Created on : Apr 27, 2024, 12:10:13 PM
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
                    
                </div>
                <%@include file="../footer.jsp" %>
                
            </div>
        </div>
    </body>
</html>
