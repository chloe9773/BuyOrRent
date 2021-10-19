package com.jeonghwapark.buyorrent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/trade")
public class TradeBoardController {
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String getTradeBoard() {
		return "/tradeBoard/tradeBoardMain";
	}
}
