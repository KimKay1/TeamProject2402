<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.Review.ReviewDTO" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Review Board</title>
  <style>
    a{text-decoration: none;}
  </style>
</head>
<body>
<h2>리뷰 게시판</h2>
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
    <th width="15%">작성자</th>
    <th width="10%">조회수</th>
    <th width="15%">작성일</th>
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
            <a href="../review_board/view.do?idx=${row.idx}">${row.title}</a>
          </td>
            <%-- 작성자 --%>
          <td>${row.id}</td>
            <%--조회수--%>
          <td>${row.visitcount}</td>
            <%--작성일--%>
          <td>${row.postdate}</td>
        </tr>
      </c:forEach>
    </c:otherwise>
  </c:choose>
</table>

<table border="1" width="90%">
  <tr align="center">
    <td>
      ${map.paingImg}
    </td>
    <td width="100">
      <button type = "button" onclick="location.href='../review/write.do';">글쓰기</button>
    </td>
  </tr>
</table>


</body>
</html>
