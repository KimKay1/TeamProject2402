<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="/template/css/header.css"/>
</head>
<body>

<jsp:include page="./Header.jsp"></jsp:include>



<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section-long">
                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Comment</h2>
                    </div>
                                <div class="comment-entity">
                                    <div class="entity-inner">
                                        <div class="entity-content">
                                            <h4 class="entity-title">${dto.name}</h4>
                                            <p class="entity-subtext">${dto.postdate}</p>
                                            <p class="entity-text">${dto.content}</p>
                                        </div>
                                        <div class="entity-extra">
                                            <div class="grid-md row">
                                                <div class="col-12 col-sm-auto">
                                                    <div class="entity-rating">
                                                        <c:forEach begin="1" end="${(dto.favor)}">
                                                            <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                                        </c:forEach>
                                                        <c:forEach begin="1" end="${10-(dto.favor)}">
                                                            <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                                <div class="ml-sm-auto col-auto">
                                                    <a class="content-link" href="../comment/pass.do?mode=edit&idx=${ dto.idx }"></a>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="content-link" href="../comment/pass.do?mode=delete&idx=${ dto.idx }"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                </div>

                <div class="section-line">
                    <div class="section-head">
                        <h2 class="section-title text-uppercase">Edit comment</h2>
                    </div>
                    <form action="../comment/edit.do" method="post" autocomplete="off">
                        <input type="hidden" name="num" value="${param.num}">
                        <input type="hidden" name="idx" value="${param.idx}">
                        <input type="hidden" name="mode" value="${param.mode}">
                        <input type="hidden" name="title" value="${dto.title}">
                        <input type="hidden" name="category" value="${dto.category}">

                        <div class="row form-grid">
                            <div class="col-12 col-sm-6">
                                <div class="input-view-flat input-group">
                                    <input class="form-control" name="name" type="text" value="${dto.name}" />
                                </div>
                            </div>
                            <div class="col-12 col-sm-6">
                                <div class="input-view-flat input-group">
                                    <input class="form-control" name="pass" type="password" placeholder="Password" />
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="input-view-flat input-group">
                                    <textarea class="form-control" name="content" placeholder="Edit your comment"></textarea>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="rating-line">
                                    <label>Rating:</label>
                                    <div class="form-rating" name="favor">
                                        <input type="radio" id="rating-10" name="favor" value="10" />
                                        <label for="rating-10">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-9" name="favor" value="9" />
                                        <label for="rating-9">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-8" name="favor" value="8" />
                                        <label for="rating-8">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-7" name="favor" value="7" />
                                        <label for="rating-7">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-6" name="favor" value="6" />
                                        <label for="rating-6">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-5" name="favor" value="5" />
                                        <label for="rating-5">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-4" name="favor" value="4" />
                                        <label for="rating-4">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-3" name="favor" value="3" />
                                        <label for="rating-3">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-2" name="favor" value="2" />
                                        <label for="rating-2">
                                            <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                            <span class="rating-icon"><i class="far fa-star"></i></span>
                                        </label>
                                        <input type="radio" id="rating-1" name="favor" value="1" />
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
<a class="scroll-top disabled"><i class="fas fa-angle-up" aria-hidden="true"></i></a>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
