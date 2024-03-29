package com.comment;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/comment/write.do")
public class CommentWriteController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //로그인 상태면 idx에 임시 숫자대신 id 저장
        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("UserId");

        String num = req.getParameter("num");
        //폼 값 DTO에 저장
        CommentDTO dto = new CommentDTO();
        if(id != null){
            dto.setIdx(id);
        }
        dto.setName(req.getParameter("name"));
        dto.setContent(req.getParameter("content"));
        dto.setFavor(req.getParameter("favor"));
        dto.setPass(req.getParameter("pass"));
        dto.setTitle(req.getParameter("title"));
        dto.setCategory(req.getParameter("category"));

        //DB 저장
        CommentDAO dao = new CommentDAO();
        int result = dao.insertWrite(dto);
        dao.close();

        if(result == 1){   // 성공
            resp.sendRedirect("../movieView.do?num="+ num);
        }else { // 실패
            JSFunction.alertBack(resp,"글쓰기 실패");
        }
    }
}
