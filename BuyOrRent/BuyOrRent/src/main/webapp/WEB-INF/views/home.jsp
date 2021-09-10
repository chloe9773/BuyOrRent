<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>LOGO</title>
	<script src="https://kit.fontawesome.com/64f7ef32af.js" crossorigin="anonymous"></script>
	<link href="${path}/resources/css/common.css" rel="stylesheet"/> 	
</head>
<body>
	<div class="top">
		<div class="following-top">
			<div class="fllowing-top-left">
				<div class="following-top-logo">
					<a href="#home">LOGO</a>
				</div>
				<div class="following-top-search">
					<input type="text" class="input-search"/>
					<button type="" class=""><i class="fas fa-search"></i></button>
				</div>
			</div>
			<div class="following-top-right">
				<div class="following-top-menu">
					<span>메뉴</span>
					<i class="fas fa-angle-down"></i>
					<i class="fas fa-angle-up d-none"></i>
				</div>
				<div class="following-top-chat">실시간채팅</div>
			</div>
		</div>
	</div>
</body>
</html>
