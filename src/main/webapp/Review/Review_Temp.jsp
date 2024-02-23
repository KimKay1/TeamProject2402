<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        a{text-decoration: none;}
    </style>
</head>
<body>
<jsp:include page="/temp/Header.jsp"></jsp:include>
<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Movies Review</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="#">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <a class="content-link" href="/R/R_List.do">Review</a>
            </div>
        </div>
    </div>
</section>

<h2><a href="../R/R_List.do">리뷰 게시판</a> - 현재 페이지 : ${map.pageNum} (전체 : ${map.totalPage})</h2>
<%--검색 폼--%>
<form method="get">
    <table border="1" width="90%">
        <tr>
            <td align="center">
                <select name="searchField">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" name="searchWord">
                <input type="submit" value="검색">
            </td>
        </tr>
    </table>
</form>

<%--게시물 목록 테이블--%>
<table border="1" width="90%">
    <tr>
        <th width="10%">번호</th>
        <th width="*">제목</th>
        <th width="15%">영화 제목</th>
        <th width="15%">작성자</th>
        <th width="15%">이름</th>
        <th width="10%">조회수</th>
        <th width="15%">작성시간</th>
    </tr>

    <%--게시물이 하나도 없을때 --%>
    <c:choose>
        <c:when test="${empty boardList}">
            <tr>
                <td colspan="6" align="center">
                    등록된 게시물이 없습니다.
                </td>
            </tr>
        </c:when>

        <%--게시물이 있을 때 --%>
        <c:otherwise>
            <c:forEach items="${boardList}" var="row" varStatus="loop">
                <tr align="center">
                        <%--게시글 번호--%>
                    <td>
                            ${row.idx}
                    </td>
                        <%--제목--%>
                    <td align="left">
                        <a href="../R/R_View.do?idx=${row.idx}">${row.title}</a>
                    </td>
                        <%--영화 제목--%>
                    <td>

                    </td>
                        <%-- 작성자 --%>
                    <td>${row.id}</td>
                        <%-- 이름 --%>
                    <td>${row.name}</td>
                        <%--조회수--%>
                    <td>${row.visitcount}</td>
                        <%--작성시간--%>
                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${row.postdate}" /></td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</table>

<table border="1" width="90%">
    <tr align="center">
        <td>
            ${map.pagingImg}
        </td>
        <td width="100">
            <button type = "button" onclick="location.href='../R/R_Write.do';">글쓰기</button>
        </td>
    </tr>
</table>

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