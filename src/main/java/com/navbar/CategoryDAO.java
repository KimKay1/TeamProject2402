package com.navbar;

import com.common.DBConnPool;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CategoryDAO extends DBConnPool {
    public CategoryDAO() { super(); }

    // 카테고리별 게시물 불러오기
    public CategoryDTO selectCategory(String category) {
        CategoryDTO dto = new CategoryDTO();
        String query = "SELECT  num, title, img, category FROM scott.movieinfo_teampro WHERE category = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, category);
            rs = psmt.executeQuery();
            if(rs.next()){
                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setImg(rs.getString("img"));
                dto.setCategory(rs.getString("category"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("categoryView selectCategory 오류 발생");
        }
        return dto;
    }

    //게시물 수 확인
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;

        String query = "SELECT COUNT(*) FROM scott.movieinfo_teampro";
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField") + " "
                    + " LIKE '%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("category selectCount 오류 발생");
        }
        return totalCount;
    }

    //검색창 게시물 수 확인
    public int selectSearchCount(Map<String, Object> map) {
        int totalCount = 0;

        String query = "SELECT COUNT(*) FROM scott.movieinfo_teampro";
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField1") +
                     " LIKE '%" + map.get("searchWord") + "%' OR " + map.get("searchField2") + " LIKE '% + map.get(searchWord) + %'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("category selectCount 오류 발생");
        }
        return totalCount;
    }

    //카테고리 조건에 맞는 게시물 목록 반환
    public List<CategoryDTO> selectListPage(Map<String, Object>map){
        //쿼리 결과를 담을 변수
        List<CategoryDTO> bbs = new ArrayList<CategoryDTO>();

        // 쿼리문 작성
        String query = "SELECT num, title, img FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT * FROM scott.movieinfo_teampro";

        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchField") + " "
                    + " = '" + map.get("searchWord") + "'" ;
        }

        query += " ORDER BY releasedate DESC"
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
                CategoryDTO dto = new CategoryDTO();
                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setImg(rs.getString("img"));

                bbs.add(dto);
            }


        }catch (Exception e){
            e.printStackTrace();
            System.out.println("category selectList 오류 발생");
        }

        return bbs;
    }

    //검색창 조건에 맞는 게시물 목록 반환
    public List<CategoryDTO> searchListPage(Map<String, Object>map){
        //쿼리 결과를 담을 변수
        List<CategoryDTO> bbs = new ArrayList<CategoryDTO>();

        // 쿼리문 작성
        String query = "SELECT num, title, img, category, director FROM ("
                + " SELECT Tb.*, ROWNUM rNUM FROM ("
                + " SELECT * FROM scott.movieinfo_teampro";

        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchField1") +
                    " LIKE '%" + map.get("searchWord") + "%' OR " + map.get("searchField2") + " LIKE '% + map.get(searchWord) + %'";
        }

        query += " ORDER BY releasedate DESC"
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
                CategoryDTO dto = new CategoryDTO();
                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setImg(rs.getString("img"));
                dto.setCategory(rs.getString("category"));
                dto.setDirector(rs.getString("director"));

                bbs.add(dto);
            }


        }catch (Exception e){
            e.printStackTrace();
            System.out.println("searchListPage 오류 발생");
        }

        return bbs;
    }

    //  검색(title or category or director) 게시물 불러오기
    public List<CategoryDTO> searchList(String search) {
        List<CategoryDTO> bbs = new ArrayList<CategoryDTO>();

        String query = "SELECT  MI.num, MI.title, MI.img, MI.category, MI.director FROM scott.movieinfo_teampro MI WHERE MI.title LIKE '%"
                        + search + "%' OR MI.director LIKE '%" + search + "%'";

        try {
            psmt = con.prepareStatement(query);
            rs = psmt.executeQuery();

            while (rs.next()){
                //한 row의 내용을 DTO에 저장
                CategoryDTO dto = new CategoryDTO();
                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setImg(rs.getString("img"));
                dto.setCategory(rs.getString("category"));
                dto.setDirector(rs.getString("director"));

                bbs.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("searchBar 오류 발생");
        }
        return bbs;
    }

}
