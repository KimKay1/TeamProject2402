package com.comment;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/comment/edit.do")
public class CommentEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        String num = req.getParameter("num");
        CommentDAO dao = new CommentDAO();
        CommentDTO dto = dao.selectEditView(idx);

        dao.close();

        //별점 int값으로 받아오기
//        int favorNum = Integer.parseInt(dto.getFavor()) - 1;


//        req.setAttribute("favorNum", favorNum);
        req.setAttribute("num", num);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("../temp/CommentEdit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String num = req.getParameter("num");

        //DB에 update 입력
        String idx = req.getParameter("idx");
        String name = req.getParameter("name");
        String content = req.getParameter("content");
        String favor = req.getParameter("favor");
        String pass = req.getParameter("pass");

//        HttpSession session = req.getSession();
//        String pass = (String)session.getAttribute("pass");
//        System.out.println("세션에서 받아온 pass : " + pass);

        CommentDTO dto = new CommentDTO();
        dto.setIdx(idx);
        dto.setName(name);
        dto.setContent(content);
        dto.setFavor(favor);
        dto.setPass(pass);

        CommentDAO dao = new CommentDAO();
        int result = dao.updatePost(dto);

        dao.close();

        if (result == 1) {
//            session.removeAttribute("pass");
            resp.sendRedirect("../movieView.do?num="+num);
        } else {//글쓰기 실패
            JSFunction.alertBack(resp, "비밀번호 검증을 다시 진행해주세요.");
        }
    }
}
