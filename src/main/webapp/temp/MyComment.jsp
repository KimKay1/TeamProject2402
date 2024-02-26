<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <jsp:include page="../temp/Header.jsp"></jsp:include>
    <section class="after-head d-flex section-text-white position-relative">
        <div class="d-background" data-image-src="" data-parallax="scroll"></div>
        <div class="d-background bg-black-80"></div>
        <div class="top-block top-inner container">
            <div class="top-block-content">
                <h1 class="section-title">My Comment</h1>
                <div class="page-breadcrumbs">
                    <a class="content-link" href="../index.jsp">Home</a>
                    <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                    <span>My Comment</span>
                </div>
            </div>
        </div>
    </section>

    <div class="section-line" style="margin: auto; padding: 30px 30px 30px 30px; width: 80%;">
        <div class="section-head">
            <h2 class="section-title text-uppercase">Comments</h2>
        </div>
        <c:choose>
            <c:when test="${empty boardList}"> <%--게시글이 없을때--%>
                <tr>
                    <td colspan="6" align="center">
                        등록된 코멘트가 없습니다.
                    </td>
                </tr>
            </c:when>
            <c:otherwise> <%--게시글이 있을 때--%>
                <c:forEach items="${boardList}" var="row" varStatus="loop">
                    <div class="comment-entity">
                        <div class="entity-inner">
                            <div class="entity-content">
                                <h4 class="entity-title">${row.name}</h4>
                                <p class="entity-subtext">${row.postdate}</p>
                                <p class="entity-text">${row.content}</p>
                            </div>
                            <div class="entity-extra">
                                <div class="grid-md row">
                                    <div class="col-12 col-sm-auto">
                                        <div class="entity-rating">
                                            <c:forEach begin="1" end="${(row.favor)}">
                                                <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
                                            </c:forEach>
                                            <c:forEach begin="1" end="${10-(row.favor)}">
                                                <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="ml-sm-auto col-auto">
                                        <a class="content-link">${row.title}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>

    <div class="section-bottom">
        <div class="paginator">
            <div class="paginator-item">${map.pagingImg}</div>
        </div>
    </div>


    <jsp:include page="../temp/Footer.jsp"></jsp:include>

</body>
</html>
