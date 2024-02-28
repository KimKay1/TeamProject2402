<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<script>
    //세션 확인해서
    // 관리자 role 아니면 alert 띄우고 index

        var uid = '<%=(String)session.getAttribute("AdminId")%>';

        if(uid != null){
            if(uid === "admin_id"){
                location.replace("../temp/AdminPage.jsp");
            } else {
                alert("권한이 없습니다.")
                location.replace("../index.jsp")
            }
        } else{
            location.replace("../index.jsp");
        }

</script>
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
