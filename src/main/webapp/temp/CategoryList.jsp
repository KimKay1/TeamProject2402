<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<body>

<jsp:include page="./Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">${dto.category}</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="../index.jsp">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>${dto.category}</span>
            </div>
        </div>
    </div>
</section>
<section class="section-long" style="margin: auto; padding: 30px 30px 30px 30px; width: 80%;">
    <div class="container">
        <div class="grid row">
            <c:choose>
                <c:when test="${empty boardList}"> <%--게시글이 없을때--%>
                    <tr>
                        <td colspan="6" align="center">
                            coming soon...
                        </td>
                    </tr>
                </c:when>
                <c:otherwise> <%--게시글이 있을 때--%>
                    <c:forEach items="${boardList}" var="row" varStatus="loop">
                        <div class="col-sm-6 col-lg-4">
                            <div class="gallery-entity">
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
                                        <h4 class="entity-title">${row.title}</h4>
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
    </div>
</section>
<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
<jsp:include page="./Footer.jsp"></jsp:include>
</body>
</html>
