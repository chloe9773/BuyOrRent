<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="following-top-wrap w-100 d-flex bg-white">
	<div class="following-top-content d-flex justify-bw w-50 m-center">
		<div class="following-top-left-wrap d-flex w-70">
			<div class="following-top-left mr-30">
				<div class="following-top-title weight-700 font-r-logo">
					<%@ include file="/WEB-INF/views/include/logo.jsp" %>
				</div>
			</div>
			<div class="following-top-middle d-flex w-70">
				<div
					class="following-top-search-wrap d-flex border-1 border-r-6 p-5 w-100 bg-white">
					<input class="search w-95 gray-light"
						placeholder="동네 이름, 물품명 등을 검색해보세요!" />
					<div class="search-btn">
						<i class="fas fa-search gray-middle cursor"></i>
					</div>
				</div>
			</div>
		</div>
		<div class="following-top-right d-flex">
			<div class="following-top-menu p-30 cursor pos-r"
				onclick="toggleMenu();">
				<span class="menu-title">메뉴</span> <i class="fas fa-angle-down"></i>
			</div>
			<ul
				class="following-menu-drop bg-gray-v-light border-r-6 pos-ab d-none p-24">
				<a href="${path}/login">
					<li class="pb-12"><i class="fas fa-sign-in-alt mr-10"></i>로그인</li>
				</a>
				<a href="mypage.html" class=""> <!-- d-none -->
					<li class="pb-12"><i class="fas fa-address-card mr-10"></i>마이페이지</li>
				</a>
				<a href="rent.html">
					<li class="pb-12"><i class="fas fa-truck-loading mr-10"></i>대여</li>
				</a>
				<a href="sell.html">
					<li class="pb-12"><i class="fas fa-hand-holding-usd mr-10"></i>중고거래</li>
				</a>
				<a href="freeboard.html">
					<li class="pb-12"><i class="fas fa-comments mr-10"></i>자유게시판</li>
				</a>
				<a href="#" class="d-none">
					<li class="pb-12"><i class="fas fa-sign-out-alt mr-10"></i>로그아웃</li>
				</a>
			</ul>
			<div class="following-top-chat">
				<a href="chat.html">
					<div class="chat-title border-1 border-r-6 cursor">실시간 채팅</div>
				</a>
			</div>
		</div>
	</div>
</div>