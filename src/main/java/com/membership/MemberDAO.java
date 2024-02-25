package com.membership;

import com.common.DBConnPool;

import java.util.Map;

public class MemberDAO extends DBConnPool {
    // 설정한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성

    public MemberDAO(){
        super();
    }

    // CRUD

    // 받아온 파라미터로 아이디/패스워드 일치하는 회원정보 반환
    public MemberDTO getMemberDTO(String uid, String upass){
        MemberDTO dto = new MemberDTO();
        /*컨트롤 쉬프트 유 - 대소문자 변환*/
        String sql = "SELECT * FROM scott.member_teampro WHERE id = ? AND pass = ?";

        try {
            psmt = con.prepareStatement(sql);
            psmt.setString(1,uid);
            psmt.setString(2,upass);
            rs = psmt.executeQuery();

            while(rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString("name"));
                dto.setRegidate(rs.getDate("regidate"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return dto;
    }

    // 중복 아이디 검사
    public MemberDTO getMemberIdDTO(String id){
        MemberDTO dto = new MemberDTO();
        /*컨트롤 쉬프트 유 - 대소문자 변환*/
        String sql = "SELECT * FROM scott.member_teampro WHERE id = ?";

        try {
            psmt = con.prepareStatement(sql);
            psmt.setString(1,id);
            rs = psmt.executeQuery();

            while(rs.next()) {
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString("name"));
                dto.setRegidate(rs.getDate("regidate"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return dto;
    }

    // 회원가입
    public int insertMember(MemberDTO dto, String agree){
        int result1 = 0;
        int result2 = 0;

        try{
            String query = "INSERT INTO scott.member_teampro (ID,PASS, NAME, REGIDATE) VALUES(?,?,?,sysdate)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getId());
            psmt.setString(2,dto.getPass());
            psmt.setString(3,dto.getName());

            result1 = psmt.executeUpdate();

            if(agree.equals("Y")){
                String query2 = "INSERT INTO scott.memberplus_teampro (ID, AGREE) VALUES(?,?)";
                psmt = con.prepareStatement(query2);
                psmt.setString(1, dto.getId());
                psmt.setString(2, agree);
                result2 = psmt.executeUpdate();
            } else {
                String query2 = "INSERT INTO scott.memberplus_teampro (ID, AGREE) VALUES(?,?)";
                psmt = con.prepareStatement(query2);
                psmt.setString(1, dto.getId());
                psmt.setString(2, agree);
                result2 = psmt.executeUpdate();
            }

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("insertMember 오류 발생");
        }
        return result1 + result2;
    }

    // 개인정보 불러오기
    public MemberDTO selectMyPage(String id){
        MemberDTO dto = new MemberDTO();
        try {
            String query = "SELECT M.id, M.pass, M.name, M.regidate, MP.agree, MP.genre FROM scott.member_teampro M INNER JOIN scott.memberplus_teampro MP ON M.id = MP.id WHERE M.id = ?";
            psmt = con.prepareStatement(query);
            psmt.setString(1,id);
            rs = psmt.executeQuery();

            if(rs.next()){
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString("name"));
                dto.setRegidate(rs.getDate("regidate"));
                dto.setAgree(rs.getString("agree"));
                dto.setGenre(rs.getString("genre"));
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectMyPage 오류 발생");
        }
        return dto;
    }

    // 개인정보(선택) 불러오기
    public MemberDTO selectMyPagePlus(String id){
        MemberDTO dto = new MemberDTO();
        try {
            String query = "SELECT id, agree, genre FROM scott.memberplus_teampro WHERE id = ?";
            psmt = con.prepareStatement(query);
            psmt.setString(1,id);
            rs = psmt.executeQuery();

            if(rs.next()){
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("agree"));
                dto.setName(rs.getString("genre"));
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectMyPagePlus 오류 발생");
        }
        return dto;
    }

//    //개인정보 장르 갯수
//    public int selectGenreCount(Map<String, Object> map){
//        int totalCount = 0;
//
//        String query = "SELECT COUNT(*) FROM scott.memberplus_teampro";
//        if(map.get("searchWord") != null){
//            query += " WHERE " + map.get("searchField") + " "
//                    + " LIKE '%" + map.get("searchWord") + "%'";
//        }
//        try {
//            stmt = con.createStatement();
//            rs = stmt.executeQuery(query);
//            rs.next();
//            totalCount = rs.getInt(1);
//        }catch (Exception e){
//            e.printStackTrace();
//            System.out.println("selectGenreCount 오류 발생");
//        }
//        return totalCount;
//    }

    // 개인정보 수정
    public int updateMyPage(MemberDTO dto){
        int result1 = 0;
        int result2 = 0;

        String query = "UPDATE scott.member_teampro"
                + " SET name = ?"
                + " WHERE id = ? AND pass = ?";

        String query2 = "UPDATE scott.memberplus_teampro SET agree = ?, genre = ? WHERE id = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getId());
            psmt.setString(3, dto.getPass());

            result1 = psmt.executeUpdate();

            psmt = con.prepareStatement(query2);
            psmt.setString(1, dto.getAgree());
            psmt.setString(2, dto.getGenre());
            psmt.setString(3, dto.getId());

            result2 = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("updateMyPage 오류 발생");
        }
        return result1 + result2;
    }

    //비밀번호 수정
    public int updatePass(MemberDTO dto){
        int result = 0;

        String query = "UPDATE scott.member_teampro"
                + " SET pass = ?"
                + " WHERE id = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getPass());
            psmt.setString(2, dto.getId());

            result = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("updatePass 오류 발생");
        }
        return result;
    }


}
