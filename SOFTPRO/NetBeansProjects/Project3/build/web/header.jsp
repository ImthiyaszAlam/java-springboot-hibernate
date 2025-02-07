<%-- 
    Document   : header.jsp
    Created on : May 14, 2024, 12:09:24 PM
    Author     : Muhammed Imthiyas
--%>

<div class="mt-2">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav d-flex justify-content-center align-items-center mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registration.jsp">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.jsp">Contact us</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="row mt-2" >
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/sl1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/sl2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/sl3.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/sl4.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/sl5.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
