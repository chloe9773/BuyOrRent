<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/login.css" rel="stylesheet"/>
<body class="bg-gray-lighter">
	<div class="following-top-wrap w-100 bg-white">
		<div class="following-top-content w-50 m-center">
			<div class="following-top-left-wrap w-70">
				<div class="following-top-left">
					<%@ include file="/WEB-INF/views/include/logo.jsp" %>
				</div>
			</div>
		</div>
	</div>
	<div class="register-page-wrap w-100 mt-r-8">
		<div class="register-box-wrap w-50 bg-white m-center ptb-r-4">
			<div class="register-box w-80 m-center">
				<div class="register-title-wrap font-28 line-h mb-10">
					<span>이메일과 비밀번호<span class="">만으로</span></span>
					<br />
					<span>로고로고를 즐길 수 <span class="">있어요!</span></span>
				</div>
				<div class="register-box-content mb-r-2">
					<form id="join-info">
						<ul class="register-input-wrap mb-r-2">
							<li class="userid-wrap bg-white p-15 mb-10 border-r-6">
								<input type="text" class="" placeholder="logologo@example.com"/>
							</li>
							<div class="userid-desc d-flex font-13">
								<i class="fas fa-exclamation-circle pr-5"></i>
								<p class="t-left mb-16"></i>로그인,비밀번호 찾기에 사용되니 정확한 이메일을 입력해 주세요.</p>
							</div>
							<li class="userpw-wrap bg-white p-15 border-r-6 mb-10 d-flex justify-bw">
								<input type="password" class="passwd" placeholder="비밀번호 설정"/>
								<div class="t-right cursor">
									<span id="show-pw" class="show-pw" onclick="showHidePw('show');">show</span>
									<span id="hide-pw" class="hide-pw d-none" onclick="showHidePw('hide');">hide</span>
								</div>
							</li>
							<div class="userpw-desc d-flex font-13">
								<i class="fas fa-exclamation-circle pr-5"></i>
								<p class="t-left"></i>비밀번호는 8~20자 이내로 영문 대소문자,숫자,특수문자 중 3가지 이상 혼용하여 입력해 주세요.</p>
							</div>
						</ul>
						<div class="clear t-center cursor w-100 ptb-10 border-r-50 bg-btn weight-700" type="button" onclick="getUserInfo();">
							<span class="logo pr-5">로고로고</span>
							<span>회원가입</span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	// 회원가
	function getUserInfo() {
		var formData = $("#join-info").serialize();
		
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/join",
			data: formData,
			success: function(resData){
				alert(resData);
			},
			error: function(){
				alert("가입 실패 에러 에러에ㅓ");	
			}
		});
	}
</script>


