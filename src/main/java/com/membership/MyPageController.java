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
import java.util.*;

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
        String agree = dto.getAgree();
        String genre = dto.getGenre();
        dao.close();

        HashMap<String, String> genreMap = new HashMap<>();
        genreMap.put("액션", null);
        genreMap.put("애니메이션", null);
        genreMap.put("코미디", null);
        genreMap.put("범죄", null);
        genreMap.put("드라마", null);
        genreMap.put("판타지", null);
        genreMap.put("스릴러", null);
        genreMap.put("로맨스", null);

        if(genre != null) {
            //선호도 컷팅
            StringTokenizer st = new StringTokenizer(genre, " ");
            ArrayList<String> genres = new ArrayList<>();
            while (st.hasMoreTokens()) {
                genres.add(st.nextToken());
            }
            String checkbox = null;
            for (int i = 0; i < genres.size(); i++) {
                String gmStr = genres.get(i);
                if (!gmStr.equals("")) {  // 값이 있으면 checked
                    checkbox = "checked";
                    genreMap.put(gmStr, checkbox);
                }
            }
        }

        System.out.println(agree);
        //마케팅 불러오기
        String checkbox2 = null;
        if(agree != null){
            if(agree.equals("Y")){
                checkbox2 = "checked";
            }
        }


        if (mode.equals("change")) {
            request.setAttribute("id", id);
            request.setAttribute("pass", pass);
            request.getRequestDispatcher("../temp/MyPass.jsp").forward(request, response);

        } else {
            request.setAttribute("genreMap", genreMap);
            request.setAttribute("checkbox2", checkbox2);
            request.setAttribute("id", id);
            request.setAttribute("pass", pass);
            request.setAttribute("name", name);
            request.setAttribute("regidate", regidate);
            request.getRequestDispatcher("../temp/MyPage.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String agree = request.getParameter("agree");
        if(agree == null){
            agree = "N";
        }else {
            agree = "Y";
        }
        //선호 장르 받아오기
        String[] genreWord = request.getParameterValues("genre");
        String genre = "";
        if(genreWord != null) {
            //DB에 넣을 선호 데이터
            for (int i = 0; i < genreWord.length; i++) {
                genre += genreWord[i] + " ";
            }
        }

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
                dao.close();
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
                dto.setAgree(agree);
                dto.setGenre(genre);

                dao = new MemberDAO();
                int affected = dao.updateMyPage(dto);
                dao.close();

                if (affected == 2) {   // 성공
                    JSFunction.alertBack(response, "수정 성공");
                } else { // 실패
                    JSFunction.alertBack(response, "수정 실패");
                }

            } else { // 비밀번호 확인 실패
                dao.close();
                JSFunction.alertBack(response, "패스워드를 확인하세요");
            }
        }
    }
}
