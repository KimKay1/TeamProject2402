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

@WebServlet("/category/view.do")
public class CategoryViewController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        CategoryDAO dao = new CategoryDAO();
        String category = req.getParameter("category");
        CategoryDTO dto = dao.selectCategory(category);

        //뷰에 전달할 매개변수 저장용 맵 생성
        Map<String, Object> map = new HashMap<>();

        String searchField = "category";
        String searchWord = category;

        if(searchWord != null){
            //쿼리스트링으로 받은 매개변수에서 검색어 있으면 map에 저장
            map.put("searchField", searchField);
            map.put("searchWord", searchWord);
        }

        //게시물 수 확인
        int totalCount = dao.selectCount(map);

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
        List<CategoryDTO> boardList = dao.selectListPage(map, category);


        dao.close();

        //뷰에 전달할 매개변수 추가
        String pagingImg = CommentPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../category/view.do?category="+category);
        //바로가기 영역 HTML
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pagingImg", pagingImg);
        map.put("pageNum", pageNum);

//        /*줄바꿈 처리*/
//        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        //전달할 데이터를 req 영역에 저장하고 포워드
        req.setAttribute("boardList", boardList);
        req.setAttribute("map", map);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("../temp/CategoryList.jsp").forward(req, resp);

    }
}
