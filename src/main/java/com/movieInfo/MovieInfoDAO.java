package com.movieInfo;

import com.common.DBConnPool;

import java.util.ArrayList;
import java.util.List;


public class MovieInfoDAO extends DBConnPool {

    public MovieInfoDAO() {
        super();
    }

    public List<MovieInfoDTO> selectMovie() {
        List<MovieInfoDTO> movie = new ArrayList<>();

        String query = "SELECT * FROM("
                        + " SELECT Tb.*, ROWNUM rNUM FROM ("
                        + " SELECT mt.num , mt.title, mt.category, mt.runningtime, mt2.img,mt2.youtube, mt2.visitcount FROM SCOTT.MOVIEINFO_TEAMPRO mt"
                        + " INNER JOIN SCOTT.MOVIEDETAIL_TEAMPRO mt2 "
                        + " ON mt.num = mt2.num";

        query += " ORDER BY mt2.visitcount DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNUM <= 4";

        //query += " ORDER BY scott.MOVIEDETAIL_TEAMPRO visitcount DESC";

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while(rs.next()) {
                MovieInfoDTO dto = new MovieInfoDTO();

                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("title"));
                dto.setCategory(rs.getString("category"));
                dto.setRunningtime(rs.getString("runningtime"));
                dto.setImg(rs.getString("img"));
                dto.setYoutube(rs.getString("youtube"));
                dto.setVisitcount(rs.getInt("visitcount"));

                movie.add(dto);
            }
        } catch (Exception e) {
            System.out.println("핫 무비 조회 중 예외 발생");
            e.printStackTrace();
        }

        return movie;
    }

    public List<MovieInfoDTO> recentMovie() {
        List<MovieInfoDTO> movie = new ArrayList<>();

        String query = "SELECT * FROM ("
                        + " SELECT Tb.*, ROWNUM rNUM FROM ("
                        + " SELECT mt.num , mt.title, mt.category, mt.runningtime, mt2.summary, mt2.img, mt2.youtube, mt2.visitcount FROM SCOTT.MOVIEINFO_TEAMPRO mt"
                        + " INNER JOIN SCOTT.MOVIEDETAIL_TEAMPRO mt2 "
                        + " ON mt.num = mt2.num";

        query += " ORDER BY mt.num DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNUM <= 5";

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while(rs.next()) {
                MovieInfoDTO dto = new MovieInfoDTO();

                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("title"));
                dto.setCategory(rs.getString("category"));
                dto.setRunningtime(rs.getString("runningtime"));
                dto.setSummary(rs.getString("summary"));
                dto.setImg(rs.getString("img"));
                dto.setYoutube(rs.getString("youtube"));
                dto.setVisitcount(rs.getInt("visitcount"));

                movie.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("최신 무비 조회 중 오류 발생");
        }

        return movie;
    }

    public List<MovieInfoDTO> randomMovie() {
        List<MovieInfoDTO> movie = new ArrayList<>();

        String query = "SELECT * FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT mt.num , mt.title, mt.category, mt.releasedate, mt.runningtime, mt2.summary, mt2.img, mt2.youtube FROM SCOTT.MOVIEINFO_TEAMPRO mt"
                + " INNER JOIN SCOTT.MOVIEDETAIL_TEAMPRO mt2 "
                + " ON mt.num = mt2.num";

        query += " ORDER BY DBMS_RANDOM.VALUE"
                + " ) Tb"
                + " )"
                + " WHERE rNUM = 1";

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while(rs.next()) {
                MovieInfoDTO dto = new MovieInfoDTO();

                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("title"));
                dto.setCategory(rs.getString("category"));
                dto.setRunningtime(rs.getString("runningtime"));
                dto.setReleasedate(rs.getDate("releasedate"));
                dto.setSummary(rs.getString("summary"));
                dto.setImg(rs.getString("img"));
                dto.setYoutube(rs.getString("youtube"));

                movie.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("랜덤 무비 조회 중 오류 발생");
        }

        return movie;
    }

    public MovieInfoDTO selectView(String num) {
        MovieInfoDTO detail = new MovieInfoDTO();

        String query = "SELECT * FROM SCOTT.MOVIEINFO_TEAMPRO mt"
                        + " INNER JOIN SCOTT.MOVIEDETAIL_TEAMPRO mt2 "
                        + " ON mt.num = mt2.num";

        query += " WHERE mt.num = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1,num);
            rs = psmt.executeQuery();

            while(rs.next()) {
                detail.setNum(rs.getInt("num"));
                detail.setTitle(rs.getString("title"));
                detail.setActor(rs.getString("actor"));
                detail.setCategory(rs.getString("category"));
                detail.setRunningtime(rs.getString("runningtime"));
                detail.setReleasedate(rs.getDate("releasedate"));
                detail.setSummary(rs.getString("summary"));
                detail.setVisitcount(rs.getInt("visitcount"));
                detail.setImg(rs.getString("img"));
                detail.setYoutube(rs.getString("youtube"));
                detail.setDirector(rs.getString("director"));
                detail.setProduction(rs.getString("production"));
            }
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println("상세 페이지 조회 중 오류 발생");
        }

        return detail;
    }


    //조회수 증가 메서드
    public void updateVisitCount(String num) {
        String query = "UPDATE MOVIEINFO_TEAMPRO SET "
                + " visitcount = visitcount + 1 "
                + " WHERE num = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, num);
            psmt.executeQuery();

        } catch(Exception e) {
            System.out.println("게시물 조회수 증가 중 예외발생");
            e.printStackTrace();
        }
    }

}