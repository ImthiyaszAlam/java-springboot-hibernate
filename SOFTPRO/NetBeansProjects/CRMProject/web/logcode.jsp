<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
  
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");

    String loginQuery = "select userType from login where userid = '"+userid+"' and password = '"+password+"'" ;
    
    DbManager db = new DbManager();
    ResultSet rs = db.select(loginQuery);
    
    if(rs.next()){
    String userType = rs.getString("userType");
    if(userType.equals("user")){
    //out.print("<script>alert('Welcome to user Interface'); window.location.href='login.jsp'; </script>");
    session.setAttribute("userid", userid);
        response.sendRedirect("customerzone/customerhome.jsp");
    
    }else if(userType.equals("admin")){
    //out.print("<script>alert('Admin Interface'); window.location.href='login.jsp';</script>");
    session.setAttribute("adminid",userid);
    response.sendRedirect("adminzone/adminhome.jsp");
    }
    }else{
    out.print("<script> alert('Invalid user'); window.location.href='login.jsp'; </script>");
    }
%>