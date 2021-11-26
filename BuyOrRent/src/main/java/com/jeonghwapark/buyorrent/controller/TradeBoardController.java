package com.jeonghwapark.buyorrent.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

import com.jeonghwapark.buyorrent.model.AddressVO;
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
		mav.addObject("sidoList", tSrv.getsidoLarge());
		mav.addObject("sidogunList", tSrv.getsido());
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
	
	// 게시판 첫 뷰
	@RequestMapping(value="/item-detail", method=RequestMethod.GET)
	public String getItemDetail() {
		return "/tradeBoard/itemDetail";
	}
	
	// 게시글 삭제
	@RequestMapping(value="/article/item-delete", method=RequestMethod.POST)
	public String deleteArticleOne(@RequestParam("board_id") int bid) {
		tSrv.deleteArticleOne(bid);
		
		return "success";
	}
	
	// 주소 호출 
	@ResponseBody
	@RequestMapping(value="/sigun", method=RequestMethod.POST)
	public List<AddressVO> getSigun(@RequestParam("sid") int sid) {
		//System.out.println(sid);
		List<AddressVO> addr = new ArrayList<>();
		addr = tSrv.getSigun(sid);
		
		return addr;
	}
	
	// 동 호출 
	@ResponseBody
	@RequestMapping(value="/dong", method=RequestMethod.POST)
	public List<AddressVO> getDong(@RequestParam("sid") int sid, @RequestParam("sigun") String sigun) {
		System.out.println(sigun);
		AddressVO avo = new AddressVO();
		avo.setSid(sid);
		avo.setSigun(sigun);
		
		List<AddressVO> addr = new ArrayList<>();
		addr = tSrv.getDong(avo);
			
		return addr;
	}
}
