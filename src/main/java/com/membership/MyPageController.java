package com.membership;

import com.comment.CommentDAO;
import com.comment.CommentDTO;
import com.util.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/member/MyPage.do")
public class MyPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mode = request.getParameter("mode");

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("UserId");
        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.selectMyPage(id);
        String pass = null;
        String name = dto.getName();
        Date regidate = dto.getRegidate();

        dao.close();

        if (mode.equals("change")) {
            request.setAttribute("id", id);
            request.setAttribute("pass", pass);
            request.getRequestDispatcher("../temp/MyPass.jsp").forward(request, response);

        } else {

            request.setAttribute("id", id);
            request.setAttribute("pass", pass);
            request.setAttribute("name", name);
            request.setAttribute("regidate", regidate);
            request.getRequestDispatcher("../temp/MyPage.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //선호 장르 받아오기
        String searchField = "genre";
        String[] searchWord = request.getParameterValues("genre");
        String wordStr = "";

        Map<String, Object> map = new HashMap<>();
        map.put("searchField", searchField);
        for(int i=0; i<searchWord.length; i++){
            wordStr += searchWord[i] + " ";
        }
        System.out.println(wordStr);
        //선호 장르 맵에 넣기
        //선호 장르 카운트
        //선호장르 마이페이지 뷰에 보이기(doGet 수정)



        String mode = request.getParameter("mode");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("UserId");
        String pass = request.getParameter("pass");

        //비밀번호 확인
        MemberDAO dao = new MemberDAO();
        MemberDTO memberDTO = dao.getMemberDTO(id, pass);

        if (mode.equals("change")) {

            if(pass.equals(memberDTO.getPass())) { //비밀번호 검증 성공

                pass = request.getParameter("afterpass");

                MemberDTO dto = new MemberDTO();
                dto.setPass(pass);
                dto.setId(id);

                int affected = dao.updatePass(dto);

                dao.close();

                if (affected == 1) {   // 성공
                    JSFunction.alertBack(response, "수정 성공");
                } else { // 실패
                    JSFunction.alertBack(response, "수정 실패");
                }
            }else { // 비밀번호 검증 실패
                JSFunction.alertBack(response, "기존 패스워드를 확인하세요");
            }

        } else{

            //비밀번호 확인 성공
            if(memberDTO.getId() != null) {

                String name = request.getParameter("name");

                MemberDTO dto = new MemberDTO();
                dto.setPass(pass);
                dto.setName(name);
                dto.setId(id);

                dao = new MemberDAO();
                int affected = dao.updateMyPage(dto);
                dao.close();

                if (affected == 1) {   // 성공
                    JSFunction.alertBack(response, "수정 성공");
                } else { // 실패
                    JSFunction.alertBack(response, "수정 실패");
                }

            } else { // 비밀번호 확인 실패
                JSFunction.alertBack(response, "패스워드를 확인하세요");
            }
        }
    }
}
