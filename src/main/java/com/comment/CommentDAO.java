package com.comment;

import com.common.DBConnPool;

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
}
