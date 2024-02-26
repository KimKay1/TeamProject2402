<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page import="com.Review.R_DTO" %>
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
<h2><a href="../R/R_List.do">리뷰 게시판</a> - 현재 페이지 : ${map.pageNum} (전체 : ${map.totalPage}) (총 게시물 : ${map.totalcount})</h2>
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
</body>
</html>

