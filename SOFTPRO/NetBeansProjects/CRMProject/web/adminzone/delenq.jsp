<%-- 
    Document   : delenq
    Created on : May 4, 2024, 12:21:51 PM
    Author     : Muhammed Imthiyas
--%>

<%@page import="connect.DbManager"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
DbManager db=new DbManager();
String query = "delete from enquiry where id ='"+id+"'";
if(db.insertUpdateDelete(query) == true){
    out.print("<script>alert('Deleted');window.location.href='enquiry.jsp';</script>");
}else{
    out.print("<script>alert('Not Deleted');window.location.href='enquiry.jsp';</script>");

}
%>
