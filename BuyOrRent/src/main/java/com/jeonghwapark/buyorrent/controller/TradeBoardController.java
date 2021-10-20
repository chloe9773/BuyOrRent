package com.jeonghwapark.buyorrent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/trade")
public class TradeBoardController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public ModelAndView getTradeBoard(@RequestParam("board_id") int bid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bid", bid);
		mav.setViewName("/tradeBoard/tradeBoardMain");
		
		return mav;
	}
	
	@RequestMapping(value="/item-upload", method=RequestMethod.GET)
	public ModelAndView getTradeBoardWrie(@RequestParam("board_id") int bid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bid", bid);
		mav.setViewName("/tradeBoard/itemUploadWrite");
		
		return mav;
	}
}
