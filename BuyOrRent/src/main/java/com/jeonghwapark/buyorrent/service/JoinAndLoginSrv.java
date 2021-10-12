package com.jeonghwapark.buyorrent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.MemberVO;
import com.jeonghwapark.buyorrent.repository.JoinAndLoginDao;

@Service
public class JoinAndLoginSrv {
	@Autowired
	JoinAndLoginDao jDao;
	
	public void setJoin(MemberVO mvo) {
		jDao.setJoin(mvo);
	}
	
	public int chkDuplicateId(String username) {
		return jDao.chkDuplicateId(username);
	}
}
