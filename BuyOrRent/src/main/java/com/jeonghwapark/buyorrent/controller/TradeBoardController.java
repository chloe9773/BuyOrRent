package com.jeonghwapark.buyorrent.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.TradeArticleVO;
import com.jeonghwapark.buyorrent.service.TradeArticleSrv;

@Controller
@RequestMapping("/trade")
public class TradeBoardController {
	@Autowired
	TradeArticleSrv tSrv;
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public ModelAndView getTradeBoard(@RequestParam("board_id") int bid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bid", bid);
		mav.setViewName("/tradeBoard/tradeBoardMain");
		
		return mav;
	}
	
	@RequestMapping(value="/article/item-upload", method=RequestMethod.GET)
	public ModelAndView getTradeBoardWrite(@RequestParam("board_id") int bid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bid", bid);
		mav.setViewName("/tradeBoard/itemUploadWrite");
		
		return mav;
	}
	
	@RequestMapping(value="/article/item-upload", method=RequestMethod.POST)
	public ModelAndView setTradeBoardWrite(@ModelAttribute TradeArticleVO tvo, @RequestPart MultipartFile files, @RequestParam("board_id") int bid) throws IllegalStateException, IOException {
		// 파일 존재 여부 
		if(files.isEmpty()) {
			// 파일 없음 
			tSrv.setTradeArticle(tvo);
		} else {
			// 파일 있음 
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("bid", bid);
		mav.setViewName("/tradeBoard/itemUploadWrite");
		
		return mav;
	}
	
	// 게시글 삭제
	@RequestMapping(value="/article/item-delete", method=RequestMethod.POST)
	public String deleteArticleOne(@RequestParam("board_id") int bid) {
		tSrv.deleteArticleOne(bid);
		
		return "success";
	}
}
