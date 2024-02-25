<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script src="include/jquery-3.7.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/template/css/header.css"/>
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

<jsp:include page="../temp/Header.jsp"></jsp:include>

<section class="after-head d-flex section-text-white position-relative">
    <div class="d-background" data-image-src="" data-parallax="scroll"></div>
    <div class="d-background bg-black-80"></div>
    <div class="top-block top-inner container">
        <div class="top-block-content">
            <h1 class="section-title">Join</h1>
            <div class="page-breadcrumbs">
                <a class="content-link" href="../index.jsp">Home</a>
                <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                <span>Join</span>
            </div>
        </div>
    </div>
</section>
<section style="margin:50px 200px 50px 200px;">
    <div id="joinpage1">
        <form action="../member/join.do" onsubmit="return userSubmit();" method="POST" style="width: 300px; display: block; margin-left: auto; margin-right: auto;">
            <input type="text" name="id" id="inputUserid1" class="form-control" placeholder="아이디" required>
            <input type="text" name="name" id="inputUsername1" class="form-control" placeholder="닉네임" required>
            <input type="password" name="pass" id="inputPassword1" class="form-control" aria-describedby="passwordHelpBlock" placeholder="비밀번호" required>
            <input type="password" id="inputPassword2" class="form-control" aria-describedby="passwordHelpBlock" placeholder="비밀번호 확인" required>
            <div id="joincheck">
                <label class="labelex1" for="check1">
                    &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="Y" id="check1" required>
                    이용약관 동의(필수)
                </label>
                <br/>
                <label class="labelex1" for="check2">
                    &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="Y" id="check2" name="agree">
                    마케팅 동의(선택)
                </label>
            </div>
            <input type="submit" id="inputloginsubmit" class="form-control" style="background-color: #adb5bd; color: white;" value="회원가입">
        </form>
    </div>
</section>
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>