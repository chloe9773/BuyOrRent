package com.jeonghwapark.buyorrent.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.service.ChatSrv;
import com.jeonghwapark.buyorrent.service.JoinAndLoginSrv;
@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	JoinAndLoginSrv jSrv;
	
	@Autowired
	ChatSrv cSrv;
	
	// 채팅페이지  
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView getChat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("userId");
		
		// 채팅방 불러오기 
		List<ChatroomVO> chatroomList = cSrv.getChatroomList(userId);
		
		List<String> previewList = new ArrayList<>();
		for(int i = 0; i < chatroomList.size(); i++) {
			int id = chatroomList.get(i).getChatroomId();
			previewList.add(cSrv.getLastMessageContent(id).getMessage());
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chat");
		mav.addObject("chatroomList", chatroomList);
		mav.addObject("previewList", previewList);
		
		return mav;
	}
}
