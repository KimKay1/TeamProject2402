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

    <script>
        function deletePost() {
            var confirmed = confirm("정말로 삭제하시겠습니까?");
            if(confirmed){
                var form = document.writeFrm;
                form.method = "post";
                form.action = "/Review_Delete.do?idx=${dto.idx}";
                form.submit();
            }
        }
    </script>

</head>
<body class="body">
<jsp:include page="/temp/Header.jsp"></jsp:include>

<form name="writeFrm">

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
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>${dto.title}</span>
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
                                <img class="embed-responsive-item2" src="${dto.img}" alt="" />
                            </div>
                            <div class="entity-date">
                                <div class="tape-block tape-horizontal tape-single bg-theme text-white">
                                    <div class="tape-dots"></div>
                                    <div class="tape-content m-auto">${dto.postdate}</div>
                                    <div class="tape-dots"></div>
                                </div>
                            </div>
                        </div>
                        <div class="entity-content">
                            <h1 class="entity-title">${dto.title}</h1>

                            <a class="entity-category">
                                <a style="text-decoration: none;">작성자 : </a><a class="content-link" >${dto.name}</a>
                            </a>

                            <h2 class="entity-title">${dto.mtTitle}</h2>
                            <div class="entity-category">
                                <a class="content-link" >${dto.category}</a>
                            </div>
                        </div>
                    </article>
                    <div class="section-description">
                        <div>
                            <c:if test="${not empty dto.ofile and isImage eq true}">
                                <br>
                                <img src="../Uploads/${dto.sfile}" style="max-width: 50%;"/>
                            </c:if>
                        </div>
                        <p>${dto.content}</p>
                    </div>

                    <c:if test="${ not empty dto.ofile }">
                        <div>
                            <label class="entity-links-title">첨부 파일 다운로드</label>
                                ${ dto.ofile }
                            <a href="../Review_Down.do?ofile=${ dto.ofile }&sfile=${ dto.sfile }&idx=${ dto.idx }" class="content-link">
                                다운로드
                            </a>
                        </div>
                    </c:if>

                </div>

                <div class="section-bottom" style="padding: 0px 0px 20px 0px;">
                    <button style="float: left;" class="btn-theme btn" type="button" onclick="location.href='/Review_Main.do';">목록 돌아가기</button>
                    <c:if test="${sessionScope.UserId == dto.id}">
                        <button style="float:right; " class="btn-theme btn" type="button" onclick="deletePost();">삭제하기</button>
                        <button style="float:right; margin-right: 30px; " class="btn-theme btn" type="button" onclick="location.href='/Review_Edit.do?idx=${dto.idx}';">수정하기</button>
                    </c:if>
                </div>
            </section>
        </div>
    </div>
</div>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
</form>

<jsp:include page="/temp/Footer.jsp"></jsp:include>
</body>
</html>
