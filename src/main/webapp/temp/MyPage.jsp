<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./LoginPlz.jsp"%>

<%
    String id = request.getParameter("id");

    MemberDAO dao = new MemberDAO();
    MemberDTO dto = dao.selectMyPage(id);

    dao.close();
%>

<html>
<body>

<jsp:include page="../temp/Header.jsp"></jsp:include>
<form name="mypageFrm" method="post" action="MyPageProcess.jsp" onsubmit="return validateForm(this)">

    <table border="1" width="90%">
        <tr>
            <td>아이디</td>
            <td><%=dto.getId()%></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="text" name="title" style="width: 90%"/></td>
        </tr>
        <tr>
            <td>닉네임</td>
            <td><input type="text" name="title" style="width: 90%" value="<%=dto.getName()%>"/></td>
        </tr>
        <tr>
            <td>가입날짜</td>
            <td><%=dto.getRegidate()%></td>
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
