<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/chat.css" rel="stylesheet"/>
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
					<div class="chatroom-wrap">
						<div class="chat-box chat-1 d-flex cursor" onmouseenter="deleteDNone('chat-opt-btn-1');" onmouseleave="addDNone('chat-opt-btn-1');" onclick="enterChat();">
							<div class="user-img-wrap mr-8 w-20">

							</div>
							<div class="chat-prev-wrap w-80">
								<div class="prev-top mb-2">
									<span class="chat-username font-13 weight-700 mr-3">백현이</span>
									<span class="userposition font-12 chat-sub mr-3">백현동</span>
									<span class="chat-sub font-12 mr-3">·</span>
									<span class="time font-12 chat-sub">09월 29일</span>
								</div>
								<div class="prev-bottom">
									<p class="prev-content font-13">백현이님, 백현동 근처에서 쉽고 편하게...어쩌구</p>
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
						<div class="chat-box chat-2 d-flex">
							<div class="user-img-wrap mr-8 w-20">

							</div>
							<div class="chat-prev-wrap w-80">
								<div class="prev-top mb-2">
									<span class="username font-13 weight-700 mr-3">백현이</span>
									<span class="userposition font-12 chat-sub mr-3">백현동</span>
									<span class="chat-sub font-12 mr-3">·</span>
									<span class="time font-12 chat-sub">09월 29일</span>
								</div>
								<div class="prev-bottom">
									<p class="prev-content font-13">백현이님, 백현동 근처에서 쉽고 편하게...어쩌구</p>
								</div>
							</div>
						</div>
						<div class="chat-box chat-2 d-flex">
							<div class="user-img-wrap mr-8 w-20">

							</div>
							<div class="chat-prev-wrap w-80">
								<div class="prev-top mb-2">
									<span class="username font-13 weight-700 mr-3">백현이</span>
									<span class="userposition font-12 chat-sub mr-3">백현동</span>
									<span class="chat-sub font-12 mr-3">·</span>
									<span class="time font-12 chat-sub">09월 29일</span>
								</div>
								<div class="prev-bottom">
									<p class="prev-content font-13">백현이님, 백현동 근처에서 쉽고 편하게...어쩌구</p>
								</div>
							</div>
						</div>
						<div class="chat-box chat-2 d-flex">
							<div class="user-img-wrap mr-8 w-20">

							</div>
							<div class="chat-prev-wrap w-80">
								<div class="prev-top mb-2">
									<span class="username font-13 weight-700 mr-3">백현이</span>
									<span class="userposition font-12 chat-sub mr-3">백현동</span>
									<span class="chat-sub font-12 mr-3">·</span>
									<span class="time font-12 chat-sub">09월 29일</span>
								</div>
								<div class="prev-bottom">
									<p class="prev-content font-13">백현이님, 백현동 근처에서 쉽고 편하게...어쩌구</p>
								</div>
							</div>
						</div>
						<div class="chat-box chat-2 d-flex">
							<div class="user-img-wrap mr-8 w-20">

							</div>
							<div class="chat-prev-wrap w-80">
								<div class="prev-top mb-2">
									<span class="username font-13 weight-700 mr-3">백현이</span>
									<span class="userposition font-12 chat-sub mr-3">백현동</span>
									<span class="chat-sub font-12 mr-3">·</span>
									<span class="time font-12 chat-sub">09월 29일</span>
								</div>
								<div class="prev-bottom">
									<p class="prev-content font-13">백현이님, 백현동 근처에서 쉽고 편하게...어쩌구</p>
								</div>
							</div>
						</div>
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
								<p class="">채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용 채팅 내용</p>
							</div>
						</div>
					</div>
				</div>
				<div class="chat-after-bottom">
					<div class="chat-input-wrap border-1 p-10 bg-white m-16">
						<textarea class="textarea" maxlength="1000" placeholder="메세지를 입력해주세요"></textarea>
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
								<div class="submit-wrap">
									<button class="bg-highlight white">전송</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
