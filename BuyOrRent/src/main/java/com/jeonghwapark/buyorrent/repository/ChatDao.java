package com.jeonghwapark.buyorrent.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.model.MessageVO;

@Repository
public class ChatDao {
	@Autowired
	SqlSession sql;
	
	// 채팅방 생성 
	public void createRoom(ChatroomVO cvo) {
		sql.insert("chat.createRoom" , cvo);
	}
	
	public int cntRoom(ChatroomVO cvo) {
		return sql.selectOne("chat.cntRoom", cvo);
	}
	
	public int countCntRoom(ChatroomVO cvo) {
		return sql.selectOne("chat.countCntRoom", cvo);
	}
	
	// 채팅방 확인 
	public ChatroomVO isRoom(ChatroomVO cvo) {
		ChatroomVO roomvo = null;
		roomvo = sql.selectOne("chat.isRoom", cvo);
		
		return roomvo;
	}
	
	// 채팅방 정보  
	public ChatroomVO getRoomById(int chatroomId) {
		return sql.selectOne("chat.getRoomById", chatroomId);
	}
	
	// 메세지 삽입 
	public void insertMessage(MessageVO mvo) {
		System.out.println(mvo.getChatroomId());
		System.out.println(mvo.getMessageSender());
		System.out.println(mvo.getMessageReceiver());
		System.out.println(mvo.getMessage());
		sql.insert("chat.insertMessage" , mvo);
	}
	
	// 메세지 불러오기 
	public List<MessageVO> getMessageList(int chatroomId) {
		return sql.selectList("chat.getMessageList", chatroomId);
	}
	
	// 메세지 아이디 
	public int getLastMessageId() {
		return sql.selectOne("chat.getLastMessageId");
	}
	
	// 라스트 메세지 불러오기 
	public MessageVO getLastMessageContent(int messageId) {
		return sql.selectOne("chat.getLastMessageContent", messageId);
	}
	
	// 채팅방 리스트 불러오기 
	public List<ChatroomVO> getChatroomList(int userId) {
		return sql.selectList("chat.getChatroomList", userId);
	}
	
	// 채팅방 삭제 
	public void deleteChatroom(int chatroomId) {
		sql.delete("chat.deleteChatroom", chatroomId);
	}
}
