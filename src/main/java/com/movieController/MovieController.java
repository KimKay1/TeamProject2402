package com.movieController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.movieInfo.MovieInfoDAO;
import com.movieInfo.MovieInfoDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class MovieController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // selectMovie
        MovieInfoDAO dao = new MovieInfoDAO();
        List<MovieInfoDTO> movie = dao.selectMovie();

        dao.close();

        req.setAttribute("data", movie);
        resp.setContentType("text/html; charset=utf-8");

        // DB 조회 결과를 JSON으로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(movie);

        // JSON 데이터를 응답으로 전송
        resp.getWriter().write(json);

        //req.getRequestDispatcher("/index.jsp").forward(req, resp);




    }

}
