//package com.navbar;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//
//@WebServlet("/index")
//public class indexController extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
//            throws ServletException, IOException {
//        HttpSession session = req.getSession();
//        // 로그아웃 상황일때 - loginplz 보이기 / mypage에서 비밀번호 바꾸기 숨기기
//        String mypage1 = "../temp/LoginPlz.jsp";
//        String mypage2 = "../temp/LoginPlz.jsp";
//        String mypage3 = "../temp/LoginPlz.jsp";
//        String mypageHidden = "none";
//        String login = "../member/Login.do";
//        String loginStr = "Login";
//        if(session.getAttribute("UserId") != null){ // 로그인 상황일때
//            login = "../temp/Logout.jsp";
//            loginStr = "Logout";
//            mypage1 = "../member/MyPage.do?mode=edit";
//            mypage2 = "../member/MyPage.do?mode=change";
//            mypage3 = "../member/MyComment.do";
//            mypageHidden = null;
//        } else { }
//        req.setAttribute("mypage1", mypage1);
//        req.setAttribute("mypage2", mypage2);
//        req.setAttribute("mypage3", mypage3);
//        req.setAttribute("mypageHidden", mypageHidden);
//        req.setAttribute("login", login);
//        req.setAttribute("loginStr", loginStr);
//        req.getRequestDispatcher("../index.do").forward(req,resp);
//    }
//}
