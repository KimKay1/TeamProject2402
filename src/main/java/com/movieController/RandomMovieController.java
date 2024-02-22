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

public class RandomMovieController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MovieInfoDAO dao = new MovieInfoDAO();
        List<MovieInfoDTO> randomMovies = dao.randomMovie();
        dao.close();

        req.setAttribute("data3", randomMovies);
        resp.setContentType("text/html;charset=utf-8");

        // DB 조회 결과를 JSON으로 변환
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(randomMovies);

        // JSON 데이터를 응답으로 전송
        resp.getWriter().write(json);
    }
}
