<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/chat.css" rel="stylesheet"/>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<body class="bg-g" style="height: 100vh; overflow: hidden;">
<input type="hidden" id="user-id" value="${sessionScope.userId}" />
<input type="hidden" id="sock-status" value="" />
<input type="hidden" id="chatroom-no" value="${chatroomNo}" />
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
							<input type="hidden" id="chatroom-id" value="${chatroom.chatroomId}"/>
							<div class="chat-box chat-1 d-flex cursor" onmouseenter="deleteDNone('chat-opt-btn-1');" onmouseleave="addDNone('chat-opt-btn-1');" onclick="loadHistory(${chatroom.chatroomId});"><!-- openSocket(); -->
								<div class="user-img-wrap mr-8 w-20">
	
								</div>
								<div class="chat-prev-wrap w-80">
									<div class="prev-top mb-2">
										<c:if test="${chatroom.userAId eq sessionScope.userId}">
											<span class="chat-username font-13 weight-700 mr-3">${chatroom.userBNick}</span>
											<input type="hidden" id="target-user" value="${chatroom.userBId}" />
										</c:if>
										<c:if test="${chatroom.userAId ne sessionScope.userId}">
											<span class="chat-username font-13 weight-700 mr-3">${chatroom.userANick}</span>
											<input type="hidden" id="target-user" value="${chatroom.userAId}" />
										</c:if>
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
			<div class="right-wrap chat-after bg-white w-65">
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
							<div class="leave-chat p-10 bg-hover" onclick="leaveChat();">채팅방 나가기</div>
						</div>
					</div>
				</div>
				<div id="chat-content-wrap" class="chat-content-wrap">
					<div id="init-date" class="init-date mt-16">
						<input type="hidden" id="date" value="" />
					</div>
					<div id="chat-left"></div>
					<div id="chat-right"></div>
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
<script type="text/javascript">
	var userId = $("#user-id").val();
	var sockStat = $("#sock-status").val();

	connect();
	
	function connect() {
		sock = new SockJS("http://localhost:8080/buyorrent/echo");
	    sock.onopen = function() {
	        console.log('open');
	        $("#sock-status").val("1");
	    };
	    sock.onmessage = function(evt) {
    	 var data = evt.data;
    	   //console.log("data : " + data)
  		   var obj = JSON.parse(data)  	   
    	   //console.log("obj : " + obj['message'])
    	   var t = new Date().getTime();
    	   appendMsg(obj['message'], obj['messageSender'], t);
	    };
	    sock.onclose = function() {
	    	$("#sock-status").val("0");
	        console.log('close');
	    };
	}
	
	function send() {
		var msg = $("#chat-msg").val();
		
		if(msg != ""){
			message = {};
			message.message = $("#chat-msg").val()
		  	message.messageSender = $("#user-id").val()
		  	message.messageReceiver = $("#target-user").val()
		  	message.chatroomId = $("#chatroom-id").val()
		  	
		  	appendMsg(message.message, message.messageSender, new Date().getTime());
			$("#chat-content-wrap").scrollTop($("#chat-content-wrap")[0].scrollHeight);
		}

		sock.send(JSON.stringify(message));
		$("#chat-msg").val("");
	}
	
	function appendMsg(msg, sender, timestamp) {
		console.log(timestamp);
		if(msg == ''){
			return false;
		}else{
			//alert(msg);
			var time = null;
			if(timestamp == null) {
				time = new Date().getTime();
			} else {
				time = new Date(timestamp);
			}
			var hour = time.getHours();
			var min = time.getMinutes();
			var dayNight = '오전';
			
			if(hour > 12) {
				hour -= 12
				dayNight = '오후';
			}
			
			var str = '';
			if(sender == userId) {
				str = '<div class="chat plr-20 d-flex right justify-end mb-16">'; 
					str += '<div class="chat-time font-12 chat-sub mr-5">';
						str += '<span class="afternoon pr-2">' + dayNight + '</span>'
							str += '<span class="time">' + hour + ':' + min + '</span>';
					str += '</div>';
					str += '<div class="chat-main-wrap w-40">';
						str += '<div class="main">';
							str += '<p class="" id="msg-area">' + msg + '</p>';
						str += '</div>';
					str += '</div>';
				str += '</div>';
				
				/* $("#chat-right").append(str);	 */
			} else {
				str = '<div class="chat plr-20 d-flex left mb-16">';
					str += '<div class="chat-main-wrap w-40 mr-5">';
						str += '<div class="main">';
							str += '<p class="">' + msg + '</p>';
						str += '</div>';
					str += '</div>';
					str += '<div class="chat-time font-12 chat-sub">';
						str += '<span class="afternoon pr-2">' + dayNight + '</span>';
				 		str += '<span class="time">' + hour + ':' + min + '</span>';
					str += '</div>';
				str += '</div>';
			}
			$("#chat-right").append(str);

		 }
	}
	
	$('#btn-send').click(function() { 
		send(); 
		// 부분 새로 고침 왜 안되나옹..? ㅠㅠㅠ 
	});
	
	$("#chat-msg").keypress(function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if(keycode == '13') {
			alert(sockStat);
			if(sockStat == 0) {
				alert("dfsdf");
				connect();
			}
			
			send();
		}
	});
</script>
<script type="text/javascript">
	function appendDayDivider(timestamp) {
		var time = new Date(timestamp);
		var yr = time.getFullYear();
		var mon = time.getMonth() + 1;
		var date = time.getDate();
		
		var d = new Date($("#date").val());
		
		var str = '';
		if($("#date").val() == '') {
			str = '<div class="date font-13">' + yr + '년 ' + mon + '월 ' + date + '일</div>';
			
			$("#date").val(timestamp);
			$("#init-date").append(str);
		} else if(d.getFullYear() != yr || (d.getMonth() + 1) != mon || d.getDate() != date) {
			str = '<div class="add-date">';
				str += '<div class="date font-13">' + yr + '년 ' + mon + '월 ' + date + '일</div>';
			str += '</div>';
			
			$("#date").val(timestamp);
			$("#chat-right").append(str);	
		}
	}
	
	function loadHistory(chatroomId) {
		// alert("history");
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/chat/load_history",
			data: {chatroomId : chatroomId},
			success: function(msgs) {
				//console.log(msgs[0]);
				for(var i = 0; i < Object.keys(msgs).length; i++) {
					var msg = msgs[i];
					var time = new Date(msg.sendTime);
					var hour = time.getHours();
					var min = time.getMinutes();
					var dayNight = '오전'
					
					if(hour > 12) {
						hour -= 12
						dayNight = '오후';
					}
					
					appendDayDivider(time);
					appendMsg(msg.message, msg.messageSender, msg.sendTime);
					
				}
				$("#chat-content-wrap").scrollTop($("#chat-content-wrap")[0].scrollHeight);
			},
			error: function() {
				alert("대화 내역 조회 실패");
			}
		});
	}
</script>
<script>
	$(document).ready(function(){
		var chatNo = $("#chatroom-no").val();
		
		loadHistory(chatNo);
	});
</script>
</html>
