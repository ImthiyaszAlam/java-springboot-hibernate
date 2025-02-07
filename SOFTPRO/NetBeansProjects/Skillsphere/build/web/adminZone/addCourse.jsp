<%-- 
    Document   : product
    Created on : May 10, 2024, 11:03:57 AM
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
                    <h2  style="text-align: center; color:blue" >Add Products</h2>
                    <form class="form-group " action="../Upload" method="post"enctype="multipart/form-data">
                        <table class="table" style="width:60%; margin:auto" >
                            <tr>
                                <td>Enter Product Id</td>
                                <td>
                                    <input type="text" name="productid" placeholder="enter product id" class="form-control" required>
                                </td>
                            </tr>
                            
                              <tr>
                                <td>Enter Product name</td>
                                <td>
                                    <input type="text" name="productname" placeholder="enter product name" class="form-control" required>
                                </td>
                            </tr>
                            
                                <tr>
                                <td>Enter Mfg date</td>
                                <td>
                                    <input type="date" name="mfgdate" class="form-control" required>
                                </td>
                            </tr>
                            
                               <tr>
                                <td>Enter Expiry date</td>
                                <td>
                                    <input type="date" name="expdate" class="form-control" required>
                                </td>
                            </tr>
                            
                               <tr>
                                <td>Enter Price </td>
                                <td>
                                    <input type="number" name="price" placeholder="enter price" class="form-control" required>
                                </td>
                            </tr>
                            
                              <tr>
                                <td>Upload Product Image </td>
                                <td>
                                    <input type="file" name="productimage" placeholder="enter file" class="form-control" required>
                                </td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="form-control btn btn-success">Add product </button>
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