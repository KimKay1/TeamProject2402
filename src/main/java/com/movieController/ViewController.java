package com.movieController;

import com.comment.CommentDAO;
import com.comment.CommentDTO;
import com.comment.CommentPage;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.movieInfo.MovieInfoDAO;
import com.movieInfo.MovieInfoDTO;
import com.util.CookieManager;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/movieView.do")
public class ViewController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 게시물 불러오기
        MovieInfoDAO dao = new MovieInfoDAO();
        String num = req.getParameter("num");
        dao.updateVisitCount(num);
        MovieInfoDTO dto = dao.selectView(num);

        String title = dto.getTitle(); /*코멘트 뷰를 위한 파라미터*/

        String[] paragraphs = dto.getSummary().split("\n");
        StringBuilder result = new StringBuilder();

        for(String paragraph : paragraphs) {
            result.append("<p>").append(paragraph).append("</p>");
        }

        String wrappedText = result.toString();


        /*코멘트 뷰 시작*/
        // 게시물 불러오기
        CommentDAO dao2 = new CommentDAO();

        CommentDTO dto2 = dao2.selectView(title);

        //별점 int값으로 받아오기
//        int favorNum = Integer.parseInt(dto2.getFavor()) - 1;
        String favorNum = dto2.getFavor();

        //뷰에 전달할 매개변수 저장용 맵 생성
        Map<String, Object> map = new HashMap<>();

        String searchField = "title";
        String searchWord = title;

        if(searchWord != null){
            //쿼리스트링으로 받은 매개변수에서 검색어 있으면 map에 저장
            map.put("searchField", searchField);
            map.put("searchWord", searchWord);
        }

        //게시물 수 확인
        int totalCount = dao2.selectCount(map);

        //페이징
        ServletContext application = getServletContext();

        //전체 페이지 수 계산
        int pageSize = Integer.parseInt(application.getInitParameter("COMMENTS_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("COMMENTS_PER_BLOCK"));
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
        List<CommentDTO> boardList = dao2.selectListPage(map);


        //뷰에 전달할 매개변수 추가
        String pagingImg = CommentPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "/movieView.do");
        //바로가기 영역 HTML
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pagingImg", pagingImg);
        map.put("pageNum", pageNum);

//        /*줄바꿈 처리*/
//        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));

        //전달할 데이터를 req 영역에 저장하고 CommentForm.jsp 포워드
        req.setAttribute("favorNum", favorNum);
        req.setAttribute("boardList", boardList);
        req.setAttribute("map", map);
        req.setAttribute("dto2", dto2);
//        req.getRequestDispatcher("../temp/CommentForm.jsp").forward(req, resp);

        /*코멘트 뷰 끝*/

        req.setAttribute("dto",dto);
        req.setAttribute("wrappedText",wrappedText);
        req.getRequestDispatcher("/movieView.jsp").forward(req,resp);
    }

}
