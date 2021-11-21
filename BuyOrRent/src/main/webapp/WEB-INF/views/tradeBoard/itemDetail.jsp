<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/trade.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<div class="item-wrap w-30 m-center pt-r-4 pb-r-2">
				<div class="item-img-wrap pt-r-4 pb-r-2">
					<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
				</div>
				<div class="item-user-wrap mb-10">
					<div class="user-info-wrap d-flex justify-bw">
						<div class="user-info-left d-flex">
							<div class="profile-img-wrap border-round mr-10">
								<i class="fas fa-user"></i>
							</div>
							<div class="user-info">
								<div class="username font-15 weight-700 cursor">백현</div>
								<div class="user-location font-13">서울 강서구 화곡본동</div>
							</div>
						</div>
						<div class="user-info-right d-flex align-end">
							<div class="temperature weight-700 pb-3">36.5°C</div>
						</div>
					</div>
					<div class="temp-desc t-right font-12 gray-middle">매너온도</div>
				</div>
				<hr />
				<div class="item-desc-wrap">
					<div class="item-title font-20 weight-500 mt-r-2 mb-4">접이식 자전거</div>
					<div class="item-category font-12 mb-4 gray-middle">
						<span class="category">스포츠/레저</span>
						<span>·</span>
						<span class="update-time">16시간전</span>
					</div>
				</div>
				<div class="item-price font-18 weight-500 mb-16">30,000원</div>
				<div class="item-description font-17 mb-16">
					거의 사용을 안하고 보관만 웅앵 그러면 왜 샀냐 어쩌고 저쩌고 길게 길게
				</div>
				<div class="item-response font-13 gray-middle">
					<span class="item-like">관심 21</span>
					<span>·</span>
					<span class="item-chat">채팅 41</span>
					<span>·</span>
					<span class="item-view">조회 111</span>
				</div>
				<div class="mark-item-wrap d-flex justify-bw">
					<div class="heart-wrap pt-5 cursor">
						<div class="heart-before" onclick="toggleHeart();"><i class="far fa-heart icon-color"></i></div>
						<div class="heart-after d-none" onclick="toggleHeart();"><i class="fas fa-heart highlight"></i></div>
					</div>
					<div class="to-chat-wrap">
						<div class="chat-box bg-highlight white t-center font-14 p-5 border-r-6 cursor" onclick="toChat(3, ${sessionScope.userId});">채팅으로 거래하기</div>
					</div>
				</div>
			</div>
			<hr class="w-30 m-center"/>
			<div class="hot-item-wrap w-30 m-center ptb-r-4">
				<div class="hot-item-top d-flex justify-bw pb-r-4">
					<div class="hot-item-title weight-700">
						로고로고 인기중고
					</div>
					<div class="hot-item-more font-15">
						<a href="#">더 구경하기</a>
					</div>
				</div>
				<div class="hot-item-content">
					<div class="item-row-1 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-30">
							<a href="item_detail.html">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
									</div>
									<div class="item-txt-wrap t-left mt-12">
										<div class="item-title font-16">접이식 자전거</div>
										<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
										<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
										<div class="item-response font-13 gray-middle">
											<span class="item-like">관심 21</span>
											<span>·</span>
											<span class="item-chat">채팅 41</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="rent-col-2 w-30 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
								</div>
								<div class="item-txt-wrap t-left mt-12">
									<div class="item-title font-16">접이식 자전거</div>
									<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
									<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
									<div class="item-response font-13 gray-middle">
										<span class="item-like">관심 21</span>
										<span>·</span>
										<span class="item-chat">채팅 41</span>
									</div>
								</div>
							</div>
						</div>
						<div class="rent-col-3 w-30 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
								</div>
								<div class="item-txt-wrap t-left mt-12">
									<div class="item-title font-16">접이식 자전거</div>
									<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
									<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
									<div class="item-response font-13 gray-middle">
										<span class="item-like">관심 21</span>
										<span>·</span>
										<span class="item-chat">채팅 41</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item-row-1 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-30">
							<a href="item_detail.html">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
									</div>
									<div class="item-txt-wrap t-left mt-12">
										<div class="item-title font-16">접이식 자전거</div>
										<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
										<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
										<div class="item-response font-13 gray-middle">
											<span class="item-like">관심 21</span>
											<span>·</span>
											<span class="item-chat">채팅 41</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="rent-col-2 w-30 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
								</div>
								<div class="item-txt-wrap t-left mt-12">
									<div class="item-title font-16">접이식 자전거</div>
									<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
									<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
									<div class="item-response font-13 gray-middle">
										<span class="item-like">관심 21</span>
										<span>·</span>
										<span class="item-chat">채팅 41</span>
									</div>
								</div>
							</div>
						</div>
						<div class="rent-col-3 w-30 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
								</div>
								<div class="item-txt-wrap t-left mt-12">
									<div class="item-title font-16">접이식 자전거</div>
									<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
									<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
									<div class="item-response font-13 gray-middle">
										<span class="item-like">관심 21</span>
										<span>·</span>
										<span class="item-chat">채팅 41</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
<script>
	function toggleHeart() {
		$(".heart-before").toggle();
		$(".heart-after").toggle();
	}
</script>
<script>
	function toChat(writerId, userId) {
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/chat",
			data: {
				messageReceiver : writerId,
				messageSender : userId
			},
			success: function(resData) {
				location.href = "${pageContext.request.contextPath}/chat/room?chatroom_id=" + resData.chatroomId;
			},
			error: function() {
				console.log("채팅방 이동 실패");
			}
		});
	}
</script>