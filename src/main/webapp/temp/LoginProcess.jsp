<%@ page import="com.membership.MemberDAO" %>
<%@ page import="com.membership.MemberDTO" %>
<%@ page import="com.util.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //로그인 폼에서 받아온 파라미터
    String userId = request.getParameter("user_id");
    String userPwd = request.getParameter("user_pwd");
    String save_check = request.getParameter("save_check");

    MemberDAO dao = new MemberDAO();
    MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
    dao.close();

    // 로그인 성공 여부에 따른 처리

    if(memberDTO.getId() != null){ // 로그인 성공

        //아이디 저장
        if(save_check != null && save_check.equals("Y")){
            CookieManager.makeCookie(response, "loginId", userId, 86400);
        } else {
            CookieManager.deleteCookie(response, "loginId");    // 이미 저장되어있을때
        }

        //로그인 세션
        session.setAttribute("UserId", memberDTO.getId());
        session.setAttribute("UserName", memberDTO.getName());

        response.sendRedirect("Login.jsp");
    } else {
        //로그인 실패
        request.setAttribute("LoginErrMsg", "아이디/패스워드를 확인하세요");
        request.getRequestDispatcher("Login.jsp").forward(request,response);
    }
%>
