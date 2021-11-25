package com.jeonghwapark.buyorrent.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.AddressVO;
import com.jeonghwapark.buyorrent.model.TradeArticleVO;

@Repository
public class TradeArticleDao {
	@Autowired
	SqlSession sql;
	
	// 게시글 작성 
	public void setTradeArticle(TradeArticleVO tvo) {
		sql.insert("trade.setTradeArticle", tvo);
	}
	
	// 게시글 삭제 
	public void deleteArticleOne(int tid) {
		sql.delete("trade.deleteArticleOne", tid);
	}
	
	// 게시글 수정
	public void updateArticle(TradeArticleVO tvo) {
		sql.update("trade.updateArticle", tvo);
	}
	
	// 주소 db
	public List<AddressVO> getsido() {
		return sql.selectList("trade.getsido");
	}
	
	// 라지 주소 Db
	public List<AddressVO> getsidoLarge() {
		return sql.selectList("trade.getsidoLarge");
	}
	
	// 작은 주소 Db
	public List<AddressVO> getSigun(int sid) {
		return sql.selectList("trade.getSigun", sid);
	}
	
	// 제일 작은 주소 Db
	public List<AddressVO> getDong(AddressVO avo) {
		return sql.selectList("trade.getDong", avo);
	}
}
