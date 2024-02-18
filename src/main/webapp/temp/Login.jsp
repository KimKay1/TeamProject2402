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
  <script>

    //아이디, 비밀번호
    const user1 = "admin";
    const password1 = "pass";
    function userSubmit() {
      var wuser = document.getElementById("inputUsername1").value;
      var wpassword = document.getElementById("inputPassword1").value;
      if((user1==wuser) && password1==wpassword){
        alert("로그인 되었습니다.");
      } else {
        alert("아이디 혹은 비밀번호를 확인해주세요.");
        return false;
      }
    }

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

<div id="loginpage1"> <!--class="form-control"는 부트스트랩 사용-->
  <form action="index.html" onsubmit="return userSubmit();"> <!--action="index.html" method="POST" 영역은 지움-->
    <input type="text" id="inputUsername1" class="form-control" placeholder="Username (admin)" required>
    <input type="password" id="inputPassword1" class="form-control" aria-describedby="passwordHelpBlock" placeholder="Password (pass)" required>
    <input type="submit" id="inputloginsubmit" class="form-control" value="로그인">
  </form>
</div>
<nav id="loginpage2">
  <input type="button" class="button_id" value="아이디 찾기" onclick="backtohome1()">
  |
  <input type="button" class="button_passward" value="비밀번호 찾기" onclick="backtohome1()">
  |
  <input type="button" class="button_join" value="회원가입" onclick="join1()">
</nav>


</body>
</html>
