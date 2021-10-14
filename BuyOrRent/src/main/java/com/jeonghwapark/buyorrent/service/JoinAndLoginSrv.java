package com.jeonghwapark.buyorrent.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.MemberVO;
import com.jeonghwapark.buyorrent.repository.JoinAndLoginDao;

@Service
public class JoinAndLoginSrv {
	@Autowired
	JoinAndLoginDao jDao;
	
	// 회원가입 
	public void setJoin(MemberVO mvo) {
		jDao.setJoin(mvo);
	}
	
	// 아이디 중복 확인 
	public int chkDuplicateId(String username) {
		return jDao.chkDuplicateId(username);
	}
	
	// 로그인 정보 체크 
	public int chkMemberOne(MemberVO mvo) {
		return jDao.chkMemberOne(mvo);
	}
	
	// 세션 설정 
	public MemberVO setSessionLogin(MemberVO mvo, HttpSession httpSession) {
		MemberVO result = jDao.setSessionLogin(mvo);
		
		if(result != null) {
			httpSession.setAttribute("userId", result.getUserId());
			httpSession.setAttribute("username", result.getUsername());
			httpSession.setAttribute("regDate", result.getRegDate());
			httpSession.setAttribute("level", result.getLevel());
		}
		
		return result;
	}
	
	// 로그아웃 
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
