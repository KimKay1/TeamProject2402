package com.Review;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/Review/ReviewView.do")
public class ReviewViewController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException, ServletException {
        //게시물 불러오기
        ReviewDAO dao = new ReviewDAO();
        String idx = req.getParameter("idx");

        // 조회수 1++
        dao.updateVisitCount(idx);
        ReviewDTO dto = dao.selectView(idx);

        dao.close();

        //줄바꿈 처리
        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        //게시물(dto) 저장 후 뷰로 포워드
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/Review/ReviewView.jsp").forward(req, resp);
    }

}
