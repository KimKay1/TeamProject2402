<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
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
    <link type="text/css" rel="stylesheet" href="/template/css/header.css"/>
</head>
<body class="body">
<jsp:include page="/temp/Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Review</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="#">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>Review</span>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>Review Write</span>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long section-spaced">
                <div class="section-line">
                    <form action="../Review_Edit.do" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="idx" value="${dto.idx}">
                        <input type="hidden" name="prevOfile" value="${dto.ofile}">
                        <input type="hidden" name="prevSfile" value="${dto.sfile}">
                            <div class="mb-3">
                                <input type="hidden" name="idx" value="${dto.idx}"/>
                                    <%--<label class="form-label">영화</label>
                                        <select name="movieNum" class="form-control">
                                            <c:forEach items="${listMovieInfo}" var="row" varStatus="loop">
                                                <option value="${row.num}">${row.title}</option>
                                            </c:forEach>
                                        </select>--%>
                            </div>

                            <div class="mb-3">
                                <label class="form-label" style="">제목</label>
                                <input type="text" class="form-control" name="title" value="${dto.title}" />
                            </div>

                            <div class="mb-3">
                                <label  class="form-label">리뷰 수정</label>
                                <textarea class="form-control" name="content" style="height: 30rem">${dto.content}</textarea>
                            </div>
                            <div>
                                <label class="form-label">첨부 파일</label>
                                <input type="file" class="form-control" name="ofile" />
                            </div>

                            <div class="section-bottom">
                                <button class="btn btn-theme" type="reset">다시 입력</button>
                                <button class="btn btn-theme" type="submit">작성 완료</button>
                            </div>
                    </form>
                </div>
            </section>
        </div>
    </div>
</div>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>

<jsp:include page="/temp/Footer.jsp"></jsp:include>
</body>
</html>
