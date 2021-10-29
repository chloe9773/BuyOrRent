package com.jeonghwapark.buyorrent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
