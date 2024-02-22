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
    body {
      background-color: silver;
    }
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
      background-color: silver;
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

  <%
    // 아이디 저장
    String loginId = CookieManager.readCookie(request, "loginId");
    String cookieCheck = "";
    if(!loginId.equals("")){
      cookieCheck = "checked";
    }
  %>

  <script>

    // /*유효성 검사*/
    // function validateForm(form) {
    //   if (!form.user_id.value) {
    //     alert("아이디를 입력하세요");
    //     return false;
    //   } else if (!form.user_pwd.value) {
    //     alert("패스워드를 입력하세요");
    //     return false;
    //   }
    // }

    $(document).ready(function(){
      $(".hlogo").click(function(){
        location.href = "index.html";
      })
    });

    function join1() {
      location.href = "./Join.jsp";
    }
    function backtohome1() {
      location.href = "book_detail.html";
    }

  </script>

</head>
<body>

<%--회원가입 성공--%>
<div style="text-align: center">
<span style="color: brown; font-size: 1.2em">
        <%= request.getAttribute("HelloMsg") == null ?"": request.getAttribute("HelloMsg")%>
</span>

<%--로그인 실패--%>
<span style="color: brown; font-size: 1.2em">
        <%= request.getAttribute("LoginErrMsg") == null ?"": request.getAttribute("LoginErrMsg")%>
</span>
</div>

<%--로그아웃 상태일때--%>
<%
  if(session.getAttribute("UserId") == null){
%>
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

<div id="loginpage1">
  <form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this)">
    <input type="text" name="user_id" id="inputUsername1" class="form-control" placeholder="Username" value="<%=loginId%>" required>
    <input type="password" name="user_pwd" id="inputPassword1" class="form-control" aria-describedby="passwordHelpBlock" placeholder="Password" required>
    <input type="submit" id="inputloginsubmit" class="form-control" value="로그인">
    <div><input type="checkbox" name="save_check" value="Y" <%=cookieCheck%>>아이디 기억하기</div>
  </form>
</div>
<nav id="loginpage2">
  <input type="button" class="button_id" value="아이디 찾기" onclick="backtohome1()">
  |
  <input type="button" class="button_passward" value="비밀번호 찾기" onclick="backtohome1()">
  |
  <input type="button" class="button_join" value="회원가입" onclick="join1()">
</nav>
<%
} else { //로그인 성공시
  response.sendRedirect("../index.jsp");
  }
%>

</body>
</html>
