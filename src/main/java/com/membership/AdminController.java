package com.membership;

import com.movieInfo.MovieInfoDTO;
import com.util.JSFunction;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/admin.do")
public class AdminController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        //mode = insert일때
        String mode = req.getParameter("mode");
        AdminDTO dto = new AdminDTO();

        if(mode.equals("insert")){
            dto.setTitle(req.getParameter("title"));
            dto.setDirector(req.getParameter("director"));
            dto.setActor(req.getParameter("actor"));
            dto.setCategory(req.getParameter("category"));
            dto.setRunningtime(req.getParameter("runningtime"));
            dto.setReleasedate(req.getParameter("releasedate"));
            dto.setProduction(req.getParameter("production"));
            dto.setSummary(req.getParameter("summary"));
            dto.setImg(req.getParameter("img"));
            dto.setImg2(req.getParameter("img2"));
            dto.setYoutube(req.getParameter("youtube"));
            dto.setVisitcount(req.getParameter("visitcount"));

            AdminDAO dao = new AdminDAO();
            int result = dao.insertMoiveInfoDTO(dto);
            dao.close();
            if(result == 1){   // 성공
                JSFunction.alertBack(resp,"성공");
            }else { // 실패
                JSFunction.alertBack(resp,"실패");
            }
        } else if (mode.equals("delete")){
            dto.setTitle(req.getParameter("title"));
            dto.setNum(req.getParameter("num"));

            AdminDAO dao = new AdminDAO();
            int result = dao.deleteMovieInfoDTO(dto);
            dao.close();
            if(result == 1){   // 성공
                JSFunction.alertBack(resp,"삭제 성공");
            }else { // 실패
                JSFunction.alertBack(resp,"삭제 실패");
            }
        }


    }

}
