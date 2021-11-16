<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/chat.css" rel="stylesheet"/>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<body class="bg-g" style="height: 100vh; overflow: hidden;">
	<div class="following-top-wrap chat-head w-100 bg-white">
		<div class="following-top-content w-60 m-center">
			<div class="following-top-left-wrap w-70">
				<div class="following-top-left">
					<%@ include file="/WEB-INF/views/include/logo.jsp" %>
				</div>
			</div>
		</div>
	</div>
	<div class="page-wrap w-100 mt-r-5">
		<div class="chat-wrap w-60 m-center d-flex">
			<div class="left-wrap d-flex w-35"> <!-- h-100vh-->
				<div class="profile-wrap bg-profile w-20">
					프로필
				</div>
				<div class="chat-div-wrap bg-white w-80">
					<div class="username-wrap">
						<span class="username font-16 weight-700 ml-20">해봄이</span>
						<input type="hidden" id="username" value="${sesscionScope.username}" />
					</div>
					<div class="unread-wrap t-right">
						<div class="unread p-10 icon-color">
							<span class="font-13">안읽은 메세지만 보기</span>
							<input type="radio" name="unread" class="unread-radio-btn d-none" value="unread"/>
							<span class="circle-default cursor" onclick="circleChkBtn(true, 'unread','unread');">
								<i class="ico-circle far fa-check-circle"></i>
							</span>
							<span class="circle-chk cursor d-none highlight" onclick="circleChkBtn(false, 'unread','unread');">
								<i class="ico-circle fas fa-check-circle"></i>
							</span>
						</div>
					</div>
					<div id="chatroom-wrap" class="chatroom-wrap">
						<c:forEach var="chatroom" items="${chatroomList}" varStatus="status">
							<div class="chat-box chat-1 d-flex cursor" onmouseenter="deleteDNone('chat-opt-btn-1');" onmouseleave="addDNone('chat-opt-btn-1');" onclick="enterChat();"><!-- openSocket(); -->
								<div class="user-img-wrap mr-8 w-20">
	
								</div>
								<div class="chat-prev-wrap w-80">
									<div class="prev-top mb-2">
										<c:if test="${chatroom.userAId eq sessionScope.userId}">
											<span class="chat-username font-13 weight-700 mr-3">${chatroom.userBNick}</span>
										</c:if>
										<c:if test="${chatroom.userAId ne sessionScope.userId}">
											<span class="chat-username font-13 weight-700 mr-3">${chatroom.userANick}</span>
										</c:if>	
										<input type="hidden" id="target-user" value="test1@test.com" />
										<span class="userposition font-12 chat-sub mr-3">백현동</span>
										<span class="chat-sub font-12 mr-3">·</span>
										<span class="time font-12 chat-sub">09월 29일</span>
									</div>
									<div class="prev-bottom">
										<p class="prev-content font-13">${previewList[status.index]}</p>
									</div>
									<div class="chat-opt-wrap">
										<div class="chat-opt-btn chat-opt-btn-1 d-none chat-in" onclick="chatLeaveOpt('chat-leave-1','chat-1','chat-opt-btn-1');">
											<i class="fas fa-ellipsis-h chat-in"></i>
										</div>
										<div class="chat-in chat-leave chat-leave-1 d-none">
											<span class="chat-in">채팅방 나가기</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="footer">
						<div class="font-14 ml-20">푸터푸터푸터푸터</div>
					</div>
				</div>
			</div>
			<div class="right-wrap chat-before bg-white w-65 t-center table">
				<div class="ico-chat-wrap table-cell">
					<div class="chat-icon">
						<i class="fas fa-comments"></i>
					</div>
					<div class="chat-direction mt-30 font-14">
						채팅할 상대를 선택해주세요.
					</div>
				</div>
			</div>
			<div class="right-wrap chat-after bg-white w-65 d-none">
				<div class="chatroom-top d-flex justify-bw plr-20">
					<div class="chat-user-wrap d-flex">
						<div class="user-img-wrap mr-8 w-20">
	
						</div>
						<div class="chat-username">
							<span class="chat-username font-16 ">백현이</span>
							<div class="review font-12 highlight">후기 1</div>
						</div>
					</div>
					<div class="chatroom-opt-wrap d-flex align-center cursor">
						<i id="chat-opt-elipsis" class="fas fa-ellipsis-v font-20 icon-color" onclick="toggle('chatroom-opt-box');"></i>
						<div class="chatroom-opt-box d-none">
							<div class="block-user p-10 bg-hover">대화상대 차단하기</div>
							<div class="leave-chat p-10 bg-hover">채팅방 나가기</div>
						</div>
					</div>
				</div>
				<div class="chat-content-wrap">
					<div class="day-divider t-center">
						<div class="date font-13">2021년 9월 29일</div>
					</div>
					<div class="chat-1 plr-20 d-flex left mb-16">
						<div class="chat-main-wrap w-40 mr-5">
							<div class="main">
								<p class="">채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용</p>
							</div>
						</div>
						<div class="chat-time font-12 chat-sub">
							<span class="afternoon">오후</span>
							<span class="morning d-none">오전</span>
							<span class="time">12:48</span>
						</div>
					</div>
					<div class="chat-2 plr-20 d-flex right justify-end mb-16">
						<div class="chat-time font-12 chat-sub mr-5">
							<span class="afternoon">오후</span>
							<span class="morning d-none">오전</span>
							<span class="time">12:49</span>
						</div>
						<div class="chat-main-wrap w-40">
							<div class="main">
								<p class="" id="msg-area">내용</p>
							</div>
						</div>
					</div>
				</div>
				<div class="chat-after-bottom">
					<div class="chat-input-wrap border-1 p-10 bg-white m-16">
						<form id="chatForm">
							<textarea id="chat-msg" class="textarea" maxlength="1000" placeholder="메세지를 입력해주세요"></textarea>
							<div class="chat-extra-wrap d-flex justify-bw">
								<div class="chat-extra-left table">
									<input type="file" class="fileUpload d-none"/>
									<span class="cursor table-cell" onclick="fileUpload();">
										<i class="far fa-image icon-color"></i>
									</span>
								</div>
								<div class="chat-extra-right d-flex">
									<div class="chat-count font-11 mr-10 table icon-color" style="display: table;">
										<span class="chat-total table-cell">0</span>
										<span class="gray table-cell">/</span>
										<span class="chat-max table-cell">1000</span>
									</div>
									<input type="hidden" id="sender" value="${sessionScope.username}" /> 
									<div class="submit-wrap">
										<button type="button" id="btn-send" class="bg-highlight white">전송</button>
									</div>
									<div id="chat"></div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!-- <script type="text/javascript">
	$("#send-btn").click(function(){
		sendMessage();
		$("#message-input").val("");
	});
	
	let sock = new SockJS("http://localhost:8080/buyorrent/echo");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	function sendMessage() {
		sock.send($("#message-input").val());
	}
	
	function onMessage(msg) {
		var data = msg.data;
		$("#chat").append(data + "<br/>");
	}
	
	function onClose(event) {
		$("#chat").append("연결 끊김");
	}
</script> -->
<!-- <script type="text/javascript">
	var ws;
	var userid = $("#username").val();
	
	function connect() {
		// 웹소켓 객체 생성 
		// 핸들러 등록(연결 생성, 메세지 수신, 연결 종료)
		
		ws = new WebSocket("ws://localhost:8080/buyorrent/echo");
		//ws = new SockJS("http://localhost:8080/buyorrent/echo");
		
		ws.open = function() {
			console.log("연결 생성");
			register();
		};
		ws.onmessage = function(e) {
			console.log("메시지 받음");
			var data = e.data;
			
			addMsg(data);
		};
		ws.onclose = function() {
			console.log("연결 끊김");
		};
	}
	
	// 메세지 수신을 위한 id 서버에 등록 
	function register(){
		var msg = {
				type : "register",
				userid : userid
		};
		
		ws.send(JSON.stringify(msg));
	}
	
	// 방금 받은 메세지 더해서 채팅방 설정 
	function addMsg(msg) {
		var chat = $("#msg-area").val();
		chat = chat + "\n상대방 : " + msg;
		$("#msg-area").val(chat);
	}
	
	function sendMsg() {
		var msg = {
				type : "chat",
				target : $("#target-user").val(),
				message : $("#chat-msg").val()
		};
		
		ws.send(JSON.stringify(msg));
	}
	
	$(function(){
		connect();
		
		$("#btn-send").on("click", function(){
			var chat = $("#msg-area").val();
			
			chat = chat + "\n나 : " + $("#chat-msg").val();
			
			sendMsg();
			
			$("#chat-msg").val("");
		})
	});
</script> -->
<script type="text/javascript">
	connect();
	
	function connect() {
		sock = new SockJS("http://localhost:8080/buyorrent/echo");
	    sock.onopen = function() {
	        console.log('open');
	    };
	    sock.onmessage = function(evt) {
    	 var data = evt.data;
    	   console.log("data : " + data)
  		   var obj = JSON.parse(data)  	   
    	   console.log("obj : " + obj)
    	   appendMsg(obj.message_content);
	    };
	    sock.onclose = function() {
	    	appendMsg("연결을 끊었습니다.");
	        console.log('close');
	    };
	}
	
	function send() {
		var msg = $("#chat-msg").val();
		
		if(msg != ""){
			message = {};
			message.message = $("#chat-msg").val()
		  	message.messageSender = 2//'${TUTOR_USER_user_id}'
		  	message.messageReceiver = 1//'${profile.user_id}'
		}

		sock.send(JSON.stringify(message));
		$("#chat-msg").val("");
	}
	
	function appendMsg(msg) {
		if(msg == ''){
			 return false;
		 }else{
		alert(msg);

		 //var t = getTimeStamp();
		 //$("#chatMessageArea").append("<div class='col-12 row' style = 'height : auto; margin-top : 5px;'><div class='col-2' style = 'float:left; padding-right:0px; padding-left : 0px;'><img id='profileImg' class='img-fluid' src='/displayFile?fileName=${userImage}&directory=profile' style = 'width:50px; height:50px; '><div style='font-size:9px; clear:both;'>${user_name}</div></div><div class = 'col-10' style = 'overflow : y ; margin-top : 7px; float:right;'><div class = 'col-12' style = ' background-color:#ACF3FF; padding : 10px 5px; float:left; border-radius:10px;'><span style = 'font-size : 12px;'>"+msg+"</span></div><div col-12 style = 'font-size:9px; text-align:right; float:right;'><span style ='float:right; font-size:9px; text-align:right;' >"+t+"</span></div></div></div>")		 

		  /* var chatAreaHeight = $("#chatArea").height();
		  var maxScroll = $("#chatMessageArea").height() - chatAreaHeight;
		  $("#chatArea").scrollTop(maxScroll); */

		 }
	}
	
	$('#btn-send').click(function() { 
		send(); 
		// 부분 새로 고침 왜 안되나옹..? ㅠㅠㅠ 
	});
</script>
</html>
