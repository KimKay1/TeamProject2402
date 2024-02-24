<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
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
                        <h2 class="section-title text-uppercase">Delete comment</h2>
                    </div>
                    <form action="../comment/pass.do" method="post" autocomplete="off">
                        <input type="hidden" name="num" value="${param.num}">
                        <input type="hidden" name="idx" value="${param.idx}">
                        <input type="hidden" name="mode" value="${param.mode}">

                        <div class="row form-grid">
                            <div class="col-12">
                                <div class="input-view-flat input-group">
                                    <input class="form-control" name="pass" type="password" placeholder="비밀번호를 입력하세요" />
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
