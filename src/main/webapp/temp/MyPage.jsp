<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./LoginPlz.jsp"%>

<%--<%--%>
<%--    String id = (String) session.getAttribute("UserId");--%>

<%--    MemberDAO dao = new MemberDAO();--%>
<%--    MemberDTO dto = dao.selectMyPage(id);--%>

<%--    dao.close();--%>
<%--%>--%>

<html>
<head>
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

<jsp:include page="../temp/Header.jsp"></jsp:include>
<form name="mypageFrm" method="post" action="../member/MyPage.do" onsubmit="return userSubmit();">

    <table border="1" width="90%">
        <tr>
            <td>아이디</td>
            <td>${id}</td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pass" id="inputPassword1" style="width: 90%" placeholder="비밀번호를 입력해주세요" required/></td>
        </tr>
        <tr>
            <td>비밀번호 확인</td>
            <td><input type="password" id="inputPassword2" style="width: 90%" placeholder="비밀번호를 다시 입력해주세요" required/></td>
        </tr>
        <tr>
            <td>닉네임</td>
            <td><input type="text" name="name" style="width: 90%" value="${name}" required/></td>
        </tr>
        <tr>
            <td>가입날짜</td>
            <td>${regidate}</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="reset">다시 입력</button>
                <button type="submit">수정 완료</button>
            </td>
        </tr>
    </table>

</form>

</body>
</html>
