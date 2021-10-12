package com.jeonghwapark.buyorrent.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.MemberVO;

@Repository
public class JoinAndLoginDao {
	@Autowired
	SqlSession sql;
	
	public void setJoin(MemberVO mvo) {
		sql.insert("joinlog.setJoin", mvo);
	}
	
	public int chkDuplicateId(String username) {
		return sql.selectOne("joinlog.chkDuplicateId", username);
	}
}
