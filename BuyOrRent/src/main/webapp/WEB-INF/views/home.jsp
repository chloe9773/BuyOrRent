<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
	<title>Home</title>
	<link href="${path}/resources/css/common.css" rel="stylesheet"/>
	<script src="https://kit.fontawesome.com/64f7ef32af.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="following-top">
		<div class="following-top-wrap width-100 d-flex justify-space-bw">
			<div class="following-top-left">
				<div class="following-top-logo">
					<p>LOGO</p>
				</div>
				<div class="following-top-logo">
					<div class="following-top-search">
						<input type="text" class="input-search" />
						<button class="btn-icon">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="following-top-right">
				<div class="following-top-menu d-flex justify-content-bw">
					<span class="menu-title">메뉴</span>
					<i class="fas fa-angle-down"></i>
					<i class="fas fa-angle-up d-none"></i>
				</div>
				<div class="following-top-chat">
					<span class="chat-title">실시간 채팅</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
