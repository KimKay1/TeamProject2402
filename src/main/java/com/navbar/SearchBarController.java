package com.navbar;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/navbar/search.do")
public class SearchBarController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String title = req.getParameter("title");
        CategoryDAO dao = new CategoryDAO();
        CategoryDTO dto = dao.searchList(title);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("../temp/SearchList.jsp").forward(req, resp);
    }
}
