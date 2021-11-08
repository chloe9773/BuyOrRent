<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
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
					<c:forEach var="i" begin="1" end="2">
						<div class="item-row-${i} d-flex w-100 justify-bw mb-r-4">
							<div class="rent-col-1 w-20">
								<a href="${path}/trade/item-detail">
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
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class="follow-navigation icon-color">
		<div class="to-top">
			<a href="#" title="위로이동"><i class="fas fa-chevron-circle-up"></i></a>
		</div>
		<div class="to-write">
			<a href="${path}/trade/article/item-upload?board_id=3" title="중고거래"><i class="fas fa-plus-circle"></i></a>
		</div>
		<div class="to-bottom">
			<a href="#footer" title="아래로이동"><i class="fas fa-chevron-circle-down"></i></a>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
