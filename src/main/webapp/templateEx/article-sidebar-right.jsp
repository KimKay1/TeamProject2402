<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <!-- Bootstrap -->
    <link href="/template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="/template/animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="/template/fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
    <!-- Magnific Popup -->
    <link href="/template/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slick carousel -->
    <link href="/template/slick/slick.css" rel="stylesheet" type="text/css" />
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="/template/css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="/template/css/theme.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel">
    <div class="container">
        <nav class="navbar">
            <a class="navbar-brand" href="./">
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
                        <a class="nav-link" href="index.jsp">Homepage</a>
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
                                        <a class="nav-link" href="templateEx/movies-list.jsp">List - No Sidebar</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="templateEx/movie-info-sidebar-right.jsp">Movie info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="templateEx/gallery.jsp">Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="templateEx/news-blocks-sidebar-right.jsp">News</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">REVIEW</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Review</a>
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
                    <a class="btn-theme btn" href="temp/Login.jsp"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Login</a>
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
            <h1 class="section-title">Article</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="#">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>News</span>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long section-spaced">
                <div class="section-line">
                    <article class="article-tape-entity">
                        <div class="entity-preview">
                            <div class="embed-responsive embed-responsive-16by9">
                                <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                            </div>
                            <div class="entity-date">
                                <div class="tape-block tape-horizontal tape-single bg-theme text-white">
                                    <div class="tape-dots"></div>
                                    <div class="tape-content m-auto">20 jul 2019</div>
                                    <div class="tape-dots"></div>
                                </div>
                            </div>
                        </div>
                        <div class="entity-content">
                            <h2 class="entity-title">Creative life</h2>
                            <div class="entity-category">
                                <a class="content-link" href="news-blocks-sidebar-right.html">comedy</a>,
                                <a class="content-link" href="news-blocks-sidebar-right.html">detective</a>,
                                <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                            </div>
                        </div>
                    </article>
                    <div class="section-description">
                        <p class="lead">Lead text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        <h6 class="text-dark">Why do we use it?</h6>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                        <h6 class="text-dark">Where does it come from?</h6>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                    </div>
                    <div class="section-bottom">
                        <div class="row">
                            <div class="mr-auto col-auto">
                                <div class="entity-links">
                                    <div class="entity-list-title">Share:</div>
                                    <a class="content-link entity-share-link" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="content-link entity-share-link" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="content-link entity-share-link" href="#"><i class="fab fa-google-plus-g"></i></a>
                                    <a class="content-link entity-share-link" href="#"><i class="fab fa-pinterest-p"></i></a>
                                    <a class="content-link entity-share-link" href="#"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="col-auto">
                                <div class="entity-links">
                                    <div class="entity-list-title">Tags:</div>
                                    <a class="content-link" href="#">family</a>,&nbsp;
                                    <a class="content-link" href="#">gaming</a>,&nbsp;
                                    <a class="content-link" href="#">historical</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Comments</h2>
                    </div>
                    <div class="comment-entity">
                        <div class="entity-inner">
                            <div class="entity-content">
                                <h4 class="entity-title">Lie Stone</h4>
                                <p class="entity-subtext">07.08.2018, 14:33</p>
                                <p class="entity-text">Comment example here. Nulla risus lacus, vehicula id mi vitae, auctor accumsan nulla. Sed a mi quam. In euismod urna ac massa adipiscing interdum.
                                </p>
                            </div>
                            <div class="entity-extra">
                                <div class="grid-md row">
                                    <div class="col-12 col-sm-auto">
                                        <div class="entity-rating">
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="ml-sm-auto col-auto">
                                        <a class="content-link" href="#"><i class="fas fa-reply"></i>&nbsp;&nbsp;reply</a>
                                    </div>
                                    <div class="col-auto">
                                        <a class="content-link" href="#"><i class="fas fa-quote-left"></i>&nbsp;&nbsp;quote</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment-entity">
                            <div class="entity-inner">
                                <div class="entity-content">
                                    <h4 class="entity-title">Gabriel Norris</h4>
                                    <p class="entity-subtext">09.08.2018, 11:33</p>
                                    <p class="entity-text">Comment example here. Nulla risus lacus, vehicula id mi vitae, auctor accumsan nulla. Sed a mi quam. In euismod urna ac massa adipiscing interdum.
                                    </p>
                                </div>
                                <div class="entity-extra">
                                    <div class="grid-md row">
                                        <div class="ml-sm-auto col-auto">
                                            <a class="content-link" href="#"><i class="fas fa-reply"></i>&nbsp;&nbsp;reply</a>
                                        </div>
                                        <div class="col-auto">
                                            <a class="content-link" href="#"><i class="fas fa-quote-left"></i>&nbsp;&nbsp;quote</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-entity">
                        <div class="entity-inner">
                            <div class="entity-content">
                                <h4 class="entity-title">Keith Earlee</h4>
                                <p class="entity-subtext">11.05.2018, 07:23</p>
                                <p class="entity-text">Comment example here. Nulla risus lacus, vehicula id mi vitae, auctor accumsan nulla. Sed a mi quam. In euismod urna ac massa adipiscing interdum.
                                </p>
                            </div>
                            <div class="entity-extra">
                                <div class="grid-md row">
                                    <div class="col-12 col-sm-auto">
                                        <div class="entity-rating">
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="ml-sm-auto col-auto">
                                        <a class="content-link" href="#"><i class="fas fa-reply"></i>&nbsp;&nbsp;reply</a>
                                    </div>
                                    <div class="col-auto">
                                        <a class="content-link" href="#"><i class="fas fa-quote-left"></i>&nbsp;&nbsp;quote</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Add comment</h2>
                    </div>
                    <form autocomplete="off">
                        <div class="row form-grid">
                            <div class="col-12 col-sm-6">
                                <div class="input-view-flat input-group">
                                    <input class="form-control" name="name" type="text" placeholder="Name" />
                                </div>
                            </div>
                            <div class="col-12 col-sm-6">
                                <div class="input-view-flat input-group">
                                    <input class="form-control" name="email" type="email" placeholder="Email" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="input-view-flat input-group">
                                    <textarea class="form-control" name="review" placeholder="Add your review"></textarea>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="rating-line">
                                    <label>Rating:</label>
                                    <div class="form-rating" name="rating">
                                        <input type="radio" id="rating-10" name="rating" value="10" />
                                        <label for="rating-10">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-9" name="rating" value="9" />
                                        <label for="rating-9">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-8" name="rating" value="8" />
                                        <label for="rating-8">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-7" name="rating" value="7" />
                                        <label for="rating-7">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-6" name="rating" value="6" />
                                        <label for="rating-6">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-5" name="rating" value="5" />
                                        <label for="rating-5">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-4" name="rating" value="4" />
                                        <label for="rating-4">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-3" name="rating" value="3" />
                                        <label for="rating-3">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-2" name="rating" value="2" />
                                        <label for="rating-2">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-1" name="rating" value="1" />
                                        <label for="rating-1">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="px-5 btn btn-theme" type="submit">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>
        <div class="sidebar section-long order-lg-last">
            <section class="section-sidebar">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Latest articles</h2>
                </div>
                <div class="article-short-line-entity">
                    <a class="entity-preview" href="article-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="article-sidebar-right.html">Creative life</a>
                        </h4>
                        <p class="entity-subtext">20 jul 2019</p>
                    </div>
                </div>
                <div class="article-short-line-entity">
                    <a class="entity-preview" href="article-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="article-sidebar-right.html">One step to the end</a>
                        </h4>
                        <p class="entity-subtext">15 jun 2019</p>
                    </div>
                </div>
                <div class="article-short-line-entity">
                    <a class="entity-preview" href="article-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="article-sidebar-right.html">Here we go again</a>
                        </h4>
                        <p class="entity-subtext">24 may 2019</p>
                    </div>
                </div>
            </section>
            <section class="section-sidebar">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Archive</h2>
                </div>
                <ul class="list-unstyled list-wider list-categories">
                    <li>
                        <a class="content-link text-uppercase" href="#">July 2018</a>
                    </li>
                    <li>
                        <a class="content-link text-uppercase" href="#">June 2018</a>
                    </li>
                    <li>
                        <a class="content-link text-uppercase" href="#">May 2018</a>
                    </li>
                    <li>
                        <a class="content-link text-uppercase" href="#">April 2018</a>
                    </li>
                </ul>
            </section>
            <section class="section-sidebar">
                <a class="d-block" href="#">
                    <img class="w-100" src="http://via.placeholder.com/350x197" alt="" />
                </a>
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
