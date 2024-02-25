<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./LoginPlz.jsp"%>


<html>
<head>
    <title>마이페이지</title>
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

<form style="width: 300px; display: block; margin-left: auto; margin-right: auto; padding-top: 70px; padding-bottom: 70px;" name="mypageFrm" method="post" action="../member/MyPage.do?mode=change" onsubmit="return userSubmit();">
    <fieldset disabled>
        <div class="mb-3">
            <label  class="form-label">아이디</label>
            <input type="text" class="form-control" placeholder="Disabled input" value="${id}">
        </div>
    </fieldset>
    <div class="mb-3">
        <label for="inputPassword1" class="form-label">기존 비밀번호</label>
        <input type="password" class="form-control" id="inputPassword0" name="pass" placeholder="기존 비밀번호를 입력해주세요." required>
    </div>
    <div class="mb-3">
        <label for="inputPassword1" class="form-label">비밀번호</label>
        <input type="password" class="form-control" id="inputPassword1" name="afterpass" placeholder="비밀번호를 입력해주세요." required>
    </div>
    <div class="mb-3">
        <label for="inputPassword2" class="form-label">비밀번호 확인</label>
        <input type="password" class="form-control" id="inputPassword2" placeholder="비밀번호를 다시 입력해주세요." required>
    </div>
    <div class="section-bottom">
        <button class="btn btn-theme" type="reset">다시 입력</button>
        <button class="btn btn-theme" type="submit">수정 완료</button>
    </div>
</form>


<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
