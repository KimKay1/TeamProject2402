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

@WebServlet("/R/Review_Write.do")
public class Review_Write_Con extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

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

            req.getRequestDispatcher("/Review/Review_Write.jsp").forward(req, resp);
        }
    }
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        HttpSession session = req.getSession();

        R_DTO dto = new R_DTO();
        dto.setIdx(req.getParameter("idx"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(session.getAttribute("UserId").toString());
        dto.setMovieNum(req.getParameter("movieNum").toString());

        // DAO를 통해 DB 저장
        R_DAO dao = new R_DAO();
        int result = dao.insertWrite(dto);
        dao.close();

        // 글쓰기 성공
        if (result == 1) {
            resp.sendRedirect("../R/Review_Main.do");
        }
        // 글쓰기 실패
        else {
            JSFunction.alertLocation(resp, "글쓰기에 실패했습니다.", "../R/Review_Write.do");
        }
    }


}
