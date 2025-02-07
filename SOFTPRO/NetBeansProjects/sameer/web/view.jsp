<%-- 
    Document   : view
    Created on : Jun 8, 2024, 4:50:12 PM
    Author     : Muhammed Imthiyas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <form>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>father Name</th>
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Contact No</th>
                        <th>Password</th>
                        <th>Delete</th>
                    </tr>
                     <%
                            DbManager db=new DbManager();
                            String query = "select * from registration ";
                            ResultSet rs = db.select(query);
                            while (rs.next()) {

                        %>
                    <tr>
                      
                            <td><%=rs.getString("name")%> </td>
                            <td><%=rs.getString("fname")%> </td>
                            <td><%=rs.getString("gender")%> </td>
                           
                            <td><%=rs.getString("email")%> </td>
                             <td><%=rs.getString("contactno")%> </td>
                              <td><%=rs.getString("password")%> </td>
                               <td>
                                <a href="del.jsp?id=<%=rs.getString("contactno")%>">
                                        <button type="button" class="btn btn-danger">Delete</button>
                             
                                </a>
                           </td>
                    </tr>
                </table>
                                        <%}%>
            </form>
        </div>
    </body>
</html>
