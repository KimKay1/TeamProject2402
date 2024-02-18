<%@ page import="com.common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JoinDB에 저장</title>
</head>
<body>
    <%
        JDBCConnect jdbc = new JDBCConnect();

        //테스트용 입력값
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");

        //쿼리문 생성
        String sql = "INSERT INTO scott.member_jsp (ID,PASS, NAME, REGIDATE) VALUES(?,?,?,sysdate)";
        PreparedStatement psmt = jdbc.con.prepareStatement(sql);

        psmt.setString(1, id);
        psmt.setString(2, pass);
        psmt.setString(3, name);

        int intResult = psmt.executeUpdate();
        out.println(intResult + "행이 입력되었습니다.");

        // 연결 종료
        jdbc.close();
    %>
    <a href="../index.jsp">홈으로 돌아가기</a>
</body>
</html>
