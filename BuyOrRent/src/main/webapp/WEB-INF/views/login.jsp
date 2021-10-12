<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/login.css" rel="stylesheet"/>
<body class="bg-gray-lighter">
	<div class="login-page-wrap w-100">
		<div class="login-box-wrap w-50 bg-white m-center pb-30p">
			<div class="login-box w-80 m-center pt-30p">
				<div class="logo-wrap t-center mb-30">
					<%@ include file="/WEB-INF/views/include/logo.jsp" %>
				</div>
				<div class="login-extra cursor font-15 t-right mb-10">
					<i class="fas fa-undo-alt"></i>
					<span>다른 방법으로 로그인</span> <!-- 카카오 로그인 추가 -->
				</div>
				<div class="login-info-wrap mb-r-4">
					<form id="login-info" class="w-100">
						<div class="login-error-wrap mb-5 d-flex font-13 highlight d-none">
							<i class="fas fa-exclamation-circle pr-5"></i>
							<p class="t-left"></i>로그인 정보가 올바르지 않습니다.</p>
						</div>
						<div class="login-input-wrap mb-5">
							<input type="text" name="username" class="login-input userid" placeholder="아이디" maxlength="64" tabindex="1"/>
							<i class="fas fa-times-circle font-20 gray-darker userid-erase-btn d-hidden" onclick="inputReset('userid');"></i>
						</div>
						<div class="login-input-wrap mb-10">
							<input type="password" name="password" class="login-input userpw" placeholder="바밀번호" maxlength="20" tabindex="2"/>
							<i class="fas fa-times-circle font-20 gray-darker userpw-erase-btn d-hidden" onclick="inputReset('userpw');"></i>
						</div>
						<button type="button" class="login-submit-btn mb-10" onclick="login();">로그인</button>
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
						<a href="${path}/join">회원가입</a>
					</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	function login() {
		var username = $(".userid").val();
		var password = $(".userpw").val();
		
		//유저명 비밀번호칸에 인풋값이 있는 경우 
		if(username.length > 0 && password.length > 0) {
			var formData = $("#login-info").serialize();
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/login",
				data: formData,
				success: function(resData) {
					if (resData == "failure") {
						$(".login-error-wrap").removeClass("d-none");
					} else {
						location.href = "${pageContext.request.contextPath}";
					}
				},
				error: function() {
					alert("로긴 실패 에러 에러에ㅓ");
				}
			});	
		} else {
			if(username.length == 0) $(".userid").focus();
			else if(password.length == 0) $(".userpw").focus();
			else $(".userid").focus();
		}
	}
</script>


