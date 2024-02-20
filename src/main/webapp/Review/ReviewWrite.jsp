<%@ page contentType="text/html; charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
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
<h2>파일 첨부형 게시판 - 글쓰기</h2>
<form name="writeFrm" method="post" enctype="multipart/form-data" action="../Review/ReviewWrite.do" onsubmit="return validateForm(this)">
    <table border="1" width="90%">
        <tr>
            <td>아이디</td>
            <td>${dto.id}</td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" style="width: 90%"/></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" style="width: 90%; height: 100px"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit">작성 완료</button>
                <button type="reset">다시 입력</button>
                <button type="button" onclick="location.href='../Review/ReviewList.do';">목록 바로가기</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
