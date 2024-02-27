package com.Review;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/R/R_Edit.do")
public class R_EditCon extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");
        R_DAO dao = new R_DAO();
        R_DTO dto = dao.selectView(idx);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/Review/R_Edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //수정 내용 매개변수에서 얻어오기
        String idx = req.getParameter("idx");

        R_DTO dto = new R_DTO();
        dto.setIdx(idx);
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setOfile(req.getParameter("ofile"));
        dto.setSfile(req.getParameter("sfile"));

        // DB에 수정 내용 반영
        R_DAO dao = new R_DAO();
        int result = dao.updatePost(dto);
        dao.close();

        // 성공, 실패
        if (result == 1) { // 수정 성공
            resp.sendRedirect("../R/Review_View.do?idx=" + idx);
        } else { // 수정 실패
            JSFunction.alertLocation(resp, "수정에 실패했습니다.", "../R/R_Edit.do?idx=" + idx);
        }
    }
}
