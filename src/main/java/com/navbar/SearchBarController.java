package com.navbar;

import com.comment.CommentPage;
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

@WebServlet("/navbar/search.do")
public class SearchBarController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String search = req.getParameter("search");
        CategoryDAO dao = new CategoryDAO();
        List<CategoryDTO> dto = dao.searchList(search);

        Map<String, Object> map = new HashMap<>();
        String searchField1 = "title";
        String searchField2 = "director";
        String searchWord = search;

        if(searchWord != null){
            map.put("searchField1", searchField1);
            map.put("searchField2", searchField2);
            map.put("searchWord", searchWord);
        }

        //게시물 수 확인
        int totalCount = dao.selectSearchCount(map);

        //페이징
        ServletContext application = getServletContext();

        //전체 페이지 수 계산
        int pageSize = Integer.parseInt(application.getInitParameter("CATEGORY_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("CATEGORY_PER_BLOCK"));
        int totalPage = (int)Math.ceil((double) totalCount/pageSize);

        // 현재 페이지 확인
        int pageNum = 1;
        String pageTemp = req.getParameter("pageNum");
        if(pageTemp != null && !pageTemp.equals("")){
            pageNum = Integer.parseInt(pageTemp); //페이지 요청받은 값
        }
        // 목록에 출력할 게시물 범위 계산
        int start = (pageNum - 1) * pageSize + 1;
        int end = pageNum * pageSize;
        map.put("start", start);
        map.put("end", end);

        //게시물 목록 가져오기
        List<CategoryDTO> boardList = dao.searchListPage(map);

        dao.close();

        //뷰에 전달할 매개변수 추가
        String pagingImg = CommentPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../navbar/search.do?search="+search+"&");
        //바로가기 영역 HTML
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pagingImg", pagingImg);
        map.put("pageNum", pageNum);

        req.setAttribute("boardList", boardList);
        req.setAttribute("search", search);
        req.setAttribute("map", map);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("../temp/SearchList.jsp").forward(req, resp);
    }
}
