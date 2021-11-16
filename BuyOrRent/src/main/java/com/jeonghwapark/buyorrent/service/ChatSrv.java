package com.jeonghwapark.buyorrent.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.model.MessageVO;
import com.jeonghwapark.buyorrent.repository.ChatDao;

@Service
public class ChatSrv {
	@Autowired
	ChatDao cDao;
	
	// 채팅방별 메세지 내용 가져오기 
	public List<MessageVO> getMessageList(int chatroomId) {
		return cDao.getMessageList(chatroomId);
	}
	
	// 메세지 삽입 
	public void insertMessage(MessageVO mvo) {
		cDao.insertMessage(mvo);
	}
	
	// 메세지 아이디 
	public int getLastMessageId() {
		return cDao.getLastMessageId();
	}
	
	// 라스트 메세지 불러오기 
	public MessageVO getLastMessageContent(int messageId) {
		return cDao.getLastMessageContent(messageId);
	}
	
	// 채팅방 리스트 불러오기 
	public List<ChatroomVO> getChatroomList(int userId) {
		return cDao.getChatroomList(userId);
	}
}
