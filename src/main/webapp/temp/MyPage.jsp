<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./LoginPlz.jsp"%>
<html>
<head>
    <title>마이페이지</title>
    <link type="text/css" rel="stylesheet" href="/template/css/header.css"/>
    <script src="include/jquery-3.7.1.min.js"></script>
    <script>
        function userSubmit() {
            var cpw1 = document.getElementById("inputPassword1").value;
            var cpw2 = document.getElementById("inputPassword2").value;

            if (cpw1 != cpw2) {
                alert("비밀번호가 일치하지 않습니다.")
                return false;
            } else {}
        }
    </script>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">My Page</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="../index.jsp">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>My page</span>
            </div>
        </div>
    </div>
</section>

<form style="width: 300px; display: block; margin-left: auto; margin-right: auto; padding-top: 70px; padding-bottom: 70px;" name="mypageFrm" method="post" action="../member/MyPage.do?mode=edit" onsubmit="return userSubmit();">
    <fieldset disabled>
        <div class="mb-3">
            <label  class="form-label">아이디</label>
            <input type="text" class="form-control" placeholder="Disabled input" value="${id}">
        </div>
    </fieldset>
    <div class="mb-3">
        <label for="myPageName" class="form-label">닉네임</label>
        <input type="text" class="form-control" id="myPageName" name="name" value="${name}" required>
    </div>
    <fieldset disabled>
        <div class="mb-3">
            <label class="form-label">가입 날짜</label>
            <input type="text" class="form-control" value="${regidate}">
        </div>
    </fieldset>
    <div class="mb-3" style="padding-left: 5px;">
        <label  class="form-label">선호장르</label><br/>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check1">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="액션" id="check1" name="genre">
                액션
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="애니메이션" id="check2" name="genre">
                애니메이션
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="코미디" id="check3" name="genre">
                코미디
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="범죄" id="check4" name="genre">
                범죄
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="드라마" id="check5" name="genre">
                드라마
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="판타지" id="check6" name="genre">
                판타지
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="스릴러" id="check7" name="genre">
                스릴러
            </label>
        </div>
        <div class="col-12 col-sm-6">
            <label class="labelex1" for="check2">
                &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="로맨스" id="check8" name="genre">
                로맨스
            </label>
        </div>
    </div>
    <div class="mb-3">
        <label for="inputPassword1" class="form-label">비밀번호</label>
        <input type="password" class="form-control" id="inputPassword1" name="pass" placeholder="수정을 원하시면 비밀번호를 입력하세요" required>
    </div>
    <div class="section-bottom">
        <button class="btn btn-theme" type="reset">다시 입력</button>
        <button class="btn btn-theme" type="submit">수정 완료</button>
    </div>
</form>


<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
