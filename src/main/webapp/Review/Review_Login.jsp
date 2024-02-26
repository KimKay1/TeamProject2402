<%@ page import="com.util.JSFunction" %>
<%@ page pageEncoding="UTF-8" %>

<%
    if(session.getAttribute("UserId") == null){
        response.setCharacterEncoding("UTF-8");
        JSFunction.alertLocation("리뷰를 작성하려면 로그인해 주세요! ",
                "/temp/Login.jsp", out);
    }
%>

