<%-- 
    Document   : responsecode
    Created on : May 2, 2024, 11:15:28 AM
    Author     : Muhammed Imthiyas
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    String responseType = request.getParameter("responsetype");
    String subject = request.getParameter("subject");
    String responseText = request.getParameter("responsetext");
    
    String userid = session.getAttribute("userid").toString();
    DbManager db = new DbManager();
    String query = " select * from registration where email = '"+userid+"'" ;
    ResultSet rs = db.select(query);
    
    if(rs.next()){
    String name = rs.getString("name");
    String contactno = rs.getString("contactno");
    String email = rs.getString("email");
    query = "insert into response (name, contactno, emailaddress,responseType,subject,responseText) values ( '"+name+"','"+contactno+"','"+email+"' ,'"+responseType+"','"+subject+"', '"+responseText+"' )";
    
    if(db.insertUpdateDelete(query) == true){
    out.print("<script>alert('Response is submitted');window.location.href='response.jsp'</script>");
    }else{
        out.print("<script>alert('Response not submitted');window.location.href='response.jsp'</script>");
    }
    
    }
%>
