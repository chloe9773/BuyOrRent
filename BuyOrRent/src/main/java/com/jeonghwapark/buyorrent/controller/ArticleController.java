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
	
	// 게시글 작성 화면 
	@ResponseBody
	@RequestMapping(value = "/article-write", method = RequestMethod.POST)
	public String setArticleWrite(ArticleVO avo) {
		aSrv.setArticleWrite(avo);
		
		return "success";
	}
}
