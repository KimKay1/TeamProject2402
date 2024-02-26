package com.Review;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/R/Review_Delete.do")
public class Review_Del_Con extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // GET 요청 처리 로직을 작성하세요
        // 필요한 코드를 추가하세요
        String idx = req.getParameter("idx");
    }

    @Override
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idx = req.getParameter("idx");

        R_DAO dao = new R_DAO();
        R_DTO dto = dao.selectView(idx); //해당 게시글 가져오기
        int result = dao.deletePost(idx);
        dao.close();

        System.out.println("idx : " + idx);
        System.out.println("result : " + result);

        if (result == 1) {
            JSFunction.alertLocation(resp, "삭제되었습니다.", "../R/Review_Main.do");
        } else {
            JSFunction.alertBack(resp, "삭제에 실패했습니다.");
        }
    }
}
