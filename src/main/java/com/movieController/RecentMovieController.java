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

public class RecentMovieController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // recentMovie
        MovieInfoDAO dao = new MovieInfoDAO();
        List<MovieInfoDTO> recentmovies = dao.recentMovie();
        dao.close();

        req.setAttribute("data2", recentmovies);
        resp.setContentType("text/html;charset=utf-8");

        // DB 조회 결과를 JSON으로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(recentmovies);

        // JSON 데이터를 응답으로 전송
        resp.getWriter().write(json);

    }
}
