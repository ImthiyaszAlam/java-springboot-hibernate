
<%@page import="connection.DbManager"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
DbManager db=new DbManager();
String query = "delete from enquiry where id ='"+id+"'";
if(db.insertUpdateDelete(query) == true){
    out.print("<script>alert('Deleted');window.location.href='index.jsp';</script>");
}else{
    out.print("<script>alert('Not Deleted');window.location.href='index.jsp';</script>");

}
%>