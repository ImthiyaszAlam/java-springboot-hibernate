<%-- 
    Document   : index
    Created on : May 14, 2024, 10:58:07 AM
    Author     : Muhammed Imthiyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/68bda705f2.js" crossorigin="anonymous"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <style>
            

                .ab{
                    text-decoration: none;
                    list-style-type: none;
                    color: black;
                }

            
        </style>
    </head>
    <body>
        <div class="">
            <div class="row bg-dark text-light">
                <div class="col-sm-4">
                    <p><i class="fa-regular fa-clock"></i> &nbsp; Opening Hour Mon-Sat 9:00 AM  </p>
                </div>
                <div class="col-sm-3">

                </div>
                <div class="col-sm-5 text-end">
                    <span  style="background-color: #b3a313;border-radius: 5px; padding: 5px;"><i class="fa-brands fa-facebook"></i></span>
                    <span  style="background-color: #b3a313;border-radius: 5px; padding: 5px;"><i class="fa-brands fa-instagram"></i></span>
                    <span  style="background-color: #b3a313;border-radius: 5px; padding: 5px;"><i class="fa-brands fa-twitter"></i></span>
                    <span  style="background-color: #b3a313;border-radius: 5px; padding: 5px;"><i class="fa-brands fa-facebook"></i></span>
                </div>
            </div>

            <!--Header-->

            <div class="row">
                <div class="col-sm-3">
                    <img src="images/LOGO.svg" height="170px">
                </div>
                <div class="col-sm-6 my-auto text-center">
                    <h1 class="text-uppercase fw-bold">Marc Laboratories Pvt Ltd</h1>
                    <span style=" background-color:#b3a313; border-radius: 10px; padding: 10px ;" >Customer Relationship ,Management</span>
                </div>
                <div class="col-sm-3 text-end">
                    <img src="images/logomain.png" height="170px;">
                </div>
            </div>

            <%@include file="header.jsp" %> %>

            <!--About-->
            <div class="row">
                <div class="col-sm-12 text-center mb-4">
                    <h1 class="fw-bold"> <span style="color:#b3a313">About Us</span> </h1>
                    <p>Welcome To the Marc Lab</p>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <img src="images/dostor.jpg" class="w-100">
                    </div>
                    <div class="col-sm-6">
                        <h4>Welcome to Marc Lab</h4>
                        <hr>
                        <p style="text-align:justify">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                    </div>
                </div>
            </div>

            <!-- Main Section-->
            <div class="row text-center mt-4">
                <h1 class="fw-bold "> <span style="color:#b3a313">Our Products</span> </h1>
                <p >Welcome To the Marc Lab</p>
            </div>
            <div class="row">
                <div class="row row-cols-1 row-cols-md-4 g-2">
                    <div class="col">
                        <div class="card">
                            <img src="images/sl1.jpg" class="card-img-top p-2" height="200px" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <a style="border-radius: 0; background-color: #b3a313" href="#" class="btn btn-primary w-100 text-center">Go somewhere</a>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card">
                            <img src="images/sl1.jpg" class="card-img-top p-2" height="200px" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <a style="border-radius: 0; background-color: #b3a313" href="#" class="btn btn-primary w-100 text-center">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/sl1.jpg" class="card-img-top p-2" height="200px" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <a style="border-radius: 0; background-color: #b3a313" href="#" class="btn btn-primary w-100 text-center">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/sl1.jpg" class="card-img-top p-2" height="200px" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                <a style="border-radius: 0; background-color: #b3a313" href="#" class="btn btn-primary w-100 text-center">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Feedback-->
            <div class="row text-center mt-4">
                <h1 class="fw-bold "> <span style="color:#b3a313">Feedback </span> </h1>
            </div>
            <div class="container">

                <div class="row">
                    <div class="col-sm-6">
                        <img src="images/feedback.jpg" class="w-100">
                    </div>
                    <div class="col-sm-6">
                        <form class="border p-4 shadow-lg" method="post" >
                            <div class="row">

                                <div class="col-md-12">
                                    <p>Name *</p>
                                    <input style="height: 50px; border: 3px solid #b3a313; border-radius: 0px" type="text" name="name" placeholder="enter your name" class="form-control">
                                </div>
                                <div class="col-md-12 mt-4">
                                    <p>Email *</p>
                                    <input style="height: 50px; border: 3px solid #b3a313; border-radius: 0px" type="email" name="email" placeholder="enter your Email" class="form-control">
                                </div>
                                <div class="col-md-12 mt-4">
                                    <p>Contact No *</p>
                                    <input style="height: 50px; border: 3px solid #b3a313; border-radius: 0px" type="number" name="contactno" placeholder="enter your Contact No" class="form-control">
                                </div>
                                <div class="col-md-12 mt-4">
                                    <p>Feedback *</p>
                                    <textarea style="height: 100px; border: 3px solid #b3a313; border-radius: 0px" type="text" name="name" placeholder="enter your name" class="form-control"></textarea>
                                </div>
                                <div class="mt-4">
                                    <input type="submit" style="height: 50px; width: 100%; background-color: #b3a313; border: 0px; " value="Submit" >
                                </div>


                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!--  our team-->
            <div class="row">
                <div class="row text-center col-sm-12 mt-4" style="width: ">
                    <h1 class="fw-bold "> <span style="color:#b3a313">Our Team </span> </h1>
                </div> 
            </div>
            <div class="row">
                <div class="row row-cols-1 row-cols-md-4 g-2">
                    <div class="col">
                        <div class="card p-3 shadow-lg rounded-0 " style="">
                            <img src="images/sl1.jpg" class="card-img-top p-3" alt="..." style="border-radius: 50%; border: 2px solid ; height: 400px; width:100%">
                            <div class="card-body">
                                <h5 class="card-title text-center">Alam</h5>
                                <h6 class="card-title text-center">Software Developer</h6>
                                <hr>
                                <p class="card-text text-justify">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 shadow-lg rounded-0 " style="">
                            <img src="images/sl1.jpg" class="card-img-top p-3" alt="..." style="border-radius: 50%; border: 2px solid ; height: 400px; width:100%">
                            <div class="card-body">
                                <h5 class="card-title text-center">Alam</h5>
                                <h6 class="card-title text-center">Software Developer</h6>
                                <hr>
                                <p class="card-text text-justify">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 shadow-lg rounded-0 " style="">
                            <img src="images/sl1.jpg" class="card-img-top p-3" alt="..." style="border-radius: 50%; border: 2px solid ; height: 400px; width:100%">
                            <div class="card-body">
                                <h5 class="card-title text-center">Alam</h5>
                                <h6 class="card-title text-center">Software Developer</h6>
                                <hr>
                                <p class="card-text text-justify">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card p-3 shadow-lg rounded-0 " style="">
                            <img src="images/sl1.jpg" class="card-img-top p-3" alt="..." style="border-radius: 50%; border: 2px solid ; height: 400px; width:100%">
                            <div class="card-body">
                                <h5 class="card-title text-center">Alam</h5>
                                <h6 class="card-title text-center">Software Developer</h6>
                                <hr>
                                <p class="card-text text-justify">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer-->
            <%@include file="footer.jsp" %>

        </div>
    </div>
</body>
</html>
