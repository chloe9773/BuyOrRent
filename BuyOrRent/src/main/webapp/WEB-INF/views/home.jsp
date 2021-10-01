<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link href="${path}/css/reset.css" rel="stylesheet"/>
	<link href="${path}/css/common.css" rel="stylesheet"/>
	<link href="${path}/css/home.css" rel="stylesheet"/>
	<script src="https://kit.fontawesome.com/64f7ef32af.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/js/common.js"></script>
	<script type="text/javascript" src="${path}/js/home.js"></script>
	<script>
		const body = document.querySelector('body');
		const modal = document.querySelector('.modal');
		const btnOpenPopup = document.querySelector('.modal-open-btn');
  
		btnOpenPopup.addEventListener('click', () => {
		  modal.classList.toggle('show');
  
		  if (modal.classList.contains('show')) {
			body.style.overflow = 'hidden';
		  }
		});
  
		modal.addEventListener('click', (event) => {
		  if (event.target === modal) {
			modal.classList.toggle('show');
  
			if (!modal.classList.contains('show')) {
			  body.style.overflow = 'auto';
			}
		  }
		});
	  </script>
</head>
<body>
	<div class="following-top-wrap w-100 d-flex bg-white">
		<div class="following-top-content d-flex justify-bw w-50 m-center">
			<div class="following-top-left-wrap d-flex w-70">
				<div class="following-top-left mr-30">
					<a href="#">
						<div class="following-top-title weight-700 font-r-logo">로고로고</div>
					</a>
				</div>
				<div class="following-top-middle d-flex w-70">
					<div class="following-top-search-wrap d-flex border-1 border-r-6 p-5 w-100 bg-white">
						<input class="search w-95 gray-light"  placeholder="동네 이름, 물품명 등을 검색해보세요!"/>
						<div class="search-btn">
							<i class="fas fa-search gray-middle cursor"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="following-top-right d-flex">
				<div class="following-top-menu p-30 cursor pos-r" onclick="toggleMenu();">
					<span class="menu-title">메뉴</span>
					<i class="fas fa-angle-down"></i>
				</div>
				<ul class="following-menu-drop bg-gray-v-light border-r-6 pos-ab d-none p-24">
					<a href="login.html">
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
					<a href="rent.html"><u>인기대여품 더 보기</u></a>
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
					<a href="sell.html"><u>인기매물 더 보기</u></a>
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
	<footer class="footer bg-gray-middle white ptb-r-4">
		<div class="footer-wrap w-50 m-center">푸터푸터푸터푸터푸터푸터</div>
	</footer>
</body>
</html>

