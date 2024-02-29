package com.movieController;

import com.comment.CommentDAO;
import com.comment.CommentDTO;
import com.comment.CommentPage;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.movieInfo.MovieInfoDAO;
import com.movieInfo.MovieInfoDTO;
import com.recommend.RecommendDAO;
import com.recommend.RecommendDTO;
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

        String[] paragraphs = dto.getSummary().split("\n");
        StringBuilder result = new StringBuilder();

        for (String paragraph : paragraphs) {
            result.append("<p>").append(paragraph).append("</p>");
        }

        String wrappedText = result.toString();

        // 최근에 본 영화 쿠키 생성

        Cookie[] cookies = req.getCookies();
        int cookielength = cookies.length;
        if(CookieManager.readCookie(req, "loginId") != null) {
            cookielength = cookielength-1;
        }

        String cValue_1 = null;
        String cValue_2 = null;
        String cValue_3 = null;

        if(cookielength > 7){
            cValue_1 = CookieManager.readCookie(req, "7");
            cValue_2 = CookieManager.readCookie(req, "6");
            cValue_3 = CookieManager.readCookie(req, "5");

            CookieManager.deleteCookie(resp,"1");
            CookieManager.deleteCookie(resp,"2");
            CookieManager.deleteCookie(resp,"3");
            CookieManager.deleteCookie(resp,"4");
            CookieManager.deleteCookie(resp,"5");
            CookieManager.deleteCookie(resp,"6");
            CookieManager.deleteCookie(resp,"7");

            CookieManager.makeCookie(resp,"1", cValue_1, 60*60);
            CookieManager.makeCookie(resp,"2", cValue_2, 60*60);
            CookieManager.makeCookie(resp,"3", cValue_3, 60*60);
        }
        String cookiecName = String.valueOf(cookielength);
        String cookieStr = String.valueOf(dto.getNum());
        CookieManager.makeCookie(resp, cookiecName, cookieStr, 60*60);

        CookieManager.readCookie(req,cookiecName);

        Map<String, String> cookieMap =new HashMap<>();

        int i = 1;

        if (cookies != null ) {
            for (Cookie c : cookies) {

                String cName = c.getName();
                String cValue = c.getValue();

                if (!cName.equals("JSESSIONID") && !cName.equals("loginId")) {
                    if (i % 3 == 1) {
                        cValue_1 = cValue;
                        i++;
                    } else if (i % 3 == 2) {
                        cValue_2 = cValue;
                        i++;
                    } else if (i % 3 == 0) {
                        cValue_3 = cValue;
                        i++;
                    }
                } else {
                    System.out.println("세션아이디거나 로그인자동완성 쿠키임");
                }
            }
            if (i == 2) {
                cookieMap.put("cookie1", cValue_1);
            } else if (i == 3) {
                cookieMap.put("cookie1", cValue_2);
                cookieMap.put("cookie2", cValue_1);
            } else if (i >= 4) {
                if (i % 3 == 1) {
                    cookieMap.put("cookie1", cValue_3);
                    cookieMap.put("cookie2", cValue_2);
                    cookieMap.put("cookie3", cValue_1);
                } else if (i % 3 == 2) {
                    cookieMap.put("cookie1", cValue_1);
                    cookieMap.put("cookie2", cValue_3);
                    cookieMap.put("cookie3", cValue_2);
                } else {
                    cookieMap.put("cookie1", cValue_2);
                    cookieMap.put("cookie2", cValue_1);
                    cookieMap.put("cookie3", cValue_3);
                }
            }
        }
        if(i>=4){
            i = 4;
        }

        MovieInfoDTO viewed1 = dao.selectView(cookieMap.get("cookie1"));
        MovieInfoDTO viewed2 = dao.selectView(cookieMap.get("cookie2"));
        MovieInfoDTO viewed3 = dao.selectView(cookieMap.get("cookie3"));

        req.setAttribute("viewedI", i);
        req.setAttribute("viewed1", viewed1);
        req.setAttribute("viewed2", viewed2);
        req.setAttribute("viewed3", viewed3);
        // 최근에 본 영화 쿠키 생성 끝


        /*코멘트 뷰 시작*/
        // 게시물 불러오기
        String title = dto.getTitle(); /*코멘트 뷰를 위한 파라미터*/
        CommentDAO dao2 = new CommentDAO();
        CommentDTO dto2 = dao2.selectView(title);

        //별점 int값으로 받아오기
//        int favorNum = Integer.parseInt(dto2.getFavor()) - 1;
        String favorNum = dto2.getFavor();

        //뷰에 전달할 매개변수 저장용 맵 생성
        Map<String, Object> map = new HashMap<>();

        String searchField = "title";
        String searchWord = title;

        if (searchWord != null) {
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
        int totalPage = (int) Math.ceil((double) totalCount / pageSize);

        // 현재 페이지 확인
        int pageNum = 1;
        String pageTemp = req.getParameter("pageNum");
        if (pageTemp != null && !pageTemp.equals("")) {
            pageNum = Integer.parseInt(pageTemp); //페이지 요청받은 값
        }
        // 목록에 출력할 게시물 범위 계산
        int start = (pageNum - 1) * pageSize + 1;
        int end = pageNum * pageSize;
        map.put("start", start);
        map.put("end", end);

        //게시물 목록 가져오기
        List<CommentDTO> boardList = dao2.selectListPage(map);

        dao2.close();

        //뷰에 전달할 매개변수 추가
        String pagingImg = CommentPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "/movieView.do?num=" + num + "&");
        //바로가기 영역 HTML
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pagingImg", pagingImg);
        map.put("pageNum", pageNum);

        //전달할 데이터를 req 영역에 저장하고 CommentForm.jsp 포워드
        req.setAttribute("favorNum", favorNum);
        req.setAttribute("boardList", boardList);
        req.setAttribute("map", map);
        req.setAttribute("dto2", dto2);
//        req.getRequestDispatcher("../temp/CommentForm.jsp").forward(req, resp);

        /*코멘트 뷰 끝*/

        /*별점 recommend 시작*/
        //이름:별점순(ORDER BY) top3반환   WHERE 장르
        RecommendDAO dao3 = new RecommendDAO();
        List<RecommendDTO> favorList = dao3.selectList(dto.getCategory());
        dao3.close();
        //top3 갯수 구하기
        int favorListNum = 0;
        if (favorList != null) {
            if (favorList.size() < 3) {
                favorListNum = favorList.size() - 1;
            } else {
                favorListNum = 2;
            }
        }

        //top3 저장
        req.setAttribute("favorList", favorList);
        req.setAttribute("favorListNum", favorListNum);

        /*별점 recommend 끝*/

        req.setAttribute("dto", dto);
        req.setAttribute("wrappedText", wrappedText);
        req.getRequestDispatcher("/temp/movieView.jsp").forward(req, resp);
    }

}
