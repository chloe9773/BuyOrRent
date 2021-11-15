package com.jeonghwapark.buyorrent.repository;

import java.util.HashMap;
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
	
	// 채팅방 확인 
	public ChatroomVO isRoom(ChatroomVO cvo) {
		ChatroomVO roomvo = null;
		
		return sql.selectOne("chat.isRoom", cvo);
	}
	
	// 메세지 삽입 
	public void insertMessage(MessageVO mvo) {
		sql.insert("chat.insertMessage" , mvo);
	}
	
	//
	public int getPartner(ChatroomVO cvo) {
		List<MessageVO> list = sql.selectList("chat.getPartner", cvo);
		
		return list.get(0).getMessageSender();
	}
	
	// 
	public String getProfile(String str) {
		return sql.selectOne("chat.getProfile" , str);
	}

	// 
	public String getName(String str) {
		return sql.selectOne("chat.getName" , str);
	}
	
	//
	public List<MessageVO> getMessageList(String str){
		return sql.selectList("chat.getMessageList" , str);
	}
	
	// 
	public List<ChatroomVO> getRoomList(String str) {
		return sql.selectList("chat.getRoomList",str);
	}

	public List<ChatroomVO> getRoomList2(String str) {
		return sql.selectList("chat.getRoomList2" , str);
	}

	public MessageVO getRecentMessage(String str) {
		return sql.selectOne("chat.getRecentMessage" , str);
	}

	public String getTutorId(String str) {
		return sql.selectOne("chat.getTutorId" , str) ;
	}

	public List<ChatroomVO> getRoomListTutor(String str) {
		return sql.selectList("chat.getRoomListTutor" , str);
	}

	public void updateReadTime(String user_id, String TUTOR_USER_user_id) {
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
		map.put("USER_user_id", user_id);
		sql.update("chat.updateReadTime" , map);
	}

	public int getUnReadCount(String TUTOR_USER_user_id, int class_id, String user_id) {
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
		map.put("USER_user_id", user_id);
		map.put("CLASS_class_id", class_id);
		
		return sql.selectOne("chat.getUnReadCount" , map);
	}

	public int getAllCount(String str) {
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("USER_user_id", str);
		map.put("TUTOR_USER_user_id", str);
		if(sql.selectOne("chat.getAllCount" ,map) ==null) {
			return 0;
		}else {
			
			return sql.selectOne("chat.getAllCount" ,map);
		}
		
	}

	public void updateReadTimeTutor(int class_id , String user_id , String TUTOR_USER_user_id) {
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
		map.put("USER_user_id", user_id);
		map.put("CLASS_class_id", class_id);
		sql.update("chat.updateReadTimeTutor" , map);
	}
	
	public int getUnReadCountTutor(String TUTOR_USER_user_id, int class_id, String user_id) {
		HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("TUTOR_USER_user_id", TUTOR_USER_user_id);
		map.put("USER_user_id", user_id);
		map.put("CLASS_class_id", class_id);
		
		return sql.selectOne("chat.getUnReadCountTutor" , map);
	}
}
