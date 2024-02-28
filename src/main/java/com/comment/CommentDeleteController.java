package com.comment;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/comment/delete.do")
public class CommentDeleteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        String num = req.getParameter("num");
        CommentDAO dao = new CommentDAO();
        CommentDTO dto = dao.selectEditView(idx);

        dao.close();

        /*줄바꿈 처리*/
        if (dto.getContent() != null) {
            dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));
        }

        req.setAttribute("num", num);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("../temp/CommentDelete.jsp").forward(req, resp);
    }
}
