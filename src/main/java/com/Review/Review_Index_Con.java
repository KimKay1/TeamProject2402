package com.Review;

import com.util.BoardPage;
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

//@WebServlet("/Review_Index.do")
public class Review_Index_Con extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // DAO 생성
        R_DAO dao = new R_DAO();

        // 뷰에 전달할 매개변수 저장용 맵 생성
        Map<String, Object> map = new HashMap<String, Object>();

        //게시물 수 확인
        int totalCount = dao.selectCount(map);

        /* 페이징 처리 start web.xml에서 끌어옴*/
        ServletContext application = getServletContext();

        //전체 페이지 수 계산
        int pageSize = 9;
        int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);


        //현제 페이지 확인
        int pageNum = 1;
        String pageTemp = req.getParameter("pageNum");
        if (pageTemp != null && !pageTemp.equals("")) {
            pageNum = Integer.parseInt(pageTemp); // 페이지 요청 받은 값
        }

        //목록에 출력할 게시물 범위 계산
        int start = (pageNum - 1) * pageSize + 1; // 첫 게시물 번호
        int end = pageNum * pageSize;              // 마지막 게시물 번호

        map.put("start", start);
        map.put("end", end);

        /* 페이징 처리 end */
        List<R_DTO> boardList = dao.selectListPage(map);

        // DB 연결 닫기
        dao.close();

        // 리스트에 전달할 매개변수 추가
        String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../Review_Main.do");

        // 바로가기 영역 HTML
        map.put("pagingImg", pagingImg);
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pageNum", pageNum);
        map.put("totalPage", totalPage);

        // 전달할 데이터를 request 영역에 저장 후 ReviewMain.jsp로 포워드
        req.setAttribute("boardList", boardList);
        req.setAttribute("map", map);

        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
