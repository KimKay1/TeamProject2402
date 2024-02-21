package com.membership;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/member/join.do")
public class JoinController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        resp.sendRedirect("../temp/Join.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String id = req.getParameter("id");
        String pass = req.getParameter("pass");
        String name = req.getParameter("name");

        // 중복 아이디 검사
        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.getMemberDTO(id, pass);

        if(id.equals(dto.getId())){ // 아이디 중복인 경우

            JSFunction.alertBack(resp,"중복된 아이디 입니다.");

            dao.close();


        } else { // 새로운 아이디인 경우 DB에 저장

            dto = new MemberDTO();
            dto.setId(id);
            dto.setPass(pass);
            dto.setName(name);
            int iResult = dao.insertMember(dto);

            // 연결 종료
            dao.close();

            req.setAttribute("HelloMsg", "회원가입이 완료되었습니다.");
            req.getRequestDispatcher("../temp/Login.jsp").forward(req, resp);

            // 리다이렉트
            resp.sendRedirect("../temp/Login.jsp");
        }


    }
}
