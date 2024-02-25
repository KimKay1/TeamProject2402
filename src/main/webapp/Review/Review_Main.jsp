<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <!-- Bootstrap -->
    <link href="../template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="../template/animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="../template/fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
    <!-- Magnific Popup -->
    <link href="../template/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slick carousel -->
    <link href="../template/slick/slick.css" rel="stylesheet" type="text/css" />
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="../template/css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="../template/css/theme.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel">
    <div class="container">
        <nav class="navbar">
            <a class="navbar-brand" href="..">
                        <span class="logo-element">
                            <span class="logo-tape">
                                <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                            </span>
                            <span class="logo-text text-uppercase">
                                <span>jsp</span>Team</span>
                        </span>
            </a>
            <button class="navbar-toggler" type="button">
                        <span class="th-dots-active-close th-dots th-bars">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
            </button>
            <div class="navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp">Homepage</a>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#" data-role="nav-toggler">MOVIE</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">Movies</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../templateEx/movies-list.jsp">List - No Sidebar</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../templateEx/movie-info-sidebar-right.jsp">Movie info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../templateEx/gallery.jsp">Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../templateEx/news-blocks-sidebar-right.jsp">News</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">REVIEW</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../index.jsp">Review</a>
                            </li>
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">User pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="sign-in.html">Sign in</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="sign-up.html">Sign up</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-extra">
                    <a class="btn-theme btn" href="../temp/Login.jsp"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Login</a>
                </div>
            </div>
        </nav>
    </div>
</header>
<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Review</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="#">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>Reviews</span>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long">
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">20 jul 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">Creative life</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">comedy</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">detective</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                        </div>
                        <p class="text-short entity-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur ultrices justo a pellentesque. Praesent venenatis dolor nec tempus lacinia. Donec ac condimentum dolor. Nullam sit amet nisl hendrerit, pharetra nulla convallis, malesuada diam. Donec ornare nisl eu lectus rhoncus, at malesuada metus rutrum. Aliquam a nisl vulputate, sodales ipsum aliquam, tempus purus. Suspendisse convallis, lectus nec vehicula sollicitudin, lorem sapien rhoncus dolor, vel lacinia urna velit ullamcorper nisi. Phasellus pellentesque, magna nec gravida feugiat, est magna suscipit ligula, vel porttitor nunc enim at nibh. Sed varius sit amet leo vitae consequat.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">15 jun 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">One step to the end</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">drama</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">superhero</a>
                        </div>
                        <p class="text-short entity-text">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">24 may 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">Here we go again</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">romance</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">historical</a>
                        </div>
                        <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">11 may 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">The one and the other</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">drama</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">western</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                        </div>
                        <p class="text-short entity-text">Aenean molestie turpis eu aliquam bibendum. Nulla facilisi. Vestibulum quis risus in lorem suscipit tempor. Morbi consectetur enim vitae justo finibus consectetur. Mauris volutpat nunc dui, quis condimentum dolor efficitur et. Phasellus rhoncus porta nunc eu fermentum. Nullam vitae erat hendrerit, tempor arcu eget, eleifend tortor.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">15 jun 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">One step to the end</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">drama</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">superhero</a>
                        </div>
                        <p class="text-short entity-text">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <article class="article-tape-entity">
                    <a class="entity-preview" href="../article-sidebar-right.jsp" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                        <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">24 may 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                        <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="../article-sidebar-right.jsp">Here we go again</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="news-blocks-sidebar-right.html">romance</a>,
                            <a class="content-link" href="news-blocks-sidebar-right.html">historical</a>
                        </div>
                        <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="../article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
                <div class="section-bottom">
                    <div class="paginator">
                        <a class="paginator-item" href="#"><i class="fas fa-chevron-left"></i></a>
                        <a class="paginator-item" href="#">1</a>
                        <span class="active paginator-item">2</span>
                        <a class="paginator-item" href="#">3</a>
                        <span class="paginator-item">...</span>
                        <a class="paginator-item" href="#">10</a>
                        <a class="paginator-item" href="#"><i class="fas fa-chevron-right"></i></a>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
<footer class="section-text-white footer footer-links bg-darken">
    <div class="footer-body container">
        <div class="row">
            <div class="col-sm-6 col-lg-3">
                <a class="footer-logo" href="../WEB-INF">
                            <span class="logo-element">
                                <span class="logo-tape">
                                    <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                                </span>
                                <span class="logo-text text-uppercase">
                                    <span>M</span>emico</span>
                            </span>
                </a>
                <div class="footer-content">
                    <p class="footer-text">Sidestate NSW 4132,
                        <br/>Australia</p>
                    <p class="footer-text">Call us:&nbsp;&nbsp;(555) 555-0312</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Movies</h5>
                <ul class="list-unstyled list-wide footer-content">
                    <li>
                        <a class="content-link" href="#">All Movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Upcoming movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Top 100 movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Blockbasters</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">British movies</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Summer movies collection</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Movie trailers</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Information</h5>
                <ul class="list-unstyled list-wide footer-content">
                    <li>
                        <a class="content-link" href="#">Schedule</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">News</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Contact us</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Community</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Blog</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Events</a>
                    </li>
                    <li>
                        <a class="content-link" href="#">Help center</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-3">
                <h5 class="footer-title text-uppercase">Follow</h5>
                <ul class="list-wide footer-content list-inline">
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-slack-hash"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-dribbble"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-google-plus-g"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="content-link" href="#"><i class="fab fa-instagram"></i></a>
                    </li>
                </ul>
                <h5 class="footer-title text-uppercase">Subscribe</h5>
                <div class="footer-content">
                    <p class="footer-text">Get latest movie news right away with our subscription</p>
                    <form class="footer-form" autocomplete="off">
                        <div class="input-group">
                            <input class="form-control" name="email" type="email" placeholder="Your email" />
                            <div class="input-group-append">
                                <button class="btn btn-theme" type="submit"><i class="fas fa-angle-right"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="container">Copyright 2019 &copy; AmigosThemes. All rights reserved.</div>
    </div>
</footer>
<!-- jQuery library -->
<script src="../js/jquery-3.3.1.js"></script>
<!-- Bootstrap -->
<script src="../template/bootstrap/js/bootstrap.js"></script>
<!-- Paralax.js -->
<script src="../template/parallax.js/parallax.js"></script>
<!-- Waypoints -->
<script src="../template/waypoints/jquery.waypoints.min.js"></script>
<!-- Slick carousel -->
<script src="../template/slick/slick.min.js"></script>
<!-- Magnific Popup -->
<script src="../template/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Inits product scripts -->
<script src="../js/script.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&callback=initMap"></script>
<script async defer src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>
</body>
</html>