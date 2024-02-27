package com.navbar;

import com.common.DBConnPool;
import com.movieInfo.MovieInfoDTO;
import jakarta.servlet.annotation.WebServlet;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class AllMoviesDAO extends DBConnPool {

    public AllMoviesDAO() { super(); }

    public int selectCount() {
        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM scott.movieinfo_teampro";

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("모든 무비 조회 카운트 중 예외 발생");
        }

        return totalCount;
    }

    // 모든 영화 목록을 반환합니다.
    public List<MovieInfoDTO> AllMoviesCount(Map<String,Object> map) {
        List<MovieInfoDTO> movies = new ArrayList<>();

        String query = "SELECT num, title, img FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT * FROM scott.movieinfo_teampro";;

        query += " ORDER BY releasedate DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNUM BETWEEN ? AND ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());

            rs = psmt.executeQuery();

            while(rs.next()) {
                MovieInfoDTO dto = new MovieInfoDTO();

                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("title"));
                dto.setImg(rs.getString("img"));

                movies.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("모든 영화 조회 중 오류 발생");
        }
        return movies;
    }
}
