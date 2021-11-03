package com.jeonghwapark.buyorrent.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	// 주소 호출 
	@ResponseBody
	@RequestMapping(value="/address", method=RequestMethod.POST)
	public String getAddressList(HttpServletRequest request, HttpServletResponse response) throws ServletException, UnsupportedEncodingException, MalformedURLException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String addr = "http://api.vworld.kr/req/data?service=data&request=GetFeature&data=LT_C_ADEMD_INFO&key=";
		String serviceKey = "93F80BEB-B3E3-32FB-90D3-A200CDFAC951";
		String param = "&full_nm";
		
		URL url = new URL(addr + serviceKey + param);
		
		System.out.println();
		return "";
	}
}
