<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setAttribute("HelloMsg", "회원가입이 완료되었습니다.");
    request.getRequestDispatcher("Login.jsp").forward(request,response);
%>

