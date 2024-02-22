package com.comment;

import com.common.DBConnPool;
import com.membership.MemberDTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CommentDAO extends DBConnPool {
    public CommentDAO() { super(); }

    //코멘트 작성
    public int insertWrite(CommentDTO dto){
        int result = 0;

        try {
            String query = "INSERT INTO scott.comment_teampro (idx, name, content, favor, pass, title, category) VALUES (scott.seq_teampro_num.nextval, ?, ?, ?, ?, ?, ?) ";

            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getFavor());
            psmt.setString(4, dto.getPass());
            psmt.setString(5, dto.getTitle());
            psmt.setString(6, dto.getCategory());

            result = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("comment insertWrite 오류 발생");
        }
        return result;
    }

    //게시물 수 확인
    public int selectCount(Map<String, Object> map){
        int totalCount = 0;

        String query = "SELECT COUNT(*) FROM scott.comment_teampro";
        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchField") + " "
                    + " LIKE '%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("comment selectCount 오류 발생");
        }

        return totalCount;
    }

    //검색 조건에 맞는 게시물 목록 반환
    public List<CommentDTO> selectListPage(Map<String, Object>map){
        //쿼리 결과를 담을 변수
        List<CommentDTO> bbs = new ArrayList<CommentDTO>();

        // 쿼리문 작성
        String query = "SELECT * FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT * FROM scott.comment_teampro";

        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchField") + " "
                    + " LIKE '%" + map.get("searchWord") + "%'";
        }

        query += " ORDER BY idx DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNUM BETWEEN ? AND ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());
            System.out.println("start : " + map.get("start"));
            System.out.println("end : " + map.get("end"));

            rs = psmt.executeQuery();

            while (rs.next()){
                //한 row의 내용을 DTO에 저장
                CommentDTO dto = new CommentDTO();
                dto.setIdx(rs.getString("idx"));
                dto.setName(rs.getString("name"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getString("postdate"));
                dto.setFavor(rs.getString("favor"));
                dto.setPass(rs.getString("pass"));
                dto.setTitle(rs.getString("title"));
                dto.setCategory(rs.getString("category"));

                bbs.add(dto);
            }

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("comment selectList 오류 발생");
        }

        return bbs;
    }

    //코멘트 불러오기
    public CommentDTO selectView(String title){
        CommentDTO dto = new CommentDTO();

        String query = "SELECT idx, name, content, postdate, favor, pass, title, category FROM scott.comment_teampro WHERE title = ?";

        try{
            psmt = con.prepareStatement(query);
            psmt.setString(1, title);
            rs = psmt.executeQuery();

            if(rs.next()){
                dto.setIdx(rs.getString("idx"));
                dto.setName(rs.getString("name"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getString("postdate"));
                dto.setFavor(rs.getString("favor"));
                dto.setPass(rs.getString("pass"));
                dto.setTitle(rs.getString("title"));
                dto.setCategory(rs.getString("category"));
            }

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("comment selectView 오류 발생");
        }
        return dto;
    }
}
