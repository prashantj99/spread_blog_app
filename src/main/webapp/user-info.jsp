<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>User Profile Page | Spread</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="./public/resource-header.jsp" %>
        <link rel="stylesheet" href="./css/post-style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: #4EA685!important">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">
                        <img width="30" height="30" src="img/icons8-link-100.png" alt="link--v1"/>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#" style="color : white!important ;"> <i class="fa fa-bell">10</i></a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group input-group">
                            <input type="text" class="form-control" placeholder="Search..">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>        
                        </div>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" style="color : white!important ;" ><span class="glyphicon glyphicon-user"></span> My Account</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <br><br><br><br><br>
        <!--start of profile section-->
        <div class="container text-center">    
            <div class="row">
                <div class="col-sm-3 well">
                    <div class="well">
                        <img src="./img/icons8-user-64.png" class="img-circle" height="65" width="65" alt="Avatar">
                        <br>
                        <p>Hi! Prashant</p>
                    </div>
                    <div class="well">
                        <p><a href="#">Proficiency</a></p>
                        <p>
                            <span class="label label-default">English</span>
                            <span class="label label-primary">DSA</span>
                            <span class="label label-success">C++</span>
                            <span class="label label-info">Football</span>
                            <span class="label label-warning">Space</span>
                            <span class="label label-danger">Musics</span>
                        </p>
                    </div>
                    <div class="well">
                        <p><a href="#">Space following</a></p>
                        <p>
                            <a href="#" class="label label-default">Cosmos</a>
                            <a href="#" class="label label-primary">DSA</a>
                            <a href="#" class="label label-warning">Kpop</a>
                            <a href="space1" class="label label-info">Blockchain</a>
                            <a href="#">see all spaces...</a>
                        </p>
                    </div>
                    <div class="alert alert-success fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                        <p><strong>Ey!</strong></p>
                        People are looking at your profile. Find out who.
                    </div>
                    <p><i class="fa fa-user-graduate"></i>Motilal Nehru National Institute of Technology</p>
                    <p>MCA</p>
                    <p>BCA</p>
                </div>
                <div class="col-sm-7">

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-default text-left">
                                <div class="panel-body">
                                    <div class="postcontainer">
                                        <div class="wrapper">
                                            <section class="post">
                                                <form action="#" class="postform">
                                                    <div class="content">
                                                        <img src="img/icons8-link-100.png" alt="logo">
                                                        <div class="details">
                                                            <p>Spread - Connect the globe</p>
                                                            <div class="privacy">
                                                                <i class="fa fa-user-friends"></i>
                                                                <span>Friends</span>
                                                                <i class="fa fa-caret-down"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <textarea placeholder="What's on your mind?" spellcheck="false" required></textarea>
                                                    <div class="theme-emoji">
                                                        <img src="img/theme.svg" alt="theme">
                                                        <img src="img/smile.svg" alt="smile">
                                                    </div>
                                                    <div class="options">
                                                        <p>Add to Your Post</p>
                                                        <ul class="list">
                                                            <li><img src="img/gallery.svg" alt="gallery"></li>
                                                            <li><img src="img/tag.svg" alt="gallery"></li>
                                                            <li><img src="img/emoji.svg" alt="gallery"></li>
                                                            <li><img src="img/mic.svg" alt="gallery"></li>
                                                            <li><img src="img/more.svg" alt="gallery"></li>
                                                        </ul>
                                                    </div>
                                                    <button>Post</button>
                                                </form>
                                            </section>
                                            <section class="audience">
                                                <header>
                                                    <div class="arrow-back"><i class="fas fa-arrow-left"></i></div>
                                                    <p>Select Audience</p>
                                                </header>
                                                <div class="content">
                                                    <p>Who can see your post?</p>
                                                    <span>Your post will show up in News Feed, on your profile and in search results.</span>
                                                </div>
                                                <ul class="list">
                                                    <li>
                                                        <div class="column">
                                                            <div class="icon"><i class="fas fa-globe-asia"></i></div>
                                                            <div class="details">
                                                                <p>Public</p>
                                                                <span>Anyone on or off Facebook</span>
                                                            </div>
                                                        </div>
                                                        <div class="radio"></div>
                                                    </li>
                                                    <li class="active">
                                                        <div class="column">
                                                            <div class="icon"><i class="fas fa-user-friends"></i></div>
                                                            <div class="details">
                                                                <p>Friends</p>
                                                                <span>Your friends on Facebook</span>
                                                            </div>
                                                        </div>
                                                        <div class="radio"></div>
                                                    </li>
                                                    <li>
                                                        <div class="column">
                                                            <div class="icon"><i class="fas fa-user"></i></div>
                                                            <div class="details">
                                                                <p>Specific</p>
                                                                <span>Only show to some friends</span>
                                                            </div>
                                                        </div>
                                                        <div class="radio"></div>
                                                    </li>
                                                    <li>
                                                        <div class="column">
                                                            <div class="icon"><i class="fas fa-lock"></i></div>
                                                            <div class="details">
                                                                <p>Only me</p>
                                                                <span>Only you can see your post</span>
                                                            </div>
                                                        </div>
                                                        <div class="radio"></div>
                                                    </li>
                                                    <li>
                                                        <div class="column">
                                                            <div class="icon"><i class="fas fa-cog"></i></div>
                                                            <div class="details">
                                                                <p>Custom</p>
                                                                <span>Include and exclude friends</span>
                                                            </div>
                                                        </div>
                                                        <div class="radio"></div>
                                                    </li>
                                                </ul>
                                            </section>
                                        </div>
                                    </div>
                                    <!--post form end-->     
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <ul class="list-inline justify-content-between">
                            <li class="list-inline-item"><a href="#" class="btn btn-danger">
                                    <i class="fa fa-thumbs-up"> Liked</i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" class="btn btn-success">
                                    <i class="fa fa-bookmark"> Saved </i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" class="btn btn-warning">
                                    <i class="fa fa-file-text"> My Posts </i></a>
                            </li>
                        </ul>
                        <div class="col-sm-12">
                            <div class="well" style="background-color: white!important">
                                <!--user post header-->
                                <div class="row">
                                    <div class="col-sm-2">
                                        <img src="./img/icons8-user-64.png" class="img-circle" height="40" width="40" alt="Avatar">
                                    </div>
                                    <div class="col-sm-8 text-left">
                                        <span>user-name</span>&nbsp;.<a href="#">follow</a>
                                        <div>
                                            education-profile
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <span>22 min ago<span>
                                                </div>
                                                </div>
                                                <!--user post body-->
                                                <hr>
                                                <div class="row">
                                                    <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tortor justo, malesuada sed condimentum eu, pellentesque nec ante. Aliquam magna magna, egestas non dui nec, mollis euismod mi. Sed at est odio. Integer suscipit leo nulla, ut iaculis sapien volutpat eget. Aenean libero ipsum, imperdiet eu ultricies quis, fermentum vel libero. Fusce euismod sed magna non porttitor. Vestibulum vestibulum quam nec odio sollicitudin, nec tristique tortor fringilla. Morbi semper lectus augue, in cursus ex pulvinar mattis. Donec scelerisque maximus neque, ac 
                                                        pulvinar eros dapibus vel. Donec ut magna tristique, consequat sem a, feugiat purus.</p>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                        <a href="#" class="text-danger"><i class="fa fa-thumbs-up"> Like</i></a>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <span class="text-warning"><i class="fa fa-comment"> Comment</i></span>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <span class="text-success"><i class="fa fa-share"> share</i></span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <!--add comments-->
                                                </div>
                                                </div>
                                                <div class="well" style="background-color: white!important">
                                                    <!--user post header-->
                                                    <div class="row">
                                                        <div class="col-sm-2">
                                                            <img src="./img/icons8-user-64.png" class="img-circle" height="40" width="40" alt="Avatar">
                                                        </div>
                                                        <div class="col-sm-8 text-left">
                                                            <span>user-name</span>&nbsp;.<a href="#">follow</a>
                                                            <div>
                                                                education-profile
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-2">
                                                            <span>22 min ago<span>
                                                                    </div>
                                                                    </div>
                                                                    <!--user post body-->
                                                                    <hr>
                                                                    <div class="row">
                                                                        <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tortor justo, malesuada sed condimentum eu, pellentesque nec ante. Aliquam magna magna, egestas non dui nec, mollis euismod mi. Sed at est odio. Integer suscipit leo nulla, ut iaculis sapien volutpat eget. Aenean libero ipsum, imperdiet eu ultricies quis, fermentum vel libero. Fusce euismod sed magna non porttitor. Vestibulum vestibulum quam nec odio sollicitudin, nec tristique tortor fringilla. Morbi semper lectus augue, in cursus ex pulvinar mattis. Donec scelerisque maximus neque, ac 
                                                                            pulvinar eros dapibus vel. Donec ut magna tristique, consequat sem a, feugiat purus.</p>
                                                                    </div>
                                                                    <hr>
                                                                    <div class="row">
                                                                        <div class="col-sm-2">
                                                                            <a href="#" class="text-danger"><i class="fa fa-thumbs-up"> Like</i></a>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <span class="text-warning"><i class="fa fa-comment"> Comment</i></span>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <span class="text-success"><i class="fa fa-share"> share</i></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <!--add comments-->
                                                                    </div>
                                                                    </div>
                                                                    </div>
                                                                    </div> 
                                                                    </div>
                                                                    <div class="col-sm-2 well">
                                                                        <div class="thumbnail">
                                                                            <p>Upcoming Events:</p>
                                                                            <img src="paris.jpg" alt="Paris" width="400" height="300">
                                                                            <p><strong>Paris</strong></p>
                                                                            <p>Fri. 27 November 2015</p>
                                                                            <button class="btn btn-primary">Info</button>
                                                                        </div>      
                                                                        <div class="well">
                                                                            <p>ADS</p>
                                                                        </div>
                                                                        <div class="well">
                                                                            <p>ADS</p>
                                                                        </div>
                                                                    </div>
                                                                    </div>
                                                                    </div>


                                                                    <script>
                                                                        const container = document.querySelector(".container"),
                                                                                privacy = container.querySelector(".post .privacy"),
                                                                                arrowBack = container.querySelector(".audience .arrow-back");
                                                                        privacy.addEventListener("click", () => {
                                                                            container.classList.add("active");
                                                                        });
                                                                        arrowBack.addEventListener("click", () => {
                                                                            container.classList.remove("active");
                                                                        });
                                                                    </script>
                                                                    </body>
                                                                    </html>
