package com.jeonghwapark.buyorrent.repository;

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
}
