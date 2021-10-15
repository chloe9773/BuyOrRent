package com.jeonghwapark.buyorrent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.BoardVO;
import com.jeonghwapark.buyorrent.service.ArticleSrv;
import com.jeonghwapark.buyorrent.service.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardSrv bSrv;
	
	@Autowired
	ArticleSrv aSrv;
	
	// 자유게시판 화면 
	@RequestMapping(value = "") //, method = RequestMethod.GET
	public ModelAndView getFreeboard(@RequestParam("board_id") int id) {
		//System.out.println(id);
		BoardVO bvo = bSrv.getBoardOne(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/freeboard");
		mav.addObject("boardId", bvo.getBoardId());
		mav.addObject("boardName", bvo.getBoardName());
		mav.addObject("notiList", aSrv.getNotiArticleForBoard(id));
		mav.addObject("articleList", aSrv.getAllArticleForBoard(id));
		
		return mav;
	}
}
