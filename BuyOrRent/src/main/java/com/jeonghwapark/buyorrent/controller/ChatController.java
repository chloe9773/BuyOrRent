package com.jeonghwapark.buyorrent.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.model.MessageVO;
import com.jeonghwapark.buyorrent.repository.ChatDao;
import com.jeonghwapark.buyorrent.service.ChatSrv;
import com.jeonghwapark.buyorrent.service.JoinAndLoginSrv;
@Controller
@RequestMapping("/chat")
public class ChatController {
	@Autowired
	JoinAndLoginSrv jSrv;
	
	@Autowired
	ChatSrv cSrv;
	
	@Autowired
	ChatDao cDao;
	
	// 채팅페이지  
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView getChat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("userId");
		
		// 채팅방 불러오기 
		List<ChatroomVO> chatroomList = cSrv.getChatroomList(userId);
		List<String> previewList = new ArrayList<>();
		ModelAndView mav = new ModelAndView();
		
		if(!chatroomList.isEmpty()) {
			System.out.println("emptyz");
			for(int i = 0; i < chatroomList.size(); i++) {
				int id = chatroomList.get(i).getChatroomId(); 
				previewList.add(cSrv.getLastMessageContent(id).getMessage());
			}
		}		
		
		mav.setViewName("chat/chat");
		mav.addObject("chatroomList", chatroomList);
		mav.addObject("previewList", previewList);
		
		return mav;
	}
	
	@RequestMapping(value="", method=RequestMethod.POST)
	@ResponseBody
	public ChatroomVO getChat(@RequestParam("messageSender") int messageSender, @RequestParam("messageReceiver") int messageReceiver) {
		ChatroomVO chkvo = new ChatroomVO();
		chkvo.setUserAId(messageSender);
		chkvo.setUserBId(messageReceiver);
		
		ChatroomVO cvo = new ChatroomVO();
		if(cDao.cntRoom(chkvo) == 0 && cDao.countCntRoom(chkvo) == 0) {
			cDao.createRoom(chkvo);
			
			cvo = cDao.isRoom(chkvo);
			
		} else {
			cvo = cDao.isRoom(chkvo);
		}
		
		System.out.println(cvo.getChatroomId());
		//return cvo.getChatroomId();
		return cvo;
	}
	
	@RequestMapping(value="/room", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView getChatRoom(HttpServletRequest request, @RequestParam(value="chatroom_id") int chatroomId) {
		HttpSession session = request.getSession();
		int userId = (int)session.getAttribute("userId");
		
		// 채팅방 불러오기 
		List<ChatroomVO> chatroomList = cSrv.getChatroomList(userId);
		List<String> previewList = new ArrayList<>();
		if(!chatroomList.isEmpty()) {
			for(int i = 0; i < chatroomList.size(); i++) {
				int id = chatroomList.get(i).getChatroomId();
				previewList.add(cSrv.getLastMessageContent(id).getMessage());
			}
		}
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chatRoom");
		mav.addObject("chatroomList", chatroomList);
		mav.addObject("previewList", previewList);
		mav.addObject("chatroomNo", chatroomId);
		
		return mav;
	}
	
	// 채팅 내역 로딩 
	@RequestMapping(value = "/load_history", method = RequestMethod.POST)
	@ResponseBody
	public List<MessageVO> loadHistory(ChatroomVO cvo) {
		int id = cvo.getChatroomId();
		
		return cSrv.getMessageList(id);
		
	}
	
	// 채팅방 삭제 
	@RequestMapping(value = "/delete_chatroom", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView deleteChatroom(@RequestParam("chatroomId") int chatroomId) {
		cSrv.deleteChatroom(chatroomId);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/chat");
		
		return mav;
		
	}
}
