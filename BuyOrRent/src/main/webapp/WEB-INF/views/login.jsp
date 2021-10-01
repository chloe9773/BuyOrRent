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
	<link href="${path}/css/login.css" rel="stylesheet"/>
	<script src="https://kit.fontawesome.com/64f7ef32af.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/js/common.js"></script>
</head>
<body class="bg-gray-lighter">
	<div class="login-page-wrap w-100">
		<div class="login-box-wrap w-50 bg-white m-center pb-30p">
			<div class="login-box w-80 m-center pt-30p">
				<div class="logo-wrap t-center mb-30">
					<a href="${path}">
						<p class="logo">로고로고</p>
					</a>
				</div>
				<div class="login-extra cursor font-15 t-right mb-10">
					<i class="fas fa-undo-alt"></i>
					<span>다른 방법으로 로그인</span> <!-- 카카오 로그인 추가 -->
				</div>
				<div class="login-info-wrap mb-r-4">
					<form class="w-100">
						<div class="login-input-wrap mb-5">
							<input type="text" class="login-input userid" placeholder="아이디"/>
							<i class="fas fa-times-circle font-20 gray-darker userid-erase-btn d-hidden" onclick="inputReset('userid');"></i>
						</div>
						<div class="login-input-wrap mb-10">
							<input type="password" class="login-input userpw" placeholder="바밀번호"/>
							<i class="fas fa-times-circle font-20 gray-darker userpw-erase-btn d-hidden" onclick="inputReset('userpw');"></i>
						</div>
						<button class="login-submit-btn mb-10">로그인</button>
					</form>
					<div class="remember-id-wrap">
						<input type="checkbox" class="remember-id" />
						<span class="font-15 v-top">아이디 기억하기</span>
					</div>					
				</div>
				<div class="login-help-wrap font-15 t-center">
					<span class="find-userid">
						<a href="#">아이디 찾기</a>
					</span>
					<span class="mlr-10 icon-color">|</span>
					<span class="find-userpw">
						<a href="#">비밀번호 찾기</a>
					</span>
					<span class="mlr-10 icon-color">|</span>
					<span class="join-member">
						<a href="join.html">회원가입</a>
					</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


