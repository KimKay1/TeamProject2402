package com.Review;

import com.common.DBConnPool;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ReviewDAO extends DBConnPool { //커넥션 풀 상속
    public ReviewDAO() { super(); }
    
    // 검색 조건에 맞는 게시물 수 반환
    public int selectCount(Map< String, Object > map) {
        int totalCount = 0;

        String query = "select count(*) from scott.review_BOARD";
        if(map.get("searchWords") != null) {
            query += " WHERE "+ map.get("searchField") + " "
                    + " Like '%" + map.get("searchWords") + "%'";
        }
        // SELECT COUNT(*) FROM scott.review_board_jsp
        // WHERE title '%검색어%';

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("review_board selectCount 오류 발생");
        }
        return totalCount;
    }

    // 검색 조건에 맞는 게시물 목록을 반환
    public List<ReviewDTO> selectListPage(Map<String,Object>map){
        //쿼리 결과를 담을 변수
        List<ReviewDTO> bbs = new ArrayList<>();
        //쿼리문 작성
        String query = "SELECT * FROM ("
                + " SELECT Tb.*, ROWNUM rNum FROM ("
                + " SELECT * FROM scott.review_BOARD";

        if(map.get("searchWord") != null){
            query += " WHERE "  + map.get("searchField") + " "
                    +" LIKE '%" + map.get("searchWord") + "%'";
        }
        query += " ORDER BY idx DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNum BETWEEN ? AND?";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());
            System.out.println("start : " + map.get("start"));
            System.out.println("end : " + map.get("end"));
            rs = psmt.executeQuery();

            while(rs.next()){
                //한 row의 내용을 DTO에 저장
                ReviewDTO dto = new ReviewDTO();

                dto.setIdx(rs.getString("idx"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setId(rs.getString("id"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setVisitcount(rs.getInt("visitcount"));

                bbs.add(dto);
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectList 오류발생");
        }
        return bbs;
    }

    public int insertWrite(ReviewDTO dto) {
        int result = 0;
        try {
            String query = "INSERT INTO scott.review_BOARD ("
                    + " idx, title, content, id, VISITCOUNT) "
                    + " VALUES ( "
                    + " SCOTT.SEQ_REVIEW_NUM.NEXTVAL,?,?,?, 0)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getId());

            result = psmt.executeUpdate();

        } catch (Exception e) {
            System.out.println("게시물 입력 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }

    //파라메터 idx 값에 따라 게시물 가져오기
    public ReviewDTO selectView(String idx) {
        ReviewDTO dto = new ReviewDTO();

        String query = "SELECT * FROM scott.review_BOARD WHERE idx=?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
            rs = psmt.executeQuery();

            if (rs.next()) {
                dto.setIdx(rs.getString("idx"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setVisitcount(rs.getInt("visitcount"));
            }

        } catch (Exception e) {
            System.out.println("selectView 오류 발생");
            e.printStackTrace();
        }
        return dto;
    }

    public void updateVisitCount (String idx) {
        String query = "UPDATE scott.review_BOARD SET "
                + " visitcount = visitcount + 1 "
                + " WHERE idx = ? ";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
            psmt.executeQuery();

        } catch (Exception e) {
            System.out.println("updateVisitCount 오류 발생");
            e.printStackTrace();
        }
    }

}
