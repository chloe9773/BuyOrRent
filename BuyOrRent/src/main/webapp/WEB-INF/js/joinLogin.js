// 이메일 주소 형식 체크
function chkUsername() {
	var username = $("#username").val();

	// 이메일 검증 정규식 
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	if (!username.match(regExp)) { // 이메일 형식이 잘못된 경우 
		$(".userid-desc").addClass("d-none");
		$(".userid-desc-wrong").removeClass("d-none");
	} else {
		$(".userid-desc").removeClass("d-none");
		$(".userid-desc-wrong").addClass("d-none");
	}
}

// 패스워드 형식 체크
function chkPassword() {
	var password = $("#password").val();

	// 비밀번호 검증 정규식 
	var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,20}$/;

	if (!password.match(regExp)) { // 비밀번호 길이 / 형식이 잘못된 경우 
		$(".userpw-desc").addClass("highlight");
	} else {
		$(".userpw-desc").removeClass("highlight");
	}
}

// 비밀번호 display 방식 
function showHidePw(choice) {
	if (choice == 'show') {
		$('#show-pw').addClass('d-none');
		$('#hide-pw').removeClass('d-none');
		$('#password').prop('type', 'text');
	} else {
		$('#hide-pw').addClass('d-none');
		$('#show-pw').removeClass('d-none');
		$('#password').prop('type', 'password');
	}
}