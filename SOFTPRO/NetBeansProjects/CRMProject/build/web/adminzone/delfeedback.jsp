<%-- 
    Document   : delfeedback
    Created on : May 4, 2024, 12:40:13 PM
    Author     : Muhammed Imthiyas
--%>

<%@page import="connect.DbManager"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
DbManager db=new DbManager();
String query = "delete from response where id ='"+id+"'";
if(db.insertUpdateDelete(query) == true){
    out.print("<script>alert('Deleted');window.location.href='enquiry.jsp';</script>");
}else{
    out.print("<script>alert('Not Deleted');window.location.href='enquiry.jsp';</script>");

}
%>
