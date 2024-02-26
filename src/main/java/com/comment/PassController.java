package com.comment;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/comment/pass.do")
public class PassController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String mode = req.getParameter("mode");

        req.setAttribute("mode", mode);
        if(mode.equals("delete")){
            req.getRequestDispatcher("../temp/CommentDelete.jsp").forward(req,resp);
        } else if(mode.equals("edit")){
            req.getRequestDispatcher("../temp/CommentEdit.jsp").forward(req, resp);
        } else {
            JSFunction.alertBack(resp, "잘못된 경로입니다.");
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // 매개변수 저장
        String idx = req.getParameter("idx");
        String mode = req.getParameter("mode");
        String pass = req.getParameter("pass");

        //비밀번호 확인
        CommentDAO dao = new CommentDAO();
        boolean confirmed = dao.confirmPassword(pass,idx);
        CommentDTO dto = dao.selectEditView(idx);
        dao.close();

        if(confirmed){//비밀번호 검증 성공
            //mode = edit
            if(mode.equals("edit")){

                HttpSession session = req.getSession();
                session.setAttribute("pass", pass);
                req.setAttribute("dto", dto);
                req.setAttribute("idx", idx);
                req.getRequestDispatcher("../temp/CommentEdit.jsp").forward(req, resp);
//                resp.sendRedirect("../comment/edit.do");

            } else if (mode.equals("delete")){
                //mode = delete
                String num = req.getParameter("num");
                dao = new CommentDAO();
                dto = dao.selectView(idx);
                int result = dao.deletePost(idx);
                dao.close();
                JSFunction.alertLocation(resp,"삭제되었습니다.", "../movieView.do?num="+num);
            }
        }else {//비밀번호 검증 실패
            JSFunction.alertBack(resp, "비밀번호 검증 실패");
        }
    }
}
