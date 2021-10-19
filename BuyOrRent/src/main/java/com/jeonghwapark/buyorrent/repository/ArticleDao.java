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
	
	// 댓글 삭제 
	public void deleteCommentOne(int cid) {
		sql.delete("article.deleteCommentOne", cid);
	}
	
	// 댓글 수정 
	public void updateComment(int cid, String content) {
		Map<String, Object> map = new HashMap<>();
		map.put("cid", cid);
		map.put("content", content);
		
		sql.update("article.updateComment", map);
	}
	
	// 대댓글 순서 등록 
	public void setReplyComment(CommentVO cvo) {
		sql.update("article.setReplyComment", cvo);
	}
	
	// 대댓글 순서 조회 
	public int getReplyCommentRefOrder(int ref) {
		return sql.selectOne("article.getReplyCommentRefOrder", ref);
	}
	
	// 댓글 정보 가져오기 
	public CommentVO getCommentOne(int cid) {
		return sql.selectOne("article.getCommentOne", cid);
	}
	
	// 연결 댓글 카운트 
	public int getCommentOneCount(int ref) {
		return sql.selectOne("article.getCommentOneCount", ref);
	}
}
