package com.jeonghwapark.buyorrent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.BoardVO;
import com.jeonghwapark.buyorrent.paging.Pager;
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
	public ModelAndView getFreeboard(@RequestParam("board_id") int id, @RequestParam(defaultValue ="1") int currPage) {
		//System.out.println(id);
		BoardVO bvo = bSrv.getBoardOne(id);
		int count = bSrv.getArticlesCount(id);
		
		Pager pager = new Pager(count, currPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/freeboard");
		mav.addObject("boardId", bvo.getBoardId());
		mav.addObject("boardName", bvo.getBoardName());
		mav.addObject("notiList", aSrv.getNotiArticleForBoard(id));
		mav.addObject("articleList", aSrv.getAllArticleForBoard(id, start, end));
		mav.addObject("count", count);
		
		/* 페이지 시작 */
		mav.addObject("start", start); // 게시물 갯수 자를 시작번
		mav.addObject("end", end); // 게시물 자를 끝 번호 
		
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("currBlock", pager.getCurrBlock());
		mav.addObject("TotalBlock", pager.getTotBlock());
		
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("currPage", pager.getCurrPage());
		mav.addObject("totalPage", pager.getTotPage());
		
		// 페이지 번호를 클릭했을 때 css active 클래스 처리 
		mav.addObject("selected", pager.getCurrPage());
		
		return mav;
	}
	
	@RequestMapping("/my-article")
	public String getArticlesbyMe() {
		return "/board/articleByme";
	}
}
