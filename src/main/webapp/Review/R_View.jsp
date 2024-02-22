<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 게시판</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
<body>
<h2>리뷰 게시물</h2>
<form name="writeFrm">
    <table border="1" width="90%" >
        <colgroup>
            <col width="15%"/> <col width="35%"/>
            <col width="15%"/> <col width="*"/>
        </colgroup>

        <!-- 게시글 정보 -->
        <tr>
            <td>번호</td> <td>${ dto.idx }</td>
            <td>작성자</td> <td>${ dto.id }</td>
        </tr>
        <tr>
            <td>작성일</td> <td>${ dto.postdate }</td>
            <td>조회수</td> <td>${ dto.visitcount }</td>
        </tr>
        <tr>
            <td>제목</td>
            <td colspan="3">${ dto.title }</td>
        </tr>
        <tr>
            <td>내용</td>
            <td colspan="3" height="100">
                ${ dto.content }
            </td>
        </tr>

        <!-- 하단 메뉴(버튼) -->
        <tr>
            <td colspan="4" align="center">
            <c:if test="${sessionScope.UserId == dto.id}">
                <button type="button" onclick="location.href='../R/R_Edit.do?idx=${param.idx}';">
                    수정하기
                </button>
                <button type="button" onclick="deletePost();">
                    삭제하기
                </button>
            </c:if>
                <button type="button" onclick="location.href='../R/R_List.do';">
                    목록 바로가기
                </button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>