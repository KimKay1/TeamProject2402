package com.membership;

import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;

@WebServlet("/member/MyPage.do")
public class MyPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("UserId");

        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.selectMyPage(id);

        String pass = null;
        String name = dto.getName();
        Date regidate = dto.getRegidate();

        dao.close();

        request.setAttribute("id", id);
        request.setAttribute("pass", pass);
        request.setAttribute("name", name);
        request.setAttribute("regidate", regidate);
        request.getRequestDispatcher("../temp/MyPage.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("UserId");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");

        MemberDTO dto = new MemberDTO();
        dto.setPass(pass);
        dto.setName(name);
        dto.setId(id);

        MemberDAO dao = new MemberDAO();
        int affected = dao.updateMyPage(dto);

        dao.close();

        if(affected == 1){   // 성공
            JSFunction.alertBack(response,"수정 성공");
        }else { // 실패
            JSFunction.alertBack(response,"수정 실패");
        }


    }
}
