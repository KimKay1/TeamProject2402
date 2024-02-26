package com.comment;

import com.common.DBConnPool;
import com.membership.MemberDTO;
import jakarta.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CommentDAO extends DBConnPool {
    public CommentDAO() { super(); }

    //코멘트 작성
    public int insertWrite(CommentDTO dto){
        int result = 0;


        try {
            if(dto.getIdx()!=null){
                String query = "INSERT INTO scott.comment_teampro (idx, name, content, favor, pass, title, category) VALUES (?, ?, ?, ?, ?, ?, ?)";
                psmt = con.prepareStatement(query);
                psmt.setString(1, dto.getIdx());
                psmt.setString(2, dto.getName());
                psmt.setString(3, dto.getContent());
                psmt.setString(4, dto.getFavor());
                psmt.setString(5, dto.getPass());
                psmt.setString(6, dto.getTitle());
                psmt.setString(7, dto.getCategory());
                result = psmt.executeUpdate();
            }else {
                String query = "INSERT INTO scott.comment_teampro (idx, name, content, favor, pass, title, category) VALUES (scott.seq_teampro_num.nextval, ?, ?, ?, ?, ?, ?) ";
                psmt = con.prepareStatement(query);
                psmt.setString(1, dto.getName());
                psmt.setString(2, dto.getContent());
                psmt.setString(3, dto.getFavor());
                psmt.setString(4, dto.getPass());
                psmt.setString(5, dto.getTitle());
                psmt.setString(6, dto.getCategory());
                result = psmt.executeUpdate();
            }


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

    //코멘트뷰 목록 반환
    //검색 조건에 맞는 게시물 목록 반환
    public List<CommentDTO> selectMyListPage(Map<String, Object>map){
        //쿼리 결과를 담을 변수
        List<CommentDTO> bbs = new ArrayList<CommentDTO>();

        // 쿼리문 작성
        String query = "SELECT * FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT * FROM scott.comment_teampro";

        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchField") + " "
                    + " = '" + map.get("searchWord") + "'" ;
        }

        query += " ORDER BY idx DESC"
                + " ) Tb"
                + " )"
                + " WHERE rNUM BETWEEN ? AND ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());

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

    //코멘트뷰에 코멘트 불러오기
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

    //마이코멘트뷰에 코멘트 불러오기
    public CommentDTO selectMyView(String idx){
        CommentDTO dto = new CommentDTO();

        String query = "SELECT idx, name, content, postdate, favor, pass, title, category FROM scott.comment_teampro WHERE idx = ?";

        try{
            psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
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
            System.out.println("comment selectMyView 오류 발생");
        }
        return dto;
    }

    //입력한 비밀번호가 지정한 idx 게시물의 비밀번호와 일치하는지 여부 확인
    public boolean confirmPassword(String pass, String idx){
        boolean isCorr = true;
        String query = "SELECT COUNT(*) FROM scott.comment_teampro"
                + " WHERE pass = ? AND idx = ? ";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1,pass);
            psmt.setString(2, idx);
            rs = psmt.executeQuery();

            rs.next();
            if(rs.getInt(1) == 0){
                isCorr = false;
            }
        }catch (Exception e){
            isCorr = false;
            System.out.println("comment confirmPassword 오류발생");
            e.printStackTrace();
        }
        return isCorr;
    }

    //코멘트 수정뷰에 코멘트 불러오기
    public CommentDTO selectEditView(String idx){
        CommentDTO dto = new CommentDTO();

        String query = "SELECT idx, name, content, postdate, favor, pass, title, category FROM scott.comment_teampro WHERE idx = ?";

        try{
            psmt = con.prepareStatement(query);
            psmt.setString(1, idx);
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
            System.out.println("comment selectEditView 오류 발생");
        }
        return dto;
    }

    //코멘트 수정
    public int updatePost(CommentDTO dto){
        int result = 0;
        String query = "UPDATE scott.comment_teampro"
                + " SET name =?, content=?, favor=?"
                + " WHERE idx=? AND pass=?";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getName());
            psmt.setString(2,dto.getContent());
            psmt.setString(3,dto.getFavor());
            psmt.setString(4,dto.getIdx());
            psmt.setString(5,dto.getPass());

            result = psmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("updatePost 오류발생");
        }
        return result;
    }

    //코멘트 삭제
    public int deletePost(String idx){
        int result = 0;

        String query = "DELETE FROM scott.comment_teampro WHERE idx = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1,idx);
            result = psmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("comment deletePost 오류발생");
        }

        return result;
    }
}
