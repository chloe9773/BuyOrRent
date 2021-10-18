<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/article.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<input type="hidden" id="artiId" value="${article.articleId}" />
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<div class="board-wrap w-50 m-center pt-r-8">
				<div class="board-top">
					<a href="${path}/board?board_id=1">
						<h1 class="mb-40">${boardName}</h1>
					</a>
				</div>
				<hr class="mb-40"/>
				<div class="board-content">
					<div class="article-btn-grp d-flex justify-bw btn-bottom pb-10 mb-30">
						<div class="btn-left">
							<button class="btn-to-article">
								<a href="freeboard.html">목록</a>
							</button>
							<button class="btn-to-previos">
								<a href="#">이전글</a>
							</button>
							<!-- 첫 게시글에는 보이지 않게 -->
							<button class="btn-to-previos">
								<a href="#">다음글</a>
							</button>
						</div>
						<div class="btn-right">
							<button class="btn-to-reply">
								<a href="#">답글</a>
							</button>
							<!-- 게시글 수정 가능자는 활성화 되어 보이게 -->
							<c:if test="${sessionScope.username eq article.author}">
								<button class="btn-to-modify">
									<a href="${path}/article/article-modify?article_id=${article.articleId}">수정</a>
								</button>
								<button id="deleteBtn" class="btn-to-delete highlight">
									삭제
								</button>
							</c:if>
							<c:if test="${sessionScope.username ne article.author}">
								<button class="btn-to-modify" disabled>
									<a href="#">수정</a>
								</button>
							</c:if>
						</div>
					</div>
					<div class="board-main">
						<div class="board-main-top">
							<div class="title font-20 mb-5">${article.title}</div>
							<div class="title-sub">
								<span class="title-sub-item">${article.author}</span>
								<span class="title-sub-item d-none">추천 0</span>
								<span class="title-sub-item">조회 ${article.hit}</span>
								<span class="title-sub-item">${fn:substring(article.uploadDate,2,16)}</span>
								<span class="title-sub-item">댓글
									<span class="highlight">
										<a href="#comment-box">${article.commentTotal}</a>
									</span>
								</span>
							</div>
						</div>
						<div class="board-main-middle pt-r-4">
							<div class="font-14">${article.content}</div>
							<div class="mt-r-2 mb-30">
								<button onclick="cmtBoxToggle();">
									<span>댓글</span>
									<span class="highlight">${article.commentTotal}</span>
								</button>
								<button class="d-none">
									<span>추천해요</span>
									<span class="highlight">0</span>
								</button>
							</div>
						</div>
						<div id="comment-box" class="board-main-bottom bg-gray-v-light p-24 mb-r-4">
							<div id="comments-wrap" class="comments-wrap">
								<div class="comment-wrap mb-30">
									<div class="comment-1 mb-10">
										<div class="comment-info font-13 d-flex justify-bw mb-5">
											<div class="comment-info-left">
												<span class="userid font-14 mr-5">유저명임</span>
												<span class="icon-color">21.09.24 12:48</span>
											</div>
											<div class="comment-info-right icon-color ">
												<span class="mr-5">답글</span>
												<!-- 수정 권한 없는 유저들에게는 신고 버튼으로 -->
												<span class="opt-open-1" onclick="optToggle(1);"><i class="fas fa-ellipsis-v cursor"></i></span>
												<div class="opt opt-1 d-none">
													<div class="opt-mod">수정</div>
													<div class="opt-delete">삭제</div>
												</div>
											</div>
										</div>
										<div class="comment font-13 pb-10">
											<p>코멘트 코멘트 코멘트 코멘트</p>
										</div>
									</div>
									<div class="comment-2 mb-10">
										<div class="comment-info font-13 d-flex justify-bw mb-5">
											<div class="comment-info-left">
												<span class="userid font-14 mr-5">유저명임</span>
												<span class="icon-color">21.09.24 12:48</span>
											</div>
											<div class="comment-info-right icon-color ">
												<span class="comment-reply comment-reply-open-2 mr-5 cursor" onclick="replyCommentOpen(2);">답글</span>
												<span class="comment-reply comment-reply-close-2 mr-5 cursor d-none" onclick="replyCommentClose(2);">답글 접기</span>
												<span class="opt-open-2" onclick="optToggle(2);"><i class="fas fa-ellipsis-v cursor"></i></span>
												<div class="opt opt-2 d-none">
													<div class="opt-mod">수정</div>
													<div class="opt-delete">삭제</div>
												</div>
											</div>
										</div>
										<div class="comment font-13 pb-10">
											<p class="w-80">코멘트 코멘트 코멘트 코멘트</p>
										</div>
									</div>
								</div>
							</div>
							<div class="paging icon-color mb-30 t-center font-13">
								<span class="page-btn to-first">
									<i class="fas fa-angle-double-left"></i>
								</span>
								<span class="page-btn to-left">
									<i class="fas fa-angle-left"></i>
								</span>
								<span class="page-btn active">1</span>
								<span class="page-btn">2</span>
								<span class="page-btn">3</span>
								<span class="page-btn">4</span>
								<span class="page-btn">5</span>
								<span class="page-btn">6</span>
								<span class="page-btn">7</span>
								<span class="page-btn">8</span>
								<span class="page-btn">9</span>
								<span class="page-btn">10</span>
								<span class="page-btn to-right">
									<i class="fas fa-angle-right"></i>
								</span>
								<span class="page-btn to-left">
									<i class="fas fa-angle-double-right"></i>
								</span>
							</div>
							<div class="comment-edit-wrap border-1 p-5 bg-white">
								<form id="comment-form">
									<input type="hidden" name="aid" value="${article.articleId}"/>
									<input type="hidden" id="author" name="author" value="${sessionScope.username}" />
									<textarea class="textarea" id="comment_content" name="cContent" maxlength="600" placeholder="인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요." onchange="countChar();"></textarea>
									<div class="comment-sub-item-wrap d-flex justify-bw">
										<div class="comment-sub-item-left table">
											<input type="file" class="fileUpload d-none"/>
											<span class="cursor table-cell" onclick="fileUpload();">
												<i class="far fa-image icon-color"></i>
											</span>
										</div>
										<div class="comment-sub-item-right d-flex">
											<div class="comment-count font-11 mr-10 table" style="display: table;">
												<span class="comment-total table-cell">0</span>
												<span class="gray table-cell">/</span>
												<span class="comment-max table-cell">600</span>
											</div>
											<div class="submit-wrap">
												<button type="button" id="commentSubmitBtn" class="bg-highlight white">등록</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="to-top font-13 icon-color t-right">
					<a href="#">
						<i class="fas fa-angle-up"></i>
						<span>맨위로</span>
					</a>
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
	 var content = CKEDITOR.instances.editor.getData();
	 var title = $("#title").val();
	 
	 if(title.length == 0 || (title.length == 0 && content.length == 0)) {
		 alert("제목을 입력해주세요.");
		 $("#title").focus();
	 } else if(content.length == 0) {
		 alert("내용을 입력해주세요.");
		 CKEDITOR.instances.editor.focus();
	 } else {
		 var formData = {
			title : title,
			author : $("#author").val(),
			boardId : $("#boardId").val(),
			articleType: $("#articleType").val(),
			content: content
		 };
		 
		 $.ajax({
			 type: "POST",
				url: "${pageContext.request.contextPath}/article/article-write",
				data: formData,
				success: function(resData) {
					if(resData != "success") {
						alert("w재시도 안내멘트트");
					} else {
						//var tmp = "${pageContext.request.contextPath}/board?board_id=" + document.getElementById("boardId").value;
						//console.log(tmp);
						location.href = "${pageContext.request.contextPath}/board?board_id=" + document.getElementById("boardId").value;
					}
				},
				error: function() {
					alert("작성 실패 에러 에러에ㅓ");
				}
		 });	 
	 }
 }
</script>
<script>
$("#back").click(function(e){
	history.back();
	e.preventDefault();
});

$("#deleteBtn").click(function(e){
	if(confirm("정말로 삭제하시겠습니까?")) {
		var id = $("#artiId").val();
		var url = "${path}/article/article-delete?" + id;
		
		$.ajax({
			 type: "POST",
				url: url,
				data: {
					articleId : id
				},
				success: function(resData) {
					location.href = "${path}/board?board_id=" + resData;
				},
				error: function() {
					alert("작성 실패 에러 에러에ㅓ");
				}
		 });
	}
});

$("#commentSubmitBtn").click(function(e){
	var content = $("#comment_content").val();
	
	if(content.length > 0) {
		var formData = $("#comment-form").serialize();
		
		$.ajax({
			 type: "POST",
				url: "${pageContext.request.contextPath}/article/comment-write",
				data: formData,
				success: function(resData) {
					if(resData != "success") {
						alert("w재시도 안내멘트트");
					} else {
						$("textarea#comment_content").attr("placeholder", "인터넷은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요.");
						// $("#comments-wrap").load(window.location.href + "#comments-wrap"); // 코멘트 박스 새로고침 
					}
				},
				error: function() {
					alert("작성 실패 에러 에러에ㅓ");
				}
		});
	} else {
		alert("내용을 입력해주세요.");
		$("#comment_content").focus();
	}
});
</script>