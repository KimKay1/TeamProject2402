package com.membership;

import com.common.DBConnPool;

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

    // 회원가입
    public int insertMember(MemberDTO dto){
        int result = 0;

        try{
            String query = "INSERT INTO scott.member_teampro (ID,PASS, NAME, REGIDATE) VALUES(?,?,?,sysdate)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getId());
            psmt.setString(2,dto.getPass());
            psmt.setString(3,dto.getName());

            result = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("insertMember 오류 발생");
        }
        return result;
    }

    // 개인정보 불러오기
    public MemberDTO selectMyPage(String id){
        MemberDTO dto = new MemberDTO();
        try {
            String query = "SELECT id, pass, name, regidate FROM scott.member_teampro WHERE id = ?";
            psmt = con.prepareStatement(query);
            psmt.setString(1,id);
            rs = psmt.executeQuery();

            if(rs.next()){
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString("name"));
                dto.setRegidate(rs.getDate("regidate"));
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectMyPage 오류 발생");
        }
        return dto;
    }

    // 개인정보 수정
    public int updateMyPage(MemberDTO dto){
        int result = 0;

        String query = "UPDATE scott.member_teampro"
                + " SET pass = ? , name = ?"
                + " WHERE id = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getPass());
            psmt.setString(2, dto.getName());
            psmt.setString(3, dto.getId());

            result = psmt.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("updateMyPage 오류 발생");
        }
        return result;
    }


}
