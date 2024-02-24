<%@ page import="com.util.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script src="include/jquery-3.7.1.min.js"></script>

  <style>

    [id^="input"] {
      margin-top: 10px;
      padding: 5px;
      width: 300px;
      display: block;
      margin-left: auto;
      margin-right: auto;
    }
    #loginpage1, #loginpage2 {
      margin: 50px 50px 50px 50px;
      text-align: center;
    }

    [class^="button"] {
      border: none;
      font-size: small;
    }

    .hlogo {
      width: 150px;
      height: 30px;
      cursor: pointer;
      display: block;
      margin-left: auto;
      margin-right: auto;
      margin-top: 10px;
    }
  </style>


  <script>

    $(document).ready(function(){
      $(".hlogo").click(function(){
        location.href = "index.html";
      })
    });

    function join1() {
      location.href = "../member/join.do";
    }
    function backtohome1() {
      location.href = "book_detail.html";
    }

  </script>

</head>
<body>
<jsp:include page="../temp/Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
  <div class="d-background" data-image-src="" data-parallax="scroll"></div>
  <div class="d-background bg-black-80"></div>
  <div class="top-block top-inner container">
    <div class="top-block-content">
      <h1 class="section-title">Login</h1>
      <div class="page-breadcrumbs">
        <a class="content-link" href="../index.jsp">Home</a>
        <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
        <span>Login</span>
      </div>
    </div>
  </div>
</section>

<script>
  /*유효성 검사*/
  function validateForm(form) {
    if (!form.user_id.value) {
      alert("아이디를 입력하세요");
      return false;
    } else if (!form.user_pwd.value) {
      alert("패스워드를 입력하세요");
      return false;
    }
  }
</script>
<section style="margin:50px 200px 50px 200px;">
    <%--회원가입 성공--%>
    <div style="text-align: center">
    <span style="color: brown; font-size: 1.2em">
      ${HelloMsg}
    </span>

      <%--로그인 실패--%>
      <span style="color: brown; font-size: 1.2em">
        ${LoginErrMsg}
      </span>
    </div>

    <div id="loginpage1">
      <form action="../member/Login.do" method="post" name="loginFrm" onsubmit="return validateForm(this)">
        <input type="text" name="user_id" id="inputUsername1" class="form-control" placeholder="Username" value="${loginId}" required>
        <input type="password" name="user_pwd" id="inputPassword1" class="form-control" aria-describedby="passwordHelpBlock" placeholder="Password" required>
        <div style="padding-top: 15px;">
          <label for="checkidbox">
            <input class="form-check-input" type="checkbox" name="save_check" value="Y" ${cookieCheck} id="checkidbox">
            아이디 기억하기
          </label>
        </div>
        <input type="submit" id="inputloginsubmit" class="form-control" style="background-color: #adb5bd; color: white;" value="로그인">
      </form>
    </div>
    <nav id="loginpage2">
      <div class="section-bottom">
        <button class="btn btn-theme" type="button" onclick="join1()">회원가입</button>
      </div>
    </nav>
</section>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>
