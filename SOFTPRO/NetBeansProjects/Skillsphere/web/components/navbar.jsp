<%-- 
    Document   : navbar
    Created on : May 1, 2024, 10:55:48 PM
    Author     : Muhammed Imthiyas
--%>

<div class=" container bg-dark">


    <div class="row py-2 fixed-top px-5 d-flex justify-content-center align-items-center bg-black ">

        <div class="col-sm-3">
            <h2 class="text-primary">Skill <span class="text-success">Sphere</span></h2>
        </div>

        <div class="col-sm-6">
            <ul class="nav justify-content-center font-weight-bold fs-5">
                <li class="nav-item">
                    <a class="nav-link active text-light font-weight-bold fs-5" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="./courses.jsp">Courses</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-light" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Resources</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="eduintro.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="contactus.jsp">Contact Us</a>
                </li>
            </ul>
        </div>

        <div class="col-sm-3 d-flex justify-content-end">
            <ul class="nav nav-pills font-weight-bold fs-5">

                <li class="nav-item">
                    <a style="border: 2px solid green"  class="nav-link text-light px-4 py-0" href="login.jsp">Login</a>
                </li>


            </ul>
        </div>

    </div>

</div>
