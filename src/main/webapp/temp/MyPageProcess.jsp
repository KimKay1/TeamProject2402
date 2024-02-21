<%@ page import="com.membership.MemberDTO" %>
<%@ page import="com.membership.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="LoginPlz.jsp"%>

<%
    String id = (String) session.getAttribute("UserId");
    String pass = request.getParameter("pass");
    String name = request.getParameter("name");

    MemberDTO dto = new MemberDTO();
    dto.setPass(pass);
    dto.setName(name);
    dto.setId(id);

    MemberDAO dao = new MemberDAO();
    int affected = dao.updateMyPage(dto);

    dao.close();

    if(affected == 1){   // 성공
        JSFunction.alertBack("수정 성공", out);
    }else { // 실패
        JSFunction.alertBack("수정 실패", out);
    }
%>
