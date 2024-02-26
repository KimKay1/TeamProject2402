package com.Review;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/Review_View.do")
public class Review_View_Con extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        //게시물 불러오기
        R_DAO dao = new R_DAO();
        String idx = req.getParameter("idx");

        // 조회수 1++
        dao.updateVisitCount(idx);
        R_DTO dto = dao.selectView(idx);

        dao.close();

        //줄바꿈 처리
        if(null != dto.getContent() && !dto.getContent().equals("")) {
            dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));
        }

        // 첨부 파일 확장자 추출 및 이미지 타입 확인
        String ext = null, fileName = dto.getSfile();
        if (fileName != null) {
            ext = fileName.substring(fileName.lastIndexOf(".") + 1);
        }
        String[] mimeStr = {"png", "jpg", "gif"};
        List<String> mimeList = Arrays.asList(mimeStr);
        boolean isImage = false;
        if(mimeList.contains(ext)) {
            isImage = true;
        }

        //게시물(dto) 저장 후 뷰로 포워드
        req.setAttribute("dto", dto);
        req.setAttribute("isImage", isImage);
        req.getRequestDispatcher("/Review/Review_View.jsp").forward(req, resp);
    }
}
