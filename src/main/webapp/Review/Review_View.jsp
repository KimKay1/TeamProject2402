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
                form.action = "/R/R_Delete.do?idx=${param.idx}";
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
                <span>${dto2.title}</span>
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
                            <h1 class="entity-title">${dto2.title}</h1>

                            <h2 class="entity-title">${dto.title}</h2>
                            <div class="entity-category">
                                <a class="content-link" >${dto.category}</a>
                            </div>
                        </div>
                    </article>
                    <div class="section-description">
                        <p>${dto.content}</p>
                    </div>
                </div>

                <div class="section-bottom" style="padding: 0px 105px 30px 105px;">
                    <c:if test="${sessionScope.UserId == dto.id}">
                        <button style="float:right; " class="btn-theme btn" type="button" onclick="deletePost();">삭제하기</button>
                    </c:if>
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
    </div>
</div>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
</form>


<jsp:include page="/temp/Footer.jsp"></jsp:include>
</body>
</html>
