package com.jeonghwapark.buyorrent.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	// 자유게시판 화면 
	@RequestMapping(value = "/freeboard", method = RequestMethod.GET)
	public String getFreeboard() {
		return "board/freeboard";
	}
	
	// 게시글 작성 화면 
	@RequestMapping(value = "/article-write", method = RequestMethod.GET)
	public String getArticleWrite(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		
		String username = (String)session.getAttribute("username");
		
		if(username != null) {
			mav.addObject("username", username);
			mav.setViewName("/board/articleWrite");
		} else {
			mav.setViewName("/board/freeboard");
		}
		return "board/articleWrite";
	}
}
