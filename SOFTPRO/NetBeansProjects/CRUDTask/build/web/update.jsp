<%@ page import="java.sql.ResultSet" %>
<%@ page import="connectionmaker.DBManagerTask" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Update Record</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-light">

        <%@include file="navbarheader.jsp" %>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6">

                    <h1 class="text-center mt-5">Update Record</h1>
                    <%
                        try {
                            int id = Integer.parseInt(request.getParameter("id"));
                            DBManagerTask db = new DBManagerTask();
                            String query = "SELECT * FROM registration WHERE id = " + id;
                            ResultSet rs = db.select(query);
                            if (rs.next()) {
                                String name = rs.getString("name");
                                String email = rs.getString("email");
                                String gender = rs.getString("gender");
                                String mobileNo = rs.getString("mobileno");
                    %>
                    <form method="post" action="updateAction.jsp">
                        <input type="hidden" name="id" value="<%= id%>">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" value="<%= name%>">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="<%= email%>">
                        </div>
                        <div class="mb-3">
                            <label for="gender" class="form-label">Gender</label>
                            <select class="form-select" id="gender" name="gender">
                                <option value="Male" <%= gender.equals("Male") ? "selected" : ""%>>Male</option>
                                <option value="Female" <%= gender.equals("Female") ? "selected" : ""%>>Female</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="mobileNo" class="form-label">Mobile No</label>
                            <input type="text" class="form-control" id="mobileNo" name="mobileNo" value="<%= mobileNo%>">
                        </div>
                        <button type="submit" class="btn btn-primary form-control">Update</button>

                    </form>
                    <%
                            } else {
                                out.println("Record not found.");
                            }
                        } catch (SQLException ex) {
                            out.println("Error: " + ex.getMessage());
                        }
                    %>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
