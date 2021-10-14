package com.jeonghwapark.buyorrent.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.ArticleVO;

@Repository
public class ArticleDao {
	@Autowired
	SqlSession sql;
	
	// 게시글 작성 
	public void setArticleWrite(ArticleVO avo) {
		sql.insert("article.setArticle",avo);
	}
	
	// 게시판별 게시글 불러오기 (공지) 
	public List<ArticleVO> getNotiArticleForBoard(int id) {
		return sql.selectList("article.getNotiArticleForBoard", id);
	}
	
	// 게시판별 게시글 불러오기 (일반) 
	public List<ArticleVO> getAllArticleForBoard(int id) {
		return sql.selectList("article.getAllArticleForBoard", id);
	}
}
