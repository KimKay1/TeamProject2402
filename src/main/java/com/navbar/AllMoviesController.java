package com.navbar;

import com.comment.CommentPage;
import com.movieInfo.MovieInfoDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/AllMovies.do")
public class AllMoviesController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AllMoviesDAO dao = new AllMoviesDAO();

        Map<String, Object> map = new HashMap<>();
        // 게시물의 개수
        int totalCount = dao.selectCount();

        // 페이징 처리
        ServletContext application = getServletContext();
        // 전체 페이지 수 계산
        int pageSize = Integer.parseInt(application.getInitParameter("POST_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));

        // 현재 페이지 확인
        int pageNum = 1;
        String pageTemp = req.getParameter("pageNum");
        if(pageTemp != null && !pageTemp.equals("")) {
            pageNum = Integer.parseInt(pageTemp);
        }

        // 목록에 출력할 게시물 범위 계산
        int start = (pageNum - 1) * pageSize + 1; // 첫 게시물 번호
        int end = pageNum * pageSize;
        map.put("start",start);
        map.put("end",end);

        List<MovieInfoDTO> lists = dao.AllMoviesCount();
        dao.close();

        String pagingImg = CommentPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "/AllMovies.do");

        map.put("pagingImg",pagingImg);
        map.put("totalCount",totalCount);
        map.put("pageSize",pageSize);
        map.put("pageNum",pageNum);

        req.setAttribute("lists",lists);
        req.setAttribute("map",map);
        req.getRequestDispatcher("/AllMovies.jsp").forward(req,resp);
    }
}
