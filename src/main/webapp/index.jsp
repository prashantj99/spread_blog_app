<%-- 
    Document   : index
    Created on : 2 Nov, 2023, 1:49:46 PM
    Author     : Prashant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="./public/resource-header.jsp" %>
        <link rel="icon"  href="/img/site-link-16.png">
        <title>Home | Spread</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FF9800!important">
            <div class="navbar-collapse collapse w-100 dual-collapse2 order-1 order-md-0">
                <ul class="navbar-nav ml-auto text-center">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">
                            <!--site logo-->
                            <img width="30" height="30" src="https://img.icons8.com/ios/50/000000/link--v1.png" alt="link--v1"/>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="navbar-collapse collapse w-100 dual-collapse2 order-2 order-md-2">
                <ul class="navbar-nav mr-auto text-center">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Link</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!--banner-->
        <div class="container" style="min-height: 200px;" id="banner">
            <h1 class="text-center pt-5">Publish your passions, your way</h1>
            <p class="text-center">Create a unique and beautiful blog easily.</p>
        </div>
        <div class="container-fluid text-center">
            <button class="btn btn-warning text-center" style="width: 150px;">create account</button>
        </div>
        <div class="container" style="height: 50px;"></div>
        <!--user profiles to follow-->
        <!-- Carousel wrapper -->
        <div id="carouselMultiItemExample" class="carousel slide carousel-dark text-center" data-mdb-ride="carousel">
            <!-- Controls -->
            <div class="d-flex justify-content-center mb-4">
                <button class="carousel-control-prev position-relative" type="button"
                        data-mdb-target="#carouselMultiItemExample" data-mdb-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next position-relative" type="button"
                        data-mdb-target="#carouselMultiItemExample" data-mdb-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <!-- Inner -->
            <div class="carousel-inner py-4">
                <!-- Single item -->
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(1).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Anna Deynah</h5>
                                <p>UX Designer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id
                                    officiis hic tenetur quae quaerat ad velit ab hic tenetur.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(32).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">John Doe</h5>
                                <p>Web Developer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                    suscipit laboriosam, nisi ut aliquid commodi.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li>
                                        <i class="fas fa-star-half-alt fa-sm"></i>
                                    </li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(10).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Maria Kate</h5>
                                <p>Photographer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                    praesentium voluptatum deleniti atque corrupti.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="far fa-star fa-sm"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single item -->
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(3).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">John Doe</h5>
                                <p>UX Designer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id
                                    officiis hic tenetur quae quaerat ad velit ab hic tenetur.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(4).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Alex Rey</h5>
                                <p>Web Developer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                    suscipit laboriosam, nisi ut aliquid commodi.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li>
                                        <i class="fas fa-star-half-alt fa-sm"></i>
                                    </li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(5).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Maria Kate</h5>
                                <p>Photographer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                    praesentium voluptatum deleniti atque corrupti.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="far fa-star fa-sm"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single item -->
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(6).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Anna Deynah</h5>
                                <p>UX Designer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id
                                    officiis hic tenetur quae quaerat ad velit ab hic tenetur.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(8).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">John Doe</h5>
                                <p>Web Developer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
                                    suscipit laboriosam, nisi ut aliquid commodi.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li>
                                        <i class="fas fa-star-half-alt fa-sm"></i>
                                    </li>
                                </ul>
                            </div>

                            <div class="col-lg-4 d-none d-lg-block">
                                <img class="rounded-circle shadow-1-strong mb-4"
                                     src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(7).webp" alt="avatar"
                                     style="width: 150px;" />
                                <h5 class="mb-3">Maria Kate</h5>
                                <p>Photographer</p>
                                <p class="text-muted">
                                    <i class="fas fa-quote-left pe-2"></i>
                                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                                    praesentium voluptatum deleniti atque corrupti.
                                </p>
                                <ul class="list-unstyled d-flex justify-content-center text-warning mb-0">
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="fas fa-star fa-sm"></i></li>
                                    <li><i class="far fa-star fa-sm"></i></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Inner -->
        </div>
        <!-- Carousel wrapper -->
        <!--user profile to follow-->
        <br>
        <br>
        <br>
        <div class="container">
            <div class="container d-flex justify-content-center">
                <div class="container d-flex justify-content-center align-items-center">
                    <div class="card">
                        <div class="upper">
                            <img src="https://i.imgur.com/Qtrsrk5.jpg" class="img-fluid">
                        </div>
                        <div class="user text-center">
                            <div class="profile">
                                <img src="https://i.imgur.com/JgYD2nQ.jpg" class="rounded-circle" width="80">
                            </div>
                        </div>
                        <div class="mt-5 text-center">
                            <h4 class="mb-0">Benjamin Tims</h4>
                            <span class="text-muted d-block mb-2">Los Angles</span>
                            <button class="btn btn-primary btn-sm follow">Follow</button>
                            <div class="d-flex justify-content-between align-items-center mt-4 px-4">
                                <div class="stats">
                                    <h6 class="mb-0">Followers</h6>
                                    <span>8,797</span>
                                </div>
                                <div class="stats">
                                    <h6 class="mb-0">Projects</h6>
                                    <span>142</span>
                                </div>
                                <div class="stats">
                                    <h6 class="mb-0">Ranks</h6>
                                    <span>129</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container d-flex justify-content-center align-items-center">
           <div class="card">
                <div class="upper">
                    <img src="https://i.imgur.com/Qtrsrk5.jpg" class="img-fluid">
                </div>
                <div class="user text-center">
                    <div class="profile">
                        <img src="https://i.imgur.com/JgYD2nQ.jpg" class="rounded-circle" width="80">
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <h4 class="mb-0">Benjamin Tims</h4>
                    <span class="text-muted d-block mb-2">Los Angles</span>
                    <button class="btn btn-primary btn-sm follow">Follow</button>
                    <div class="d-flex justify-content-between align-items-center mt-4 px-4">
                        <div class="stats">
                            <h6 class="mb-0">Followers</h6>
                            <span>8,797</span>
                        </div>
                        <div class="stats">
                            <h6 class="mb-0">Projects</h6>
                            <span>142</span>
                        </div>
                        <div class="stats">
                            <h6 class="mb-0">Ranks</h6>
                            <span>129</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
        <br>
        <br>
        <br>
    </body>
</html>
