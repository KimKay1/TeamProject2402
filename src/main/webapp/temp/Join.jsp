<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="include/jquery-3.7.1.min.js"></script>

    <style>
        body {
            background-color: silver;
        }
        [id^="input"], #joincheck {
            margin-top: 10px;
            padding: 5px;
            width: 300px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        #joincheck {
            border: 1px solid white;
        }
        #joinpage1 {
            margin: 50px 50px 50px 50px;
        }
        .labelex1 {
            cursor: pointer;
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
        function userSubmit() {
            var cpw1 = document.getElementById("inputPassword1").value;
            var cpw2 = document.getElementById("inputPassword2").value;

            if (cpw1 != cpw2) {
                alert("비밀번호가 일치하지 않습니다.")
                return false;
            } else {}
        }

        $(document).ready(function(){
            $("#textbuttoncheck1").on(click, function(){
                $("#check1").on(checked);
            })
        });

        $(document).ready(function(){
            $(".hlogo").click(function(){
                location.href = "index.html";
            })
        });

    </script>
</head>
<body>

<div style="text-align: center">
<span style="color: brown; font-size: 1.2em">
        <%= request.getAttribute("JoinerrMsg") == null ?"": request.getAttribute("JoinerrMsg")%>
</span>
</div>

<div id="joinpage1"> <!-- class="form-control"는 부트스트랩 사용-->
    <form action="JoinProcess.jsp" onsubmit="return userSubmit();" method="POST">
        <input type="text" name="id" id="inputUserid1" class="form-control" placeholder="아이디" required>
        <input type="text" name="name" id="inputUsername1" class="form-control" placeholder="닉네임" required>
        <input type="password" name="pass" id="inputPassword1" class="form-control" aria-describedby="passwordHelpBlock" placeholder="비밀번호" required>
        <input type="password" id="inputPassword2" class="form-control" aria-describedby="passwordHelpBlock" placeholder="비밀번호 확인" required>
        <div id="joincheck">
            <label class="labelex1" for="check1">
                <input class="form-check-input" type="checkbox" value="" id="check1" required>
                이용약관 동의(필수)
            </label>
            <br>
            <label class="labelex1" for="check2">
                <input class="form-check-input" type="checkbox" value="" id="check2">
                마케팅 동의(선택)
            </label>
        </div>
        <input type="submit" id="inputloginsubmit" class="form-control" value="회원가입">
    </form>
</div>



</body>
</html>