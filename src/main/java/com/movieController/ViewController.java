package com.movieController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.movieInfo.MovieInfoDAO;
import com.movieInfo.MovieInfoDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/movieView.do")
public class ViewController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 게시물 불러오기
        MovieInfoDAO dao = new MovieInfoDAO();
        String num = req.getParameter("num");
        MovieInfoDTO dto = dao.selectView(num);

        String[] paragraphs = dto.getSummary().split("\n");
        StringBuilder result = new StringBuilder();

        for(String paragraph : paragraphs) {
            result.append("<p>").append(paragraph).append("</p>");
        }

        String wrappedText = result.toString();
        dao.close();

        req.setAttribute("dto",dto);
        req.setAttribute("wrappedText",wrappedText);
        req.getRequestDispatcher("/movieView.jsp").forward(req,resp);
    }
}
