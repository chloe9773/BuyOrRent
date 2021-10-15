package com.jeonghwapark.buyorrent.service;

import java.util.List;

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
	
	// 게시글 하나 불러오기 
	public ArticleVO getArticleOne(int id) {
		return aDao.getArticleOne(id);
	}
	
	// 게시판별 게시글 불러오기 (공지) 
	public List<ArticleVO> getNotiArticleForBoard(int id) {
		return aDao.getNotiArticleForBoard(id);
	}
		
	// 게시판별 게시글 불러오기 (일반) 
	public List<ArticleVO> getAllArticleForBoard(int id) {
		return aDao.getAllArticleForBoard(id);
	}
	
	// 게시글 수정
	public void setArticleModify(ArticleVO avo) {
		aDao.setArticleModify(avo);
	}
	
	// 게시글 삭제 
	public void deleteArticleOne(int aid) {
		aDao.deleteArticleOne(aid);
	}
}
