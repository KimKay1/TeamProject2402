<%@ page import="com.util.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(session.getAttribute("UserId") == null){
        JSFunction.alertLocation("로그인 후 이용 가능합니다", "../index.jsp", out);
    }
%>
