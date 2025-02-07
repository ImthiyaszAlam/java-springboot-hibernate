<%-- 
    Document   : index.jsp
    Created on : Apr 24, 2024, 11:03:37 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mark crm</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script>
            function validateEnquiry() {
                var name = document.getElementById("userName");
                var contact = document.getElementById("userContact");
                var email = document.getElementById("userEmail");
                var subject = document.getElementById("userSubject");
                var message = document.getElementById("userMessage");

                if (name.value == "" || name.value == null) {
                    alert("Please Enter your name");
                    name.focus();
                }else if(contact.value == "" || contact.value == null){
                       alert("Please Enter contact details");
                    contact.focus();
                }else if(email.value == "" || email.value == null){
                       alert("Please Enter Email");
                    email.focus();
                }else if(subject.value == "" || subject.value == null){
                       alert("Please Enter Subject");
                    subject.focus();
                }else if(message.value == "" || message.value == null){
                       alert("Please Enter Message");
                    message.focus();
                }else{
                    document.getElementById("enquiryForm").submit();
                }
            }

        </script>

    </head>
    <body>
        <div class="container">

            <%@include file="header.jsp" %>

            <div class="row mt-2">
                <div class="col-sm-4" style="background-color: aqua; min-height: 600px"></div>
                <div class="col-sm-8" style="background-color: green; min-height: 600px">
                    <h2 style="text-align:center">Enquiry Form</h2>
                    <form id="enquiryForm" class="form-group" onsubmit="event.preventDefault();
                            validateEnquiry();"  action="enqcode.jsp" method="post">
                        <table class="table">
                            <tr>
                                <td>Enter name:</td>
                                <td>
                                    <input id="userName" type="text" name="name" class="form-control">
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Contact no:</td>
                                <td>
                                    <input id="userContact" type="number" name="contactno" class="form-control">
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Email Address:</td>
                                <td>
                                    <input id="userEmail" type="email" name="email" class="form-control">
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Subject:</td>
                                <td>
                                    <input id="userSubject" type="text" name="subject" class="form-control">
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Message</td>
                                <td>
                                    <textarea id="userMessage" name="message" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class=" btn btn-outline-success ">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>


            <%@include file= "footer.jsp" %>
        </div>
    </body>
</html>
