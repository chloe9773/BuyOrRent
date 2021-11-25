package com.jeonghwapark.buyorrent.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.AddressVO;
import com.jeonghwapark.buyorrent.model.TradeArticleVO;
import com.jeonghwapark.buyorrent.repository.TradeArticleDao;

@Service
public class TradeArticleSrv {
	@Autowired
	TradeArticleDao tDao;
	
	// 게시글 작성 
	public void setTradeArticle(TradeArticleVO tvo) {
		tDao.setTradeArticle(tvo);
	}
	
	// 게시글 삭제 
	public void deleteArticleOne(int tid) {
		tDao.deleteArticleOne(tid);
	}
	
	// 게시글 수정
	public void updateArticle(TradeArticleVO tvo) {
		tDao.updateArticle(tvo);
	}
	
	// 주소 db
	public List<AddressVO> getsido() {
		return tDao.getsido();
	}
	
	// 라지 주소 Db
	public List<AddressVO> getsidoLarge() {
		return tDao.getsidoLarge();
	}
	
	// 작은 주소 Db
	public List<AddressVO> getSigun(int sid) {
		return tDao.getSigun(sid);
	}
	
	// 제일 작은 주소 Db
	public List<AddressVO> getDong(AddressVO avo) {
		return tDao.getDong(avo);
	}
}
