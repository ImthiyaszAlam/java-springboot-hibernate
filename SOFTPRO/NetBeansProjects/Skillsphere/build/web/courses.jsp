<%-- 
    Document   : courses
    Created on : May 12, 2024, 8:41:37 AM
    Author     : Muhammed Imthiyas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <script src="https://kit.fontawesome.com/68bda705f2.js" crossorigin="anonymous"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>

        <style>
            .headerMarginTop{
                margin-top: 100px;
            }

            ul li{
                list-style: none;
                text-transform: capitalize;
            }
            ul li a{
                text-decoration: none;
            }
        </style>
        <title>Courses</title>
    </head>
    <body class="bg-dark text-light">

        <%@include file="./components/navbar.jsp" %>
        <div class="container headerMarginTop">

            <div class="row d-flex justify-content-center align-items-center mt-3">
                <div class="col-sm-6 text-center border rounded border-primary d-flex align-items-center py-2">
                    <button class="btn btn-primary me-auto">Categories</button> <!-- Added "me-auto" to push the button to the start -->
                    <p class="me-auto mb-0">Search here</p> <!-- Added "me-auto" to push the paragraph to the start -->
                    <i class="fa-solid fa-magnifying-glass ms-auto"></i> <!-- Added "ms-auto" to push the icon to the end -->
                </div>
            </div>

            <div class="row">
                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/imag1.jpg" height="200px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Learn Figma</h5>
                                <div class="d-flex justify-content-between align-items-center gap-2">
                                    <div class="d-flex gap-1 justify-content-center align-items-center">
                                        <i class="fa-solid fa-book"></i>
                                        <p class="mb-0">Lesson:7</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-person"></i>
                                        <p class="mb-0">Student:100</p>
                                    </div>
                                    <div class="d-flex gap-1 align-items-center justify-content-center">
                                        <i class="fa-solid fa-trophy"></i>
                                        <p class="mb-0">Advanced</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-1">
                                    <button class="btn btn-primary px-2">Get Started</button>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="./components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
</html>
