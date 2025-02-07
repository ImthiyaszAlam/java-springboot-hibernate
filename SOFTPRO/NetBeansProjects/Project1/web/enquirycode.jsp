<%@page import="connectdatabse.DbManager"%>
<%

String name = request.getParameter("name");
String contactNumber = request.getParameter("contact");
String emailAddress = request.getParameter("email");
String sbjectName = request.getParameter("subject");
String messageWritten = request.getParameter("message");


String query = " insert into enquirytable (name, contact,email,subject,message) values('"+ name +'" , '"+contactNumber+"' , '"+contactNumber+"' , '"+emailAddress+ "' , '"+sbjectName+"'  , '"+messageWritten+"')" ;                   
DbManager db = new DbManager();
boolean res = db.insertUpdateDelete(query);
  if(res == true){
      out.print("<script>alert('Enquiry is saved'); window.location.href = 'index.jsp';</script> ");
  }else{
        out.print("<script>alert('Enquiry is saved'); window.location.href = 'index.jsp';</script> ");
  }

%>