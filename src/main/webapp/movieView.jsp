<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.apache.catalina.util.URLEncoder" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
    <link href="template/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="./temp/Header.jsp"></jsp:include>
<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Movies info</h1>
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


                    <jsp:include page="./temp/CommentForm.jsp"></jsp:include>

                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Recommend</h2>
                    </div>
                    <div class="grid row">
                        <c:choose>
                            <c:when test="${empty favorList}">
                                <div STYLE="padding-left: 17px">
                                    <tr>
                                        <td colspan="6" align="center" >
                                                 추천작이 없습니다.
                                        </td>
                                    </tr>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${favorList}" var="row" begin="0" end="${favorListNum}">
                                <div class="col-sm-6 col-xl-4">
                                    <div class="gallery-card-entity">
                                        <div class="entity-preview" data-role="hover-wrap">
                                            <div class="embed-responsive embed-responsive-16by9">
                                                <img class="embed-responsive-item" src="${row.img}" alt="" />
                                            </div>
                                            <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                                <div class="entity-view-popup">
                                                    <a class="content-link action-icon-bordered rounded-circle" href="/movieView.do?num=${row.num}">
                                                        <span class="icon-content"><i class="fas fa-search"></i></span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="entity-content">
                                            <h4 class="entity-title">${row.title}</h4>
                                            <p class="entity-subtext">별점 : ${row.favor}</p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
<%--                        <div class="col-sm-6 col-xl-4">--%>
<%--                            <div class="gallery-card-entity">--%>
<%--                                <div class="entity-preview" data-role="hover-wrap">--%>
<%--                                    <div class="embed-responsive embed-responsive-16by9">--%>
<%--                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />--%>
<%--                                    </div>--%>
<%--                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">--%>
<%--                                        <div class="entity-view-popup">--%>
<%--                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">--%>
<%--                                                <span class="icon-content"><i class="fas fa-search"></i></span>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="entity-content">--%>
<%--                                    <h4 class="entity-title">Work hard image</h4>--%>
<%--                                    <p class="entity-subtext">별점 : </p>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-sm-6 col-xl-4">--%>
<%--                            <div class="gallery-card-entity">--%>
<%--                                <div class="entity-preview" data-role="hover-wrap">--%>
<%--                                    <div class="embed-responsive embed-responsive-16by9">--%>
<%--                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />--%>
<%--                                    </div>--%>
<%--                                    <div class="d-over bg-black-40 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">--%>
<%--                                        <div class="entity-view-popup">--%>
<%--                                            <a class="content-link action-icon-bordered rounded-circle" href="http://via.placeholder.com/1920x1080" data-magnific-popup="image">--%>
<%--                                                <span class="icon-content"><i class="fas fa-search"></i></span>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="entity-content">--%>
<%--                                    <h4 class="entity-title">Virtual image title</h4>--%>
<%--                                    <p class="entity-subtext">별점 : </p>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>

            </section>
        </div>

        <div class="sidebar section-long order-lg-last">
            <section class="section-sidebar">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Recently viewed movies</h2>
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
<jsp:include page="temp/Footer.jsp"></jsp:include>
</body>
</html>