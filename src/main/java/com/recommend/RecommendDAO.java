package com.recommend;

import com.common.DBConnPool;

import java.util.ArrayList;
import java.util.List;

public class RecommendDAO extends DBConnPool {

    public RecommendDAO() { super(); }

    //별점 갯수, top3 목록 반환
    public List<RecommendDTO> selectList(String category){
        //쿼리 결과를 담을 변수
        List<RecommendDTO> bbs = new ArrayList<RecommendDTO>();

        // 쿼리문 작성
        String query = "SELECT CT.title, ROUND(AVG(CT.favor),1) AS favor, MT.img, MT.num FROM scott.comment_teampro CT INNER JOIN scott.movieinfo_teampro MT ON CT.title = MT.title WHERE CT.category = ? GROUP BY CT.title, MT.img, MT.num ORDER BY AVG(CT.favor) DESC ";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, category);
            rs = psmt.executeQuery();

            if(rs != null) {
                while (rs.next()) {
                    //한 row의 내용을 리스트에 저장
                    RecommendDTO dto = new RecommendDTO();
                    dto.setTitle(rs.getString("title"));
                    dto.setFavor(rs.getString("favor"));
                    dto.setImg(rs.getString("img"));
                    dto.setNum(rs.getString("num"));
                    bbs.add(dto);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectFavor 오류 발생");
        }
        return bbs;
    }

}
