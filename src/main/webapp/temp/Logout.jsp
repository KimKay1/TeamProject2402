<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //세션 모든 속성 삭제
    session.invalidate();

    response.sendRedirect("../index.jsp");
%>