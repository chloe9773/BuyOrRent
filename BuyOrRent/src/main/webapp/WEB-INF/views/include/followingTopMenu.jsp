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
		<%@ include file="/WEB-INF/views/include/topMenuRight.jsp" %>
	</div>
</div>