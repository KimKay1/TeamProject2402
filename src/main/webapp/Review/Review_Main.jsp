<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page import="com.Review.R_DTO" %>

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
    <link type="text/css" rel="stylesheet" href="/template/css/header.css"/>
</head>
<body class="body">
<jsp:include page="/temp/Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Review</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="../R/R_List.do.jsp">Home</a>
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
                <div class="section-body" style="height: 800px;">
                    <h2><a href="../R/R_List.do">리뷰 게시판</a> - 현재 페이지 : ${map.pageNum} (전체 : ${map.totalPage}) (총 게시물 : ${map.totalCount})</h2>

                    <%--게시물이 하나도 없을때 --%>
                    <c:choose>
                        <c:when test="${empty boardList}">
                            <tr>
                                <td colspan="6" align="center">
                                    등록된 게시물이 없습니다.
                                </td>
                            </tr>
                        </c:when>
                    </c:choose>

                    <%-- 게시물이 있을 때--%>
                    <c:forEach items="${boardList}" var="row" varStatus="loop">
                        <article class="article-tape-entity" style="width: 305px; height: 398px; float: left;  margin: 31px 20px; ">
                            <a class="entity-preview" href="*" data-role="hover-wrap">
                                        <span class="embed-responsive embed-responsive-16by9">
                                            <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                        </span>
                                <span class="entity-date">
                                            <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                                <span class="tape-dots"></span>
                                                <span class="tape-content m-auto">${row.postdate}</span>
                                                <span class="tape-dots"></span>
                                            </span>
                                        </span>
                                <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                            <span class="m-auto"><i class="fas fa-search"></i></span>
                                        </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link">${row.title}</a>
                                </h4>
                               <%-- <div class="entity-category">
                                    <a class="content-link" href="news-blocks-sidebar-right.html">comedy</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">detective</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                                </div>--%>
                                <p class="text-short entity-text">${row.content}</p>
                                <div class="entity-actions">
                                    <a class="text-uppercase" href="../R/R_View.do?idx=${row.idx}">더 읽기</a>
                                </div>
                            </div>
                        </article>
                    </c:forEach>

                </div>
            </section>

            <div class="section-bottom" style="padding: 0px 105px 30px 105px;">
                <div class="paginator" >

                        ${map.pagingImg}

                    <%--<a class="paginator-item" href="#"><i class="fas fa-chevron-left"></i></a>
                    <a class="paginator-item" href="#">1</a>
                    <span class="active paginator-item">2</span>
                    <a class="paginator-item" href="#">3</a>
                    <span class="paginator-item">...</span>
                    <a class="paginator-item" href="#">10</a>
                    <a class="paginator-item" href="#"><i class="fas fa-chevron-right"></i></a>--%>
                </div>

                <button style="float:right; " class="btn-theme btn" type="button" onclick="location.href='../R/R_Write.do';">글쓰기</button>
            </div>
        </div>

    </div>
</div>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>

<jsp:include page="/temp/Footer.jsp"></jsp:include>
</body>
</html>