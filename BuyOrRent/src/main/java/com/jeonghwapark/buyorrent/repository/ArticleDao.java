package com.jeonghwapark.buyorrent.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.ArticleVO;
import com.jeonghwapark.buyorrent.model.CommentVO;

@Repository
public class ArticleDao {
	@Autowired
	SqlSession sql;
	
	// 게시글 작성 
	public void setArticleWrite(ArticleVO avo) {
		sql.insert("article.setArticle",avo);
	}
	
	// 게시글 하나 불러오기 
	public ArticleVO getArticleOne(int id) {
		return sql.selectOne("article.getArticleOne", id);
	}
	
	// 게시판별 게시글 불러오기 (공지) 
	public List<ArticleVO> getNotiArticleForBoard(int id) {
		return sql.selectList("article.getNotiArticleForBoard", id);
	}
	
	// 게시판별 게시글 불러오기 (일반) 
	public List<ArticleVO> getAllArticleForBoard(int id, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("start", start);
		map.put("end", end);
		
		return sql.selectList("article.getAllArticleForBoard", map);
	}
	
	// 게시글 수정
	public void setArticleModify(ArticleVO avo) {
		sql.update("article.updateArticleOne", avo);
	}
	
	// 게시글 삭제 
	public void deleteArticleOne(int aid) {
		sql.delete("article.deleteArticleOne", aid);
	}
	
	// 댓글 작성
	public void setCommentOne(CommentVO cvo) {
		sql.insert("article.setComment", cvo);
	}
	
	// 댓글 불러오기 
	public List<CommentVO> getArticleComments(int id) {
		return sql.selectList("article.getArticleComments", id);
	}
}
