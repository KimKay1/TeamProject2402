<%@ page import="com.movieInfo.MovieInfoDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.movieInfo.MovieInfoDTO" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <a class="nav-link" data-role="nav-toggler">MOVIE</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=액션">Action</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=애니메이션">Animation</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=코미디">Comedy</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=범죄">Crime</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=드라마">Drama</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=판타지">Fantasy</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=스릴러">Thriller</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../category/view.do?category=로맨스">Romance</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">REVIEW</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../R/R_List.do">Review</a>
                            </li>
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" data-role="nav-toggler">User pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <%--로그인 상태일 때--%>
                                    <%
                                        if(session.getAttribute("UserId") != null){
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../member/MyPage.do">My page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Ex</a>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="./temp/LoginPlz.jsp">My page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="./temp/LoginPlz.jsp">Ex</a>
                                    </li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-extra">
                    <form class="d-flex" role="search" action="/navbar/search.do" method="get">
                        <input name="search" class="form-control me-2" type="search" placeholder="Title / Director Search" aria-label="Search">
                        <button type="submit" class="btn btn-theme">Search</button>
                    </form>
                </div>
                <div class="navbar-extra">
                    <%
                        if(session.getAttribute("UserId") == null){
                    %>
                    <a class="btn-theme btn" href="../member/Login.do"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Login</a>
                    <%
                    } else {
                    %>
                    <a class="btn-theme btn" href="temp/Logout.jsp"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Logout</a>
                    <%
                        }
                    %>
                </div>
            </div>
        </nav>
    </div>
</header>
<section class="section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-theme-blacked"></div>
    <div class="mt-auto container position-relative">
        <div class="top-block-head text-uppercase">
            <h2 class="display-4">Hot
                <span class="text-theme">Movies</span>
            </h2>
        </div>
        <%--  핫 무비 컨테이너  --%>
        <div class="top-block-footer">
            <div class="slick-spaced slick-carousel" data-slick-view="navigation responsive-4">
                <div class="slick-slides" id="slides">
                        <%--    핫 무비 영화 개별1   --%>
                        <div class="slick-slide">
                            <article class="poster-entity" data-role="hover-wrap">
                                <div class="embed-responsive embed-responsive-poster">
                                    <img class="embed-responsive-item movieimg" src="http://via.placeholder.com/340x510" alt="" />
                                </div>
                                <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                <div class="d-over bg-highlight-bottom">
                                    <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                    <h4 class="entity-title">
                                        <a class="content-link movietitle" href="movieView.jsp"></a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link moviecategory" href="movies-blocks.html"></a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                <span class="info-text mvisitcount">8,1</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text movierunningtime"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="slick-slide">
                            <article class="poster-entity" data-role="hover-wrap">
                                <div class="embed-responsive embed-responsive-poster">
                                    <img class="embed-responsive-item movieimg" src="http://via.placeholder.com/340x510" alt="" />
                                </div>
                                <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                <div class="d-over bg-highlight-bottom">
                                    <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                    <h4 class="entity-title">
                                        <a class="content-link movietitle"></a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link moviecategory" href="movies-blocks.html"></a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                <span class="info-text mvisitcount">8,1</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text movierunningtime"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="slick-slide">
                            <article class="poster-entity" data-role="hover-wrap">
                                <div class="embed-responsive embed-responsive-poster">
                                    <img class="embed-responsive-item movieimg" src="http://via.placeholder.com/340x510" alt="" />
                                </div>
                                <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                <div class="d-over bg-highlight-bottom">
                                    <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                    <h4 class="entity-title">
                                        <a class="content-link movietitle" href="movieView.jsp"></a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link moviecategory" href="movies-blocks.html"></a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                <span class="info-text mvisitcount">8,1</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text movierunningtime"></span>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="slick-slide">
                            <article class="poster-entity" data-role="hover-wrap">
                                <div class="embed-responsive embed-responsive-poster">
                                    <img class="embed-responsive-item movieimg" src="http://via.placeholder.com/340x510" alt="" />
                                </div>
                                <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                <div class="d-over bg-highlight-bottom">
                                    <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                            <span class="icon-content"><i class="fas fa-play"></i></span>
                                        </a>
                                    </div>
                                    <h4 class="entity-title">
                                        <a class="content-link movietitle" href="movieView.jsp"></a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link moviecategory" href="movies-blocks.html"></a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                <span class="info-text mvisitcount">8,1</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text movierunningtime"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-long">
    <div class="container">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Recent Movie</h2>
        </div>
        <article class="movie-line-entity">
            <div class="entity-poster" data-role="hover-wrap">
                <div class="embed-responsive embed-responsive-poster">
                    <img class="embed-responsive-item recentImg" src="http://via.placeholder.com/340x510" alt="" />
                </div>
                <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                    <div class="entity-play">
                        <a class="action-icon-theme action-icon-bordered rounded-circle recentyou" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                            <span class="icon-content"><i class="fas fa-play"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="entity-content">
                <h4 class="entity-title">
                    <a class="content-link recentTi" href="movieView.jsp">Outsider</a>
                </h4>
                <div class="entity-category">
                    <a class="content-link recentCa" href="movies-blocks.html">crime</a>
                </div>
                <div class="entity-info">
                    <div class="info-lines">
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                            <span class="info-text rvisitcount">8,1</span>
                        </div>
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                            <span class="info-text recentRun">125</span>
                            <span class="info-rest">&nbsp;min</span>
                        </div>
                    </div>
                </div>
                <p class="text-short entity-text recentSum">Aenean molestie turpis eu aliquam bibendum. Nulla facilisi. Vestibulum quis risus in lorem suscipit tempor. Morbi consectetur enim vitae justo finibus consectetur. Mauris volutpat nunc dui, quis condimentum dolor efficitur et. Phasellus rhoncus porta nunc eu fermentum. Nullam vitae erat hendrerit, tempor arcu eget, eleifend tortor.
                </p>
            </div>
        </article>
        <article class="movie-line-entity">
            <div class="entity-poster" data-role="hover-wrap">
                <div class="embed-responsive embed-responsive-poster">
                    <img class="embed-responsive-item recentImg" src="http://via.placeholder.com/340x510" alt="" />
                </div>
                <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                    <div class="entity-play">
                        <a class="action-icon-theme action-icon-bordered rounded-circle youtube" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                            <span class="icon-content"><i class="fas fa-play"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="entity-content">
                <h4 class="entity-title">
                    <a class="content-link recentTi" href="movieView.jsp">Moonlight night</a>
                </h4>
                <div class="entity-category">
                    <a class="content-link recentCa" href="movies-blocks.html">comedy</a>
                </div>
                <div class="entity-info">
                    <div class="info-lines">
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                            <span class="info-text rvisitcount">6,8</span>
                        </div>
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                            <span class="info-text recentRun">95</span>
                            <span class="info-rest">&nbsp;min</span>
                        </div>
                    </div>
                </div>
                <p class="text-short entity-text recentSum">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur ultrices justo a pellentesque. Praesent venenatis dolor nec tempus lacinia. Donec ac condimentum dolor. Nullam sit amet nisl hendrerit, pharetra nulla convallis, malesuada diam. Donec ornare nisl eu lectus rhoncus, at malesuada metus rutrum. Aliquam a nisl vulputate, sodales ipsum aliquam, tempus purus. Suspendisse convallis, lectus nec vehicula sollicitudin, lorem sapien rhoncus dolor, vel lacinia urna velit ullamcorper nisi. Phasellus pellentesque, magna nec gravida feugiat, est magna suscipit ligula, vel porttitor nunc enim at nibh. Sed varius sit amet leo vitae consequat.
                </p>
            </div>
        </article>
        <article class="movie-line-entity">
            <div class="entity-poster" data-role="hover-wrap">
                <div class="embed-responsive embed-responsive-poster">
                    <img class="embed-responsive-item recentImg" src="http://via.placeholder.com/340x510" alt="" />
                </div>
                <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                    <div class="entity-play">
                        <a class="action-icon-theme action-icon-bordered rounded-circle recentyou" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                            <span class="icon-content"><i class="fas fa-play"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="entity-content">
                <h4 class="entity-title">
                    <a class="content-link recentTi" href="movieView.jsp">Say no</a>
                </h4>
                <div class="entity-category">
                    <a class="content-link recentCa" href="movies-blocks.html">sport</a>
                </div>
                <div class="entity-info">
                    <div class="info-lines">
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                            <span class="info-text rvisitcount">7,4</span>
                        </div>
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                            <span class="info-text recentRun">105</span>
                            <span class="info-rest">&nbsp;min</span>
                        </div>
                    </div>
                </div>
                <p class="text-short entity-text recentSum">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                </p>
            </div>
        </article>
        <article class="movie-line-entity">
            <div class="entity-poster" data-role="hover-wrap">
                <div class="embed-responsive embed-responsive-poster">
                    <img class="embed-responsive-item recentImg" src="http://via.placeholder.com/340x510" alt="" />
                </div>
                <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                    <div class="entity-play">
                        <a class="action-icon-theme action-icon-bordered rounded-circle recentyou" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                            <span class="icon-content"><i class="fas fa-play"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="entity-content">
                <h4 class="entity-title">
                    <a class="content-link recentTi" href="movieView.jsp">Lonely rock</a>
                </h4>
                <div class="entity-category">
                    <a class="content-link recentCa" href="movies-blocks.html">drama</a>
                </div>
                <div class="entity-info">
                    <div class="info-lines">
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                            <span class="info-text rvisitcount">7,1</span>
                        </div>
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                            <span class="info-text recentRun">113</span>
                            <span class="info-rest">&nbsp;min</span>
                        </div>
                    </div>
                </div>
                <p class="text-short entity-text recentSum">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                </p>
            </div>
        </article>

        <article class="movie-line-entity">
            <div class="entity-poster" data-role="hover-wrap">
                <div class="embed-responsive embed-responsive-poster">
                    <img class="embed-responsive-item recentImg" src="http://via.placeholder.com/340x510" alt="" />
                </div>
                <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                    <div class="entity-play">
                        <a class="action-icon-theme action-icon-bordered rounded-circle recentyou" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                            <span class="icon-content"><i class="fas fa-play"></i></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="entity-content">
                <h4 class="entity-title">
                    <a class="content-link recentTi" href="movieView.jsp">New world</a>
                </h4>
                <div class="entity-category">
                    <a class="content-link recentCa" href="movies-blocks.html">thriller</a>
                </div>
                <div class="entity-info">
                    <div class="info-lines">
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                            <span class="info-text rvisitcount">9,1</span>
                        </div>
                        <div class="info info-short">
                            <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                            <span class="info-text recentRun">125</span>
                            <span class="info-rest">&nbsp;min</span>
                        </div>
                    </div>
                </div>
                <p class="text-short entity-text recentSum">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                </p>
            </div>
        </article>
    </div>
</section>
<section class="section-solid-long section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-gradient-black"></div>
    <div class="container position-relative">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Recommend Movie</h2>
        </div>
        <div class="slick-spaced slick-carousel" data-slick-view="navigation single">
            <div class="slick-slides">
                <div class="slick-slide">
                    <article class="movie-line-entity">
                        <div class="entity-preview">
                            <div class="embed-responsive embed-responsive-16by9">
                                <img class="embed-responsive-item randomImg" src="http://via.placeholder.com/1920x1080" alt="" />
                            </div>
                            <div class="d-over">
                                <div class="entity-play">
                                    <a class="action-icon-theme action-icon-bordered rounded-circle randomyou" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                        <span class="icon-content"><i class="fas fa-play"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="entity-content">
                            <h4 class="entity-title">
                                <a class="content-link randomTi" href="movieView.jsp">One way road</a>
                            </h4>
                            <div class="entity-category">
                                <a class="content-link randomCa" href="movies-blocks.html">sport</a>
                            </div>
                            <div class="entity-info">
                                <div class="info-lines">
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-calendar-alt"></i></span>
                                        <span class="info-text randomdate">18 jul 2020</span>
                                    </div>
                                    <div class="info info-short">
                                        <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                        <span class="info-text randomRun">130</span>
                                        <span class="info-rest">&nbsp;min</span>
                                    </div>
                                </div>
                            </div>
                            <p class="text-short entity-text randomSum">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                            </p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-long">
    <div class="container">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Latest Review</h2>
        </div>
        <div class="grid row">
            <div class="col-md-6">
                <article class="article-tape-entity">
                    <a class="entity-preview" href="article-sidebar-right.jsp" data-role="hover-wrap">
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
                            <a class="content-link" href="article-sidebar-right.jsp">Creative life</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">comedy</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">detective</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">sci-fi</a>
                        </div>
                        <p class="text-short entity-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur ultrices justo a pellentesque. Praesent venenatis dolor nec tempus lacinia. Donec ac condimentum dolor. Nullam sit amet nisl hendrerit, pharetra nulla convallis, malesuada diam. Donec ornare nisl eu lectus rhoncus, at malesuada metus rutrum. Aliquam a nisl vulputate, sodales ipsum aliquam, tempus purus. Suspendisse convallis, lectus nec vehicula sollicitudin, lorem sapien rhoncus dolor, vel lacinia urna velit ullamcorper nisi. Phasellus pellentesque, magna nec gravida feugiat, est magna suscipit ligula, vel porttitor nunc enim at nibh. Sed varius sit amet leo vitae consequat.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-md-6">
                <article class="article-tape-entity">
                    <a class="entity-preview" href="article-sidebar-right.jsp" data-role="hover-wrap">
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
                            <a class="content-link" href="article-sidebar-right.jsp">One step to the end</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">drama</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">superhero</a>
                        </div>
                        <p class="text-short entity-text">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-md-6">
                <article class="article-tape-entity">
                    <a class="entity-preview" href="article-sidebar-right.jsp" data-role="hover-wrap">
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
                            <a class="content-link" href="article-sidebar-right.jsp">Here we go again</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">romance</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">historical</a>
                        </div>
                        <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-md-6">
                <article class="article-tape-entity">
                    <a class="entity-preview" href="article-sidebar-right.jsp" data-role="hover-wrap">
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
                            <a class="content-link" href="article-sidebar-right.jsp">The one and the other</a>
                        </h4>
                        <div class="entity-category">
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">drama</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">western</a>,
                            <a class="content-link" href="templateEx/news-blocks-sidebar-right.jsp">sci-fi</a>
                        </div>
                        <p class="text-short entity-text">Aenean molestie turpis eu aliquam bibendum. Nulla facilisi. Vestibulum quis risus in lorem suscipit tempor. Morbi consectetur enim vitae justo finibus consectetur. Mauris volutpat nunc dui, quis condimentum dolor efficitur et. Phasellus rhoncus porta nunc eu fermentum. Nullam vitae erat hendrerit, tempor arcu eget, eleifend tortor.
                        </p>
                        <div class="entity-actions">
                            <a class="text-uppercase" href="article-sidebar-right.jsp">Read More</a>
                        </div>
                    </div>
                </article>
            </div>
        </div>
        <div class="section-bottom">
            <a class="btn btn-theme" href="templateEx/news-blocks-sidebar-right.jsp">View All Reviews</a>
        </div>
    </div>
</section>

<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>

<jsp:include page="temp/Footer.jsp"></jsp:include>
</body>
</html>
