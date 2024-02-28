//package com.movieController;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.movieInfo.MovieInfoDAO;
//import com.movieInfo.MovieInfoDTO;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.Cookie;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import static java.lang.Integer.parseInt;
//
//@WebServlet("/viewedMovie.do")
//public class viewedController extends HttpServlet {
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // 최근 본 영화 리스트 출력
//        // 구현 실패 ... 입니다 ...
//        MovieInfoDAO dao = new MovieInfoDAO();
//        String num = req.getParameter("num");
//
//        //dao.close();
//
//        Cookie[] cookies = req.getCookies();
////        Cookie[] viewedArray = new Cookie[3];
//        List<String> viewedArray = new ArrayList<>();
////        for(Cookie c : cookies){
////            String name = c.getName();
////            System.out.println(c.getName());
////            if(name.contains("viewed")){
////                for(int i = 0;i < 3; i++) {
////                    viewedArray[i] = c;
////                    System.out.println(viewedArray[i].getName());
////                }
////            }
////        }
//
//
//        int index = 0;
////        System.out.println(" 쿠키 ㅋ길이 :"+ viewedArray.length);
//        // if (viewedArray == null || viewedArray[0].getValue().isEmpty()) {//배열사이즈가 0
//        if (viewedArray.size() >= 0 && viewedArray.size() < 3) {
//            Cookie cookie = new Cookie("viewed" + index, num);
//            cookie.setMaxAge(3600);
//            cookie.setPath("/");
//            // 생성한 쿠키를 쿠키 배열에 저장
////            viewedArray.add(cookie0);
//            viewedArray.add(cookie.getValue());
////            System.out.println(cookie.getValue());
//            index++;
//        }
//
////        if (viewedArray.size() ==  0) {//배열사이즈가 0
////            Cookie cookie0 = new Cookie("viewed0", num);
////            cookie0.setMaxAge(3600);
////            cookie0.setPath("/");
////            // 생성한 쿠키를 쿠키 배열에 저장
//////            viewedArray.add(cookie0);
////            viewedArray.add(cookie0.getValue());
////            System.out.println(cookie0.getValue());
//////            } else if (viewedArray[1].getValue().isEmpty()) { //배열사이즈 1
////        } else if (viewedArray.size() > 0 && viewedArray.get(1) == null) { //배열사이즈 1
////            Cookie cookie1 = new Cookie("viewed1", num);
////            cookie1.setMaxAge(3600);
////            cookie1.setPath("/");
////            // 생성한 쿠키를 쿠키 배열에 저장
////            viewedArray.add(cookie1.getValue()); // 1번째에 생성
//////            } else if (viewedArray[2].getValue().isEmpty()) { //배열사이즈 2
////        } else if (viewedArray.size() >  0 && viewedArray.get(2) == null) { //배열사이즈 2
////            Cookie cookie2 = new Cookie("viewed2", num);
////            cookie2.setMaxAge(3600);
////            cookie2.setPath("/");
////            // 생성한 쿠키를 쿠키 배열에 저장
////            viewedArray.add(cookie2.getValue());
////
////        }
//
//        if(viewedArray != null) {
//
//        }
////        if (viewedArray != null) {
////            if (viewedArray != null && viewedArray.length >= 3) {
////                // 쿠키 개수가 최대 개수와 같거나 큰 경우
////                // 가장 오래된 쿠키 삭제
////                Cookie oldestCookie = viewedArray[0];
////                for (int i = 1; i < viewedArray.length; i++) {
////                    if (viewedArray[i].getMaxAge() < oldestCookie.getMaxAge()) {
////                        oldestCookie = viewedArray[i];
////                    }
////                }
////                oldestCookie.setMaxAge(0); // 쿠키 삭제를 위해 유효 기간을 0으로 설정
////                resp.addCookie(oldestCookie); // 응답에 삭제할 쿠키 추가
////            }
//        List<MovieInfoDTO> vieweddto = new ArrayList<>();
//        for(String viewed : viewedArray) {
//            System.out.println(viewed);
//            vieweddto.add(dao.viewedMovies(viewed));
//            System.out.println(vieweddto);
//        }
////        req.setAttribute("viewed", vieweddto);
//        req.setAttribute("viewed",vieweddto);
//
//        resp.setContentType("text/html; charset=utf-8");
//
//        // DB 조회 결과를 JSON으로 변환
//        ObjectMapper objectMapper = new ObjectMapper();
//        String json = objectMapper.writeValueAsString(vieweddto);
//
//        // JSON 데이터를 응답으로 전송
//        resp.getWriter().write(json);
//    }
//}
