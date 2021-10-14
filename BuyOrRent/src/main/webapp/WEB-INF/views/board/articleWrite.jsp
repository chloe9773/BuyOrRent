<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/article.css" rel="stylesheet"/>
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
					<form id="article">
						<div class="title-wrap pb-10 mb-10">
							<input type="text" name="title" class="title font-20" maxlength="" autocomplete="off" placeholder="제목을 입력하세요."/>
							<input type="hidden" name="username" value="" />
						</div>
						<div class="editor mb-10">
							<textarea name="content" id="editor"></textarea>
						</div>
						<div class="btn-grp d-flex justify-bw pb-r-4">
							<div class="btn-grp-left">
								<a href="${path}/board/freeboard">
									<button class="cancel bg-white">취소</button>
								</a>
							</div>
							<div class="btn-grp-right">
								<button type="button" class="submit bg-highlight white" onclick="submitArticle();">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer bg-gray-middle white ptb-r-4">
		<div class="footer-wrap w-50 m-center">푸터푸터푸터푸터푸터푸터</div>
	</footer>
</body>
</html>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script>
	window.onload = function(){
       ck = CKEDITOR.replace("editor");
    };
</script>
<script>
 function submitArticle() {
	 alert("alerrr");
 }
</script>
