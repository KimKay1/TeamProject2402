package com.Review;

import com.review_fileupload.FileUtil;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/Review_Down.do")
public class Review_Down_Con extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws SecurityException, IOException {
        String ofile = req.getParameter("ofile");
        String sfile = req.getParameter("sfile");
        String idx = req.getParameter("idx");

        FileUtil.download(req, resp, "/Uploads", sfile, ofile);

        R_DAO dao = new R_DAO();
        dao.close();
    }
}

