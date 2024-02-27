package com.membership;

import com.util.CookieManager;
import com.util.JSFunction;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/member/Login.do")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //회원가입 성공 시
        String HelloMsg = null;
        if(request.getAttribute("HelloMsg") != null) {
            HelloMsg = (String)request.getAttribute("HelloMsg");
        }

        //로그인 실패 시
        String LoginErrMsg = null;
        if(request.getAttribute("LoginErrMsg") != null) {
            LoginErrMsg = (String)request.getAttribute("LoginErrMsg");
        }

        // 쿠키에 아이디 저장
        String loginId = CookieManager.readCookie(request, "loginId");
        String cookieCheck = "";
        if(!loginId.equals("")){
            cookieCheck = "checked";
        }

        request.setAttribute("HelloMsg", HelloMsg);
        request.setAttribute("LoginErrMsg", LoginErrMsg);
        request.setAttribute("loginId", loginId);
        request.setAttribute("cookieCheck", cookieCheck);
        request.getRequestDispatcher("../temp/Login.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
            HttpSession session = request.getSession();
            session.setAttribute("UserId", memberDTO.getId());
            session.setAttribute("UserName", memberDTO.getName());
            session.setAttribute("UserPass", memberDTO.getPass());

            response.sendRedirect("../index.jsp");
        } else {
            //관리자일때
            if (userId.equals("admin_id") && userPwd.equals("admin_pass")) {
                JSFunction.alertLocation(response,"관리자 페이지로 이동합니다","/temp/AdminPage.jsp");
//                request.getRequestDispatcher("/temp/AdminPage.jsp").forward(request, response);

            } else {
                //로그인 실패
                request.setAttribute("LoginErrMsg", "아이디/패스워드를 확인하세요");
                request.getRequestDispatcher("../temp/Login.jsp").forward(request, response);
            }
        }

    }
}
