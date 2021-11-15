package com.jeonghwapark.buyorrent.server;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.google.gson.Gson;
import com.jeonghwapark.buyorrent.model.ChatroomVO;
import com.jeonghwapark.buyorrent.model.MemberVO;
import com.jeonghwapark.buyorrent.model.MessageVO;
import com.jeonghwapark.buyorrent.repository.ChatDao;

@RequestMapping("/echo")
//@Component
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
			if(cDao.isRoom(rvo) == null) {
				cDao.createRoom(rvo);
				
				cvo = cDao.isRoom(rvo);
				
			} else {
				cvo = cDao.isRoom(rvo);
			}
		} else {
			cvo = cDao.isRoom(rvo);
		}
		
		mvo.setChatroomId(cvo.getChatroomId());
		
		if(cvo.getUserAId() == mvo.getMessageSender()) {
			mvo.setMessageReceiver(rvo.getUserBId());
		} else {
			mvo.setMessageReceiver(rvo.getUserAId());
		}
		
		for(WebSocketSession websocketSession : connectedUsers) {
			map = websocketSession.getAttributes();
			
			MemberVO login = (MemberVO) map.get("login");
			// 수신자
			if(login.getUserId() == mvo.getMessageSender()) {
				Gson gson = new Gson();
				String msgJson = gson.toJson(mvo);
				websocketSession.sendMessage(new TextMessage(msgJson));
			}
		}
		
		System.out.println(mvo.getChatroomId());
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

//@RequestMapping("/echo")
//@Component
//public class EchoHandler extends TextWebSocketHandler{
//	private List<WebSocketSession> users;
//	private Map<String, Object> userMap;
//	
//	public EchoHandler() {
//		users = new ArrayList<WebSocketSession>();
//		userMap = new HashMap<String, Object>();
//	}
//	
//	@Override // 소켓 연결 생성 후 실행 메서드 
//	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
//		System.out.println("TextWebSocketHandler : 연결 생성 ");
//		users.add(session);
//	}
//	
//	@Override
//	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
//		System.out.println("TextWebSocketHandler : 메세지 수신 ");
//		System.out.println("메세지 : " + message.getPayload());
//		JSONObject object = new JSONObject(message.getPayload());
//		String type = object.getString("type");
//		
//		if(type != null && type.equals("register")) {
//			//등록 요청 
//			String user = object.getString("userid");
//			userMap.put(user, session);
//		} else {
//			//채팅 메시지 : 상대방 아이디를 포함해서 메세지를 보낼것이기 때문
//			//MAP에서 상대방 아이디에 해당하는 WebSocket 꺼내와서 전송
//			String target = object.getString("target");
//			WebSocketSession ws = (WebSocketSession)userMap.get(target);
//			String msg = object.getString("message");
//			
//			if(ws != null) ws.sendMessage(new TextMessage(msg));
//		}
//	}
//	
//	@Override // 연결 해제 후 실행 메서드
//	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		System.out.println("TextWebSocketHandler : 연결 종료");
//		users.remove(session);
//	}
//}
////public class EchoHandler extends TextWebSocketHandler{
////	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
////	
////	private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);
////	
////	@Override
////	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
////		// when client is connected
////		sessionList.add(session);
////		logger.info("{} connected", session.getId());
////	}
////	
////	@Override
////	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
////		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
////		
////		// sending to all users
////		for(WebSocketSession sess : sessionList) {
////			sess.sendMessage(new TextMessage(message.getPayload()));
////		}
////	}
////	
////	@Override
////	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
////		sessionList.remove(session);
////		logger.info("{} connetion closed", session.getId());
////	}
////	
////	
////}
