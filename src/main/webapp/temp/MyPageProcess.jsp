<%@ page import="com.membership.MemberDTO" %>
<%@ page import="com.membership.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="LoginPlz.jsp"%>

<%
    String MyId = request.getParameter("id");
    String MyPass = request.getParameter("pass");
    String MyName = request.getParameter("name");

    MemberDTO dto = new MemberDTO();
    dto.setName(MyName);

    MemberDAO dao = new MemberDAO();
    int affected = dao.updateMyPage(dto);

    dao.close();

    if(affected == 1){   // 성공
        response.sendRedirect("View.jsp?Id=" + dto.getId());
    }else { // 실패
        JSFunction.alertBack("수정 실패", out);
    }
%>
