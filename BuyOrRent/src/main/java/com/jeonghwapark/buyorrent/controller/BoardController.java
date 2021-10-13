package com.jeonghwapark.buyorrent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String getArticleWrite() {
		return "board/articleWrite";
	}
}
