package com.jeonghwapark.buyorrent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jeonghwapark.buyorrent.service.JoinAndLoginSrv;

@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	JoinAndLoginSrv jSrv;
	
	// 채팅페이지  
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String getChat() {
		return "chat/chat";
	}
}
