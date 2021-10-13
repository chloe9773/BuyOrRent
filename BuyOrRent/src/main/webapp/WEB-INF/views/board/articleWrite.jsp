<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/article.css" rel="stylesheet"/>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script>
	window.onload = function(){
       ck = CKEDITOR.replace("editor");
    };
</script>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<div class="board-wrap w-50 m-center pt-r-8">
				<div class="board-top">
					<a href="${path}/board/freeboard">
						<h1 class="mb-40">자유게시판</h1>
					</a>
				</div>
				<hr class="mb-40"/>
				<div class="board-content">
					<div class="title-wrap pb-10 mb-10">
						<input type="text" class="title font-20" maxlength="" autocomplete="off" placeholder="제목을 입력하세요."/>
					</div>
					<div class="editor">
						<textarea name="content" id="editor"></textarea>
					</div>
					<div class="btn-grp d-flex justify-bw pb-r-4">
						<div class="btn-grp-left">
							<a href="freeboard.html">
								<button class="cancel bg-white">취소</button>
							</a>
						</div>
						<div class="btn-grp-right">
							<button class="submit bg-highlight white">등록</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer bg-gray-middle white ptb-r-4">
		<div class="footer-wrap w-50 m-center">푸터푸터푸터푸터푸터푸터</div>
	</footer>
</body>
</html>

