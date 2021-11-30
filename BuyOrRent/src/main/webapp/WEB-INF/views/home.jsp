<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/home.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenu.jsp" %>
	<c:if test = "${sessionScope.name == null}">
		<span>${sessionScope.username}</span>
	</c:if>
	<div class="main-content w-100">
		<div class="section-wrap bg-cream ptb-r-4">
			<div class="section-1 w-50 m-center d-flex justify-bw ptb-r-4">
				<div class="main-section1-left pr-30">
					<h1>크고 장황한 어쩌구 저쩌구</h1>
					<p>적당히 길고 장황한 설명 어쩌구 저쩌고</p>
				</div>
				<div class="main-section1-right w-60">이미지 이미지 이미지 이미지 이미지 ㅍ ㅍ ㅍ ㅍ</div>
			</div>
		</div>
		<div class="section-wrap bg-white">
			<div class="section-2 w-50 m-center t-center ptb-r-4">
				<h2 class="mb-r-4 font-40">인기 대여 품목</h2>
				<div class="item-wrap w-100">
					<div class="item-row-1 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-20">
							<a href="item_detail.html">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
					<div class="item-row-2 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
				<div class="rent-hot-more weight-700 cursor">
					<a href="${path}/trade?board_id=3"><u>인기대여품 더 보기</u></a>
				</div>
			</div>
		</div>
		<div class="section-wrap bg-gray-v-light">
			<div class="section-3 w-50 m-center t-center ptb-r-4">
				<h2 class="mb-r-4 font-40">중고거래 인기매물</h2>
				<div class="item-wrap w-100">
					<div class="item-row-1 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
					<div class="item-row-2 d-flex w-100 justify-bw mb-r-4">
						<div class="rent-col-1 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
							<div class="item-wrap w-100">
								<div class="item-img-wrap">
									<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
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
				<div class="rent-hot-more weight-700 cursor">
					<a href="${path}/trade?board_id=2"><u>인기매물 더 보기</u></a>
				</div>
			</div>
		</div>
	</div>
	<div id="home-side-menu" class="follow-navigation d-none">
		<div class="modal-opt-btn d-none">
			<div class="modal-opt-rent">
				<a href="item-upload.html">
					<span class="modal-opt">대여 글쓰기</span>
					<i class="fas fa-truck-loading"></i>
				</a>
			</div>
			<div class="modal-opt-sell">
				<a href="item-upload.html">
					<span class="modal-opt">중고거래 글쓰기</span>
					<i class="fas fa-hand-holding-usd"></i>
				</a>
			</div>
		</div>
		<div class="to-write modal-open-btn">
			<span id="opt-btn-open">
				<i class="fas fa-plus-circle" onclick="modalLayer(true);"></i>
			</span>
			<span id="opt-btn-close" class="d-none">
				<i class="fas fa-minus btn-color" onclick="modalLayer(false);"></i>
			</span>
		</div>
	</div>
	<div id="modal" class="modal"></div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>

