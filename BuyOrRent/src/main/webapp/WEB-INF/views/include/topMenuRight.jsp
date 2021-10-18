<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="following-top-right d-flex">
	<div class="following-top-menu p-30 cursor pos-r"
		onclick="toggleMenu();">
		<span class="menu-title">메뉴</span> <i class="fas fa-angle-down"></i>
	</div>
	<ul class="following-menu-drop bg-gray-v-light border-r-6 pos-ab d-none p-24">
		<c:if test = "${sessionScope.username == null}">
			<a href="${path}/login">
				<li class="pb-12"><i class="fas fa-sign-in-alt mr-10"></i>로그인</li>
			</a>
		</c:if>
		<a href="mypage.html" class=""> <!-- d-none -->
			<li class="pb-12"><i class="fas fa-address-card mr-10"></i>마이페이지</li>
		</a>
		<a href="rent.html">
			<li class="pb-12"><i class="fas fa-truck-loading mr-10"></i>대여</li>
		</a>
		<a href="sell.html">
			<li class="pb-12"><i class="fas fa-hand-holding-usd mr-10"></i>중고거래</li>
		</a>
		<a href="${path}/board?board_id=1">
			<li class="pb-12"><i class="fas fa-comments mr-10"></i>자유게시판</li>
		</a>
		<c:if test = "${sessionScope.username != null}">
			<span id="logout" class="cursor">
				<li class="pb-12"><i class="fas fa-sign-out-alt mr-10"></i>로그아웃</li>
			</span>
		</c:if>
	</ul>
	<div class="following-top-chat">
		<a href="${path}/chat">
			<div class="chat-title border-1 border-r-6 cursor">실시간 채팅</div>
		</a>
	</div>
</div>
<script>
/* 로그아웃 */
$(function(){
	$("#logout").click(function(){
		$.ajax({
			url : "${path}/logout",
			type : "POST",
			data : "",
			success : function(resData){
				alert("로그아웃 되었습니다.");
				window.location.href = "${path}";
			},
			error : function(){
				alert("시스템 오류");
			}
		});
	});
});
</script>