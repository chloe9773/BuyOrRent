<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
	<div class="following-top-wrap w-100 d-flex bg-white">
		<div class="following-top-content d-flex justify-bw w-50 m-center">
			<div class="following-top-left-wrap d-flex w-70">
				<div class="following-top-left mr-30">
					<a href="home.html">
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
					<a href="mypage.html" class="d-none">
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
					<div class="chat-title border-1 border-r-6 cursor">실시간 채팅</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<hr class="w-50 m-center"/>
			<div class="hot-item-wrap w-50 m-center pt-r-8">
				<div class="hot-item-top t-center">
					<h1 class="mb-40">중고거래 인기매물</h1>
					<div class="mb-30 t-right">
						<select name="region1" id="region1" onchange="changeRegion('r1', this.value);" class="location-select">
							<option value="">지역을 선택하세요</option>
							<option value="서울특별시">서울특별시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="인천광역시">인천광역시</option>
							<option value="광주광역시">광주광역시</option>
							<option value="대전광역시">대전광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="세종특별자치시">세종특별자치시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
							<option value="경상북도">경상북도</option>
							<option value="경상남도">경상남도</option>
							<option value="제주특별자치도">제주특별자치도</option>
						</select>
						<select name="region2" id="region2" disabled="disabled" onchange="changeRegion('r2', this.value);" class="location-select">
							<option value="">동네를 선택하세요</option>
							<option value="서울특별시">서울특별시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="인천광역시">인천광역시</option>
							<option value="광주광역시">광주광역시</option>
							<option value="대전광역시">대전광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="세종특별자치시">세종특별자치시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
							<option value="경상북도">경상북도</option>
							<option value="경상남도">경상남도</option>
							<option value="제주특별자치도">제주특별자치도</option>
						</select>
						<select name="region3" id="region3" onchange="changeRegion('r3', this.value);" class="location-select d-none">
							<option value="">동을 선택하세요</option>
							<option value="서울특별시">서울특별시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="인천광역시">인천광역시</option>
							<option value="광주광역시">광주광역시</option>
							<option value="대전광역시">대전광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="세종특별자치시">세종특별자치시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
							<option value="경상북도">경상북도</option>
							<option value="경상남도">경상남도</option>
							<option value="제주특별자치도">제주특별자치도</option>
						</select>
					</div>
				</div>
				<div class="hot-item-content">
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
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
						<div class="rent-col-1 w-20">
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
						<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
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
						<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
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
						<div class="rent-col-1 w-20">
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
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="follow-navigation icon-color">
		<div class="to-top">
			<a href="#" title="위로이동"><i class="fas fa-chevron-circle-up"></i></a>
		</div>
		<div class="to-write">
			<a href="item-upload.html" title="중고거래"><i class="fas fa-plus-circle"></i></a>
		</div>
		<div class="to-bottom">
			<a href="#footer" title="아래로이동"><i class="fas fa-chevron-circle-down"></i></a>
		</div>
	</div>
	<footer id="footer" class="footer bg-gray-middle white ptb-r-4">
		<div class="footer-wrap w-50 m-center">푸터푸터푸터푸터푸터푸터</div>
	</footer>
</body>
</html>
