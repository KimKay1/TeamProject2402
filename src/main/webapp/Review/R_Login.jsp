<%@ page import="com.util.JSFunction" %>

<%
    if(session.getAttribute("UserId") == null){
        JSFunction.alertLocation("you have to login to write a post ",
                "../temp/Login.jsp", out);
    }
%>

