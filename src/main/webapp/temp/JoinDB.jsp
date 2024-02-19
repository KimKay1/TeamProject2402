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
        String sql = "INSERT INTO scott.member_teampro (ID,PASS, NAME, REGIDATE) VALUES(?,?,?,sysdate)";
        PreparedStatement psmt = jdbc.con.prepareStatement(sql);

        psmt.setString(1, id);
        psmt.setString(2, pass);
        psmt.setString(3, name);

        int intResult = psmt.executeUpdate();

        // 연결 종료
        jdbc.close();

        request.setAttribute("HelloMsg", "회원가입이 완료되었습니다.");
        request.getRequestDispatcher("Login.jsp").forward(request,response);

        // 리다이렉트
        response.sendRedirect("./Login.jsp");
//        response.sendRedirect("./Login2.jsp");

    %>

</body>
</html>
