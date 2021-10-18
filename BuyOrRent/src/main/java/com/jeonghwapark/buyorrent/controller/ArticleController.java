package com.jeonghwapark.buyorrent.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.ArticleVO;
import com.jeonghwapark.buyorrent.model.BoardVO;
import com.jeonghwapark.buyorrent.model.CommentVO;
import com.jeonghwapark.buyorrent.service.ArticleSrv;
import com.jeonghwapark.buyorrent.service.BoardSrv;

@Controller
@RequestMapping("/article")
public class ArticleController {
	@Autowired
	ArticleSrv aSrv;
	
	@Autowired
	BoardSrv bSrv;
	
	// 게시글 작성 화면 
	@RequestMapping(value = "/article-write", method = RequestMethod.GET)
	public ModelAndView getArticleWrite(HttpServletRequest request, @RequestParam("board_id") int id) {
		BoardVO bvo = bSrv.getBoardOne(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardId", bvo.getBoardId());
		mav.addObject("boardName", bvo.getBoardName());
		mav.setViewName("board/articleWrite");
		
		return mav;
	}
	
	// 게시글 작성  
	@ResponseBody
	@RequestMapping(value = "/article-write", method = RequestMethod.POST)
	public String setArticleWrite(ArticleVO avo) {
		aSrv.setArticleWrite(avo);
		
		return "success";
	}
	
	// 게시글 보기   
	@ResponseBody
	@RequestMapping(value = "/article-detail", method = RequestMethod.GET)
	public ModelAndView getArticleOne(@RequestParam("article_id") int id) {
		ArticleVO avo = aSrv.getArticleOne(id);
		BoardVO bvo = bSrv.getBoardOne(avo.getBoardId());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("article", avo);
		mav.addObject("boardName", bvo.getBoardName());
		mav.setViewName("/board/articleDetail");
		
		return mav;
	}
	
	// 게시글 수정 화면 
	@RequestMapping(value = "/article-modify", method = RequestMethod.GET)
	public ModelAndView getArticleModify(HttpServletRequest request, @RequestParam("article_id") int aid) {
		ArticleVO avo = aSrv.getArticleOne(aid);
		BoardVO bvo = bSrv.getBoardOne(avo.getBoardId());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("article", avo);
		mav.addObject("boardId", bvo.getBoardId());
		mav.addObject("boardName", bvo.getBoardName());
		mav.setViewName("board/articleWrite");
			
		return mav;
	}
	
	// 게시글 수정 화면 
	@ResponseBody
	@RequestMapping(value = "/article-modify", method = RequestMethod.POST)
	public String setArticleModify(ArticleVO avo) {
		aSrv.setArticleModify(avo);
		
		return "success";
	}
	
	// 게시글 삭제
	@ResponseBody
	@RequestMapping(value = "/article-delete", method = RequestMethod.POST)
	public int deleteArticleOne(int articleId) {
		ArticleVO avo = aSrv.getArticleOne(articleId);
		int boardId = avo.getBoardId();
		
		aSrv.deleteArticleOne(articleId);
		
		//return "redirect:/board";
		return boardId;
	}
	
	// 댓글 작성
	@ResponseBody
	@RequestMapping(value="/comment-write", method = RequestMethod.POST)
	public String setCommentOne(CommentVO cvo) {
		aSrv.setCommentOne(cvo);
		
		return "success";
	}
}
