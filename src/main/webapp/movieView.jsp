<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <!-- Bootstrap -->
    <link href="./template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="./template/animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="./template/fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
    <!-- Magnific Popup -->
    <link href="./template/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slick carousel -->
    <link href="./template/slick/slick.css" rel="stylesheet" type="text/css" />
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="./template/css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="./template/css/theme.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel">
    <div class="container">
        <nav class="navbar">
            <a class="navbar-brand" href="./index.jsp">
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
                                        <a class="nav-link" href="movies-list.jsp">List - No Sidebar</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="templateEx/movie-info-sidebar-right.jsp">Movie info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="gallery.jsp">Gallery</a>
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
            <h1 class="section-title">Movies info</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="#">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <a class="content-link" href="movies-blocks.html">Movies</a>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long">
                <div class="section-line">
                    <div class="movie-info-entity">
                        <div class="entity-poster" data-role="hover-wrap">
                            <div class="embed-responsive embed-responsive-poster">
                                <img class="embed-responsive-item" src="${dto.img}" alt="" />
                            </div>
                            <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                <div class="entity-play">
                                    <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="${dto.youtube}" data-magnific-popup="iframe">
                                        <span class="icon-content"><i class="fas fa-play"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="entity-content">
                            <h2 class="entity-title title">${dto.title}</h2>
                            <div class="entity-category">
                                <a class="content-link category">${dto.category}</a>
                            </div>
                            <div class="entity-info">
                                <div class="info-lines">
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                        <span class="info-text">${dto.visitcount}</span>
                                    </div>
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                        <span class="info-text runningtime">${dto.runningtime}</span>
                                        <span class="info-rest">&nbsp;min</span>
                                    </div>
                                </div>
                            </div>
                            <ul class="entity-list">
                                <li>
                                    <span class="entity-list-title releasedate">Release:</span>${dto.releasedate}</li>
                                <li>
                                    <span class="entity-list-title">Directed:</span>
                                    <a class="content-link" href="#">${dto.director}</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Starring:</span>
                                    <a class="content-link" href="#">${dto.actor}</a><br/>
                                </li>
                                <li>
                                    <span class="entity-list-title">Production company:</span>
                                    <a class="content-link" href="#">${dto.production}</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Country:</span>
                                    <a class="content-link" href="#">USA</a>,
                                    <a class="content-link" href="#">India</a>
                                </li>
                                <li>
                                    <span class="entity-list-title">Language:</span>english</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Synopsis</h2>
                    </div>
                    <div class="section-description">
                        <%=request.getAttribute("wrappedText")%>
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
                        <h2 class="section-title text-uppercase">Photos & videos</h2>
                    </div>
                    <div class="grid row">
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">
                                                <span class="icon-content"><i class="fas fa-search"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">Work hard image</h4>
                                    <p class="entity-subtext">12 may 2019</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="bg-theme-lighted d-over collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">May video review</h4>
                                    <p class="entity-subtext">11 may 2019</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">
                                                <span class="icon-content"><i class="fas fa-search"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">Virtual image title</h4>
                                    <p class="entity-subtext">31 february 2019</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">
                                                <span class="icon-content"><i class="fas fa-search"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">Lost image title</h4>
                                    <p class="entity-subtext">30 february 2019</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">
                                                <span class="icon-content"><i class="fas fa-search"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">My image title</h4>
                                    <p class="entity-subtext">21 january 2019</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-4">
                            <div class="gallery-card-entity">
                                <div class="entity-preview" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="bg-theme-lighted d-over collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-view-popup">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">Movie trailer</h4>
                                    <p class="entity-subtext">12 january 2019</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="section-bottom">
                        <a class="btn btn-theme" href="gallery.html">View All</a>
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
                    <h2 class="section-title text-uppercase">Latest movies</h2>
                </div>
                <div class="movie-short-line-entity">
                    <a class="entity-preview" href="movie-info-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="movie-info-sidebar-right.html">Deadman skull</a>
                        </h4>
                        <p class="entity-subtext">11 nov 2018</p>
                    </div>
                </div>
                <div class="movie-short-line-entity">
                    <a class="entity-preview" href="movie-info-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="movie-info-sidebar-right.html">Dream forest</a>
                        </h4>
                        <p class="entity-subtext">29 oct 2018</p>
                    </div>
                </div>
                <div class="movie-short-line-entity">
                    <a class="entity-preview" href="movie-info-sidebar-right.html">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                </span>
                    </a>
                    <div class="entity-content">
                        <h4 class="entity-title">
                            <a class="content-link" href="movie-info-sidebar-right.html">Fall</a>
                        </h4>
                        <p class="entity-subtext">29 oct 2018</p>
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
                <a class="footer-logo" href="">
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
<script src="template/js/jquery-3.3.1.js"></script>
<!-- Bootstrap -->
<script src="template/bootstrap/js/bootstrap.js"></script>
<!-- Paralax.js -->
<script src="template/parallax.js/parallax.js"></script>
<!-- Waypoints -->
<script src="template/waypoints/jquery.waypoints.min.js"></script>
<!-- Slick carousel -->
<script src="template/slick/slick.min.js"></script>
<!-- Magnific Popup -->
<script src="template/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Inits product scripts -->
<script src="template/js/script.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&callback=initMap"></script>
<script async defer src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>
</body>
</html>