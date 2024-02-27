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

@WebServlet("/Review_Edit.do")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 1,
        maxRequestSize = 1024 * 1024 * 10
)
public class Review_Edit_Con extends HttpServlet {
    private static final long seiralVersionUID = 1L;

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        String idx = req.getParameter("idx");
        R_DAO dao = new R_DAO();
        R_DTO dto = dao.selectView(idx);
        HttpSession session = req.getSession();
        String sessionId = (String) session.getAttribute("UserId");
        /*if(!sessionId.equals(dto.getId())){
            JSFunction.alertBack(resp, "작성자 본인만 수정할 수 있습니다.");
            return;
        }*/

        System.out.println("idx ::: " + idx);
        System.out.println("sessionId ::: " + sessionId);

        R_MovieInfoDAO listMovieInfoDAO = new R_MovieInfoDAO();
        List<R_MovieInfoDTO> listMovieInfo = listMovieInfoDAO.selectListMovieTitle();

        dao.close();

        req.setAttribute("dto", dto);
        req.setAttribute("listMovieInfo", listMovieInfo);
        req.getRequestDispatcher("/Review/Review_Edit.jsp").forward(req, resp);

    }
    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        // 경로 확인
        String sDir = getServletContext().getRealPath("/Uploads");

        // 파일 업로드
        String oFileName = "";
        try {
            oFileName = FileUtil.uploadFile(req, sDir);
        } catch (Exception e) {
            JSFunction.alertBack(resp, "파일 업로드 오류입니다.");
            e.printStackTrace();
            return;
        }

        //수정 내용 매개변수에서 얻어오기
        HttpSession session = req.getSession();

        String idx = req.getParameter("idx");
        String sessionId = (String) session.getAttribute("UserId");
        String name = req.getParameter("name");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String prevOfile = req.getParameter("prevOfile");
        String prevSfile = req.getParameter("prevSfile");

        System.out.println("세션아이디 ::: " + sessionId);


        // // 파일업로드 외 처리 DTO에 저장
        R_DTO dto = new R_DTO();
        dto.setIdx(idx);
        dto.setId(sessionId);
        dto.setName(name);
        dto.setTitle(title);
        dto.setContent(content);


        // 원본 파일명과 저장된 파일 이름 설정
        if (oFileName != "" && oFileName != null) { // 신규로 파일 등록한 경우
            System.out.println("파일 업데이트 if문 진입");
            String sFileName = FileUtil.renameFile(sDir, oFileName);

            dto.setOfile(oFileName);
            dto.setSfile(sFileName);

            System.out.println("oFileName ::: " + oFileName);
            System.out.println("sFileName ::: " + sFileName);

            //기존 파일 삭제
            FileUtil.deleteFile(req, "/Uploads", prevSfile);
        } else { // 첨부 파일이 없으면 기존 파일 유지
            dto.setOfile(prevOfile);
            dto.setSfile(prevSfile);
        }

        // DAO를 통해 DB에 수정 내용 저장
        R_DAO dao = new R_DAO();
        int result = dao.updatePost(dto);
        dao.close();

        // 수정 성공
        if (result == 1) {
            resp.sendRedirect("../Review_View.do?idx=" + dto.getIdx());
        }
        // 수정 실패
        else {
            JSFunction.alertLocation(resp, "수정에 실패했습니다.", "../Review_Main.do");
        }
    }
}
