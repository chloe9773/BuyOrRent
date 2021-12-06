package com.jeonghwapark.buyorrent.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.MemberVO;

@Repository
public class JoinAndLoginDao {
	@Autowired
	SqlSession sql;
	
	// 회원가입 
	public void setJoin(MemberVO mvo) {
		sql.insert("joinlog.setJoin", mvo);
	}
	
	// 아이디 중복 체크 
	public int chkDuplicateId(String username) {
		return sql.selectOne("joinlog.chkDuplicateId", username);
	}
	
	// 로그인 정보 확인
	public int chkMemberOne(MemberVO mvo) {
		return sql.selectOne("joinlog.chkMemberOne",mvo);
	}
	
	// 세션 설정 
	public MemberVO setSessionLogin(MemberVO mvo) {
		return sql.selectOne("joinlog.setSessionLogin", mvo);
	}
	
	// 유저명 가져오기 
	public MemberVO getUsernick(int userId) {
		return sql.selectOne("joinlog.getUsernick", userId);
	}
	
	// 유저 주소 저장  
	public void setAddr(MemberVO mvo) {
		sql.update("joinlog.setAddr", mvo);
	}
}
