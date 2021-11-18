package com.jeonghwapark.buyorrent.server;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.model.MessageVO;
import com.jeonghwapark.buyorrent.repository.ChatDao;

@RequestMapping("/echo")
@Component
public class EchoHandler extends TextWebSocketHandler{
	@Autowired
	private ChatDao cDao;
	//private ChatSrv cSrv;
	
	private List<WebSocketSession> connectedUsers;
	
	public EchoHandler() {
		connectedUsers = new ArrayList<WebSocketSession>();
	}
	
	public Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		log(session.getId() + " 연결 됨!!");

        users.put(session.getId(), session);
        connectedUsers.add(session);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		log(session.getId() + " 연결 종료됨");
        connectedUsers.remove(session);
        users.remove(session.getId());
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(message.getPayload());
		
		Map<String, Object> map = null;
		
		MessageVO mvo = MessageVO.convertMessage(message.getPayload());
		
		ChatroomVO rvo = new ChatroomVO();
		rvo.setUserAId(mvo.getMessageSender());
		rvo.setUserBId(mvo.getMessageReceiver());
		
		ChatroomVO cvo = null;
		if(mvo.getMessageReceiver() != mvo.getMessageSender()) {
			if(cDao.cntRoom(rvo) == 0 && cDao.countCntRoom(rvo) == 0) {
				cDao.createRoom(rvo);
				
				cvo = cDao.isRoom(rvo);
				
			} else {
				cvo = cDao.isRoom(rvo);
				
				if(cvo == null) {
					cvo = cDao.getRoomById(mvo.getChatroomId());
				}
			}
		} else {
			cvo = cDao.isRoom(rvo);
		}
		if(cvo.getUserAId() == mvo.getMessageSender()) {
			mvo.setMessageReceiver(rvo.getUserBId());
		} else {
			mvo.setMessageReceiver(rvo.getUserAId());
		}
		
		mvo.setChatroomId(cvo.getChatroomId());
		mvo.setMessageId(cDao.getLastMessageId()); // 필요한가 .. ?
		for(WebSocketSession websocketSession : connectedUsers) {
			Gson gson = new Gson();
			String msgJson = gson.toJson(mvo);
			websocketSession.sendMessage(new TextMessage(msgJson));
//			map = websocketSession.getAttributes();
//			//MemberVO login = (MemberVO) map.get("login");
//			MemberVO login = (MemberVO) map.get("username");
//			System.out.println("10");
//			System.out.println(login);
//			// 수신자
//			if(login.getUserId() == mvo.getMessageSender()) {
//				System.out.println("10-1");
//				Gson gson = new Gson();
//				String msgJson = gson.toJson(mvo);
//				websocketSession.sendMessage(new TextMessage(msgJson));
//			}
//			System.out.println("10-2");
		}
		
		try {
			cDao.insertMessage(mvo);
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("메시지 전송 및 db 저장 실패");
		}
	}
	
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log(session.getId() + "엑셉션 발생 : " + exception.getMessage());
	}
	
	private void log(String logmsg) {
		System.out.println(new Date() + " : " + logmsg);
	}
}