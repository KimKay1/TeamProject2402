package com.membership;

import com.common.DBConnPool;
import com.movieInfo.MovieInfoDTO;

public class AdminDAO extends DBConnPool {
    public AdminDAO(){
        super();
    }

    public int insertMoiveInfoDTO(AdminDTO dto){
        int result = 0;

        try {
            String query = "INSERT INTO scott.movieinfo_teampro (num, title ,director, actor,category, runningtime, releasedate, production, summary, visitcount, img, img2, youtube) VALUES(seq_board_num.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getDirector());
            psmt.setString(3, dto.getActor());
            psmt.setString(4, dto.getCategory());
            psmt.setString(5, dto.getRunningtime());
            psmt.setString(6, dto.getReleasedate());
            psmt.setString(7, dto.getProduction());
            psmt.setString(8, dto.getSummary());
            psmt.setString(9, dto.getVisitcount());
            psmt.setString(10, dto.getImg());
            psmt.setString(11, dto.getImg2());
            psmt.setString(12, dto.getYoutube());

            result = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("관리자 영화입력 오류 발생");
        }
        return result;
    }

    public int deleteMovieInfoDTO(AdminDTO dto){
        int result = 0;
        String query = "DELETE FROM scott.movieinfo_teampro WHERE num = ? AND title = ?";

        try{
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getNum());
            psmt.setString(2, dto.getTitle());
            result = psmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("관리자 영화삭제 오류 발생");
        }
        return result;
    }
}
