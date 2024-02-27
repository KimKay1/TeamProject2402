<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<%--파일 업로드 추가하기?--%>

<body>

관리자 페이지 입니다

<div>영화 추가
<form action="../admin.do?mode=insert" method="post">
    title <input type="text" name = "title">
    director <input type="text" name = "director">
    actor <input type="text" name = "actor">
    categroy <input type="text" name = "category">
    runningtime <input type="text" name = "runningtime">
    releasedate <input type="text" name = "releasedate">
    production <input type="text" name = "production">
    summary <input type="text" name = "summary">
    img <input type="text" name = "img">
    img2 <input type="text" name = "img2">
    youtube <input type="text" name = "youtube">
    visitcount <input type="text" name = "visitcount">
    <button class="btn btn-theme" type="submit">입력 완료</button>
</form>
</div>


<div> 영화 삭제
    <form action="../admin.do?mode=delete" method="post">
        num <input type="text" name = "num">
        title <input type="text" name = "title">
        <button class="btn btn-theme" type="submit"> 삭제</button>
    </form>
</div>

</body>
</html>
