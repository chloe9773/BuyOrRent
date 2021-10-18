package com.jeonghwapark.buyorrent.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.BoardVO;

@Repository
public class BoardDao {
	@Autowired
	SqlSession sql;
	
	// 한 게시판 정보 불러오기 
	public BoardVO getBoardOne(int id) {
		return sql.selectOne("board.getBoardOne", id);
	}
	
	// 게시판 총 게시글 수 
	public int getArticlesCount(int id) {
		return sql.selectOne("board.getArticlesCount", id);
	}
}
