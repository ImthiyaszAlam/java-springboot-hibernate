<%-- 
    Document   : viewproducts
    Created on : May 11, 2024, 11:23:11 AM
    Author     : Muhammed Imthiyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
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
                    <h2 style="color:blue; text-align:center; ">View Products</h2>
                    
                    <table class="table table-border" style="margin: auto">
                        <tr>
                            <td>Product Id</td>
                            <td>Product Name</td>
                            <td>Mfg Date</td>
                            <td>Exp date</td>
                            <td>Price</td>
                            <td>Image</td>
                        </tr>
                                           <% 
                    DbManager db = new DbManager();
                    String query = "select * from products";
                    ResultSet rs = db.select(query);
                    while(rs.next()){

                    %>
                    <tr>
                        <td> <%=rs.getString("productid")%> </td>
                        <td> <%=rs.getString("productname")%> </td>
                        <td> <%=rs.getString("mfgdate")%> </td>
                        <td><%=rs.getString("expdate")%></td>
                        <td><%=rs.getString("price")%></td>
                        <td>
                            <img src="<%=request.getContextPath()%>/upload/<%=rs.getString("productimage")%>"  width="50" height="50"/>
                        </td>
                    </tr>
                    
                    <% } %>
                    </table>
 
                </div>
                <%@include file="../footer.jsp" %>

            </div>
        </div>
    </body>
</html>

