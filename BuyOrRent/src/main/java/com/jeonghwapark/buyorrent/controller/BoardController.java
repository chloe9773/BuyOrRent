package com.jeonghwapark.buyorrent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.ArticleVO;
import com.jeonghwapark.buyorrent.model.BoardVO;
import com.jeonghwapark.buyorrent.service.BoardSrv;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardSrv bSrv;
	
	// 자유게시판 화면 
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView getFreeboard(@RequestParam("board_id") int id) {
		//System.out.println(id);
		BoardVO bvo = bSrv.getBoardOne(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/freeboard");
		mav.addObject("boardId", bvo.getBoardId());
		mav.addObject("boardName", bvo.getBoardName());
		
		
		return mav;
	}
	
	// 게시글 작성 화면 
//	@RequestMapping(value = "/article-write", method = RequestMethod.GET)
//	public String getArticleWrite(HttpServletRequest request, @RequestParam("board_id") int id) {
//		HttpSession session = request.getSession();
//		BoardVO bvo = bSrv.getBoardOne(id);
//		ModelAndView mav = new ModelAndView();
//		
//		String username = (String)session.getAttribute("username");
//		
//		if(username != null) {
//			mav.addObject("username", username);
//			mav.addObject("boardName", bvo.getBoardName());
//			mav.setViewName("/board/articleWrite");
//		} else {
//			mav.setViewName("/board/freeboard");
//		}
//		return "board/articleWrite";
//	}
	
	// 게시글 작성 화면 
		@RequestMapping(value = "/article-write", method = RequestMethod.POST)
		public String setArticleWrite(ArticleVO avo) {
			
			return "board/articleWrite";
		}
}
