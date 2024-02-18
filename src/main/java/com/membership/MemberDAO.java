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

            /*연결되는 페이지가 없어서 일단 삭제*/
            /*연결되는 페이지가 없어서 일단 삭제*/
            /*연결되는 페이지가 없어서 일단 삭제*/
            /*연결되는 페이지가 없어서 일단 삭제*/
            /*연결되는 페이지가 없어서 일단 삭제*/


        }catch (Exception e){
            e.printStackTrace();
        }

        return dto;
    }
}