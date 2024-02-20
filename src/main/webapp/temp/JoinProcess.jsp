<%@ page import="com.common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.util.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JoinProcess</title>
</head>
<body>
    <%
        JDBCConnect jdbc = new JDBCConnect();

        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");

        // 중복 아이디 검사
        MemberDAO dao = new MemberDAO();
        MemberDTO memberDTO = dao.getMemberDTO(id, pass);
        dao.close();
        if(id.equals(memberDTO.getId())){ // 아이디 중복인 경우

            JSFunction.alertBack("중복된 아이디 입니다.", out);

//            request.setAttribute("JoinerrMsg", "중복된 아이디 입니다.");
//            request.getRequestDispatcher("Join.jsp").forward(request,response);

        } else { // 새로운 아이디인 경우 DB에 저장

            String sql = "INSERT INTO scott.member_teampro (ID,PASS, NAME, REGIDATE) VALUES(?,?,?,sysdate)";
            PreparedStatement psmt = jdbc.con.prepareStatement(sql);

            psmt.setString(1, id);
            psmt.setString(2, pass);
            psmt.setString(3, name);

            int intResult = psmt.executeUpdate();

            // 연결 종료
            jdbc.close();

            request.setAttribute("HelloMsg", "회원가입이 완료되었습니다.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);

            // 리다이렉트
            response.sendRedirect("./Login.jsp");
        }
    %>

</body>
</html>
