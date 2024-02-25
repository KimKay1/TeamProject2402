package com.Review;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/R/R_View.do")
public class R_ViewCon extends HttpServlet {

    /*@Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        *//*req.setAttribute(session.getA);*//*

        HttpSession session = req.getSession();

        R_DTO dto = new R_DTO();
        dto.setIdx(req.getParameter("idx"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(session.getAttribute("UserId").toString());

        System.out.println("입력 확인");
        System.out.println("title : " + req.getParameter("title"));
        System.out.println("content : " + req.getParameter("content"));
        System.out.println("Userid : " + session.getAttribute("UserId"));

        MovieInfoDAO2 movieInfoDAO = new MovieInfoDAO2();
        MovieInfoDTO2 movieInfo = movieInfoDAO.selectMovieInfo(Integer.parseInt(req.getParameter("idx")));

        req.setAttribute("dto", movieInfo);
        req.getRequestDispatcher("/Review/Review_View.jsp").forward(req, resp);

        //게시물 불러오기
        R_DAO dao = new R_DAO();
        String idx = req.getParameter("idx");

        // 조회수 1++
        dao.updateVisitCount(idx);

        R_DTO dto2 = dao.selectView(idx);

        dao.close();

        //줄바꿈 처리
        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        //게시물(dto) 저장 후 뷰로 포워드
        req.setAttribute("dto2", dto2);
        req.getRequestDispatcher("/Review/Review_View.jsp").forward(req, resp);

    }*/

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException, ServletException {
        //게시물 불러오기
        R_DAO dao = new R_DAO();
        String idx = req.getParameter("idx");

        MovieInfoDAO2 movieInfoDAO = new MovieInfoDAO2();


        // 조회수 1++
        dao.updateVisitCount(idx);

        R_DTO dto = dao.selectView(idx);
        MovieInfoDTO2 movieInfo = movieInfoDAO.selectMovieInfo(Integer.parseInt(req.getParameter("idx")));

        dao.close();

        //줄바꿈 처리
        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        //게시물(dto) 저장 후 뷰로 포워드
        req.setAttribute("dto", movieInfo);
        req.setAttribute("dto2", dto);
        req.getRequestDispatcher("/Review/Review_View.jsp").forward(req, resp);




    }

}
