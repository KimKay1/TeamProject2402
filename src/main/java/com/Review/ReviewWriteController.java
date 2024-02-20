package com.Review;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class ReviewWriteController extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException, ServletException {

        /*req.setAttribute(session.getA);*/
        req.getRequestDispatcher("/Review/ReviewWrite.jsp").forward(req, resp);
    }
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException, ServletException {

        ReviewDTO dto = new ReviewDTO();
        dto.setIdx(req.getParameter("idx"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(req.getParameter("id"));

        // DAO를 통해 DB 저장
        ReviewDAO dao = new ReviewDAO();
        int result = dao.insertWrite(dto);
        dao.close();

        // 글쓰기 성공
        if (result == 1) {
            resp.sendRedirect("../Review/ReviewList.do");
        }
        // 글쓰기 실패
        else {
            JSFunction.alertLocation(resp, "글쓰기에 실패했습니다.", "../Review/ReviewWrite.do");
        }
    }


}
