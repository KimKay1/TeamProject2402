package com.Review;

import com.review_fileupload.FileUtil;
import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/Review_Write.do")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 20,
        maxRequestSize = 1024 * 1024 * 20
)
public class Review_Write_Con extends HttpServlet {

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        R_MovieInfoDAO listMovieInfoDAO = new R_MovieInfoDAO();
        List<R_MovieInfoDTO> listMovieInfo = listMovieInfoDAO.selectListMovieTitle();

        req.setAttribute("listMovieInfo", listMovieInfo);
        req.getRequestDispatcher("/Review/Review_Write.jsp").forward(req, resp);
    }
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        HttpSession session = req.getSession();
        String userId = (String) session.getAttribute("UserId");

        // 1. 파일 업로드 처리
        // 업로드 디렉토리의 물리적 경로 확인
        String sDir = getServletContext().getRealPath("/Uploads");

        // 파일 업로드
        String oFileName = "";
        try {
            oFileName = FileUtil.uploadFile(req, sDir);
        } catch (Exception e) {
            // 파일 업로드 실패
            System.out.println("익셉션 :::" + e.toString());
            JSFunction.alertLocation(resp, "파일 업로드 오류.", "/Review_Write.do");
            return;
        }

        // 2. 파일 업로드 외 처리
        // 폼값을 DTO에 저장
        R_DTO dto = new R_DTO();
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(userId);
        dto.setMovieNum(req.getParameter("movieNum").toString());

        // 원본 파일명과 저장된 파일 이름 설정
        if (oFileName != null && !oFileName.equals("") ) {
            //첨부 파일이 있을 경우 파일명 변경
            String sFileName = FileUtil.renameFile(sDir, oFileName);

            dto.setOfile(oFileName);
            dto.setSfile(sFileName);
        }

        // DAO를 통해 DB 저장
        R_DAO dao = new R_DAO();
        int result = dao.insertWrite(dto);
        dao.close();

        // 글쓰기 성공
        if (result == 1) {
            resp.sendRedirect("../Review_Main.do");
        }
        // 글쓰기 실패
        else {
            JSFunction.alertLocation(resp, "글쓰기에 실패했습니다.", "../Review_Write.do");
        }
    }


}
