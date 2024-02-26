package com.Review;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/R/Review_Edit.do")
public class Review_Edit_Con extends HttpServlet {
    private static final long seiralVersionUID = 1L;

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String idx = req.getParameter("idx");

        HttpSession session = req.getSession();
        String userId = (String) session.getAttribute("UserId");

        if (userId == null) {
            resp.sendRedirect("/Review/Review_Login.jsp");
        } else {
            R_DTO dto = new R_DTO();
            dto.setIdx(req.getParameter("idx"));
            dto.setTitle(req.getParameter("title"));
            dto.setContent(req.getParameter("content"));
            dto.setId("userId");
            MovieInfoDAO2 listMovieInfoDAO = new MovieInfoDAO2();
            List<MovieInfoDTO2> listMovieInfo = listMovieInfoDAO.selectListMovieTitle();

            req.setAttribute("listMovieInfo", listMovieInfo);
        }

        R_DAO dao = new R_DAO();
        R_DTO dto2 = dao.selectView(idx);
        req.setAttribute("dto", dto2);

        req.getRequestDispatcher("/Review/Review_Edit.jsp").forward(req, resp);

    }
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        HttpSession session = req.getSession();
        String idx = req.getParameter("idx");

        R_DTO dto = new R_DTO();
        dto.setIdx(idx);
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(session.getAttribute("UserId").toString());


        // DAO를 통해 DB 저장
        R_DAO dao = new R_DAO();
        int result = dao.updatePost(dto);
        dao.close();

        // 글쓰기 성공
        if (result == 1) {
            resp.sendRedirect("../R/Review_Main.do");
        }
        // 글쓰기 실패
        else {
            JSFunction.alertLocation(resp, "수정에 실패했습니다.", "../R/Review_Main.do");
        }
    }
}
