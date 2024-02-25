<%@ page contentType="text/html; charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="R_Login.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript">
        function validateForm(form) {
            if (!form.title.value) {
                alert("제목을 입력 하세요");
                form.title.focus();
                return false;
            }
            if (!form.content.value) {
                alert("내용을 입력 하세요");
                form.content.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<h2>리뷰 게시판 - 글쓰기</h2>
<form name="writeFrm" method="post" enctype="application/x-www-form-urlencoded" action="../R/R_Write.do" onsubmit="return validateForm(this)">

    <table border="1" width="90%">
        <tr>
            <td>영화 선택</td>
            <td><%--선택 폼으로 DB에 있는 영화 중 하나 선택--%></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" style="width: 90%"/></td>
        </tr>
        <tr>
            <td>영화 섬네일</td>
            <td><%--선택한 영화의 이미지를 DB에서 불러와야함--%></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" style="width: 90%; height: 100px"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit">작성 완료</button>
                <button type="reset">다시 입력</button>
                <button type="button" onclick="location.href='../R/R_List.do';">목록 바로가기</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
