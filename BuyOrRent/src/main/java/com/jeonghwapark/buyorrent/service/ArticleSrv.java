package com.jeonghwapark.buyorrent.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.ArticleVO;
import com.jeonghwapark.buyorrent.repository.ArticleDao;

@Service
public class ArticleSrv {
	@Autowired
	ArticleDao aDao;
	
	// 게시글 작성 
	public void setArticleWrite(ArticleVO avo) {
		aDao.setArticleWrite(avo);
	}
}
