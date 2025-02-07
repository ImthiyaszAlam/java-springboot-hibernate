<%-- 
    Document   : adminheader
    Created on : May 3, 2024, 11:48:42 AM
    Author     : Muhammed Imthiyas
--%>

<div class="row">
    <div class="col-sm-2">
        <img src="../images/img1.jpeg" />
    </div>
    <div class="col-sm-10" style="background-color: navy; color: white; min-height: 150px; text-align: center; line-height: 150px; font-size: 60px;">
        Customer Relationship Management
    </div>
</div>
<div class="row" >
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="adminhome.jsp">
                <img src="../images/img2.jpeg" width="40" height="40" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="adminhome.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customers.jsp">Customers</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="enquiry.jsp">Enquiry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="feedbacks.jsp">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="complaints.jsp">Complaint</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product.jsp">Products</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Admin
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="adminchangepwd.jsp">Change Password</a></li>
                            <li><a class="dropdown-item" href="../customerzone/logout.jsp">Logout</a></li>
                        </ul>
                    </li>

                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>