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
					<a href="${path}/board?board_id=1">
						<h1 class="mb-40">${boardName}</h1>
					</a>
				</div>
				<hr class="mb-40"/>
				<div class="board-content">
					<form id="article">
						<div class="title-wrap pb-10 mb-10">
							<c:if test="${article.articleId eq null}">
								<input type="text" id="title" name="title" class="title font-20" maxlength="200" autocomplete="off" placeholder="제목을 입력하세요."/>
							</c:if>
							<c:if test="${article.articleId ne null}">
								<input type="hidden" id="artiId" name="artiId" value="${article.articleId}"/>
								<input type="text" id="title" name="title" class="title font-20" maxlength="200" autocomplete="off" value="${article.title}"/>
							</c:if>
							<input type="hidden" id="author" name="author" value="${sessionScope.username}" />
							<input type="hidden" id="boardId" name="boardId" value="${boardId}" />
							<c:if test="${sessionScope.level == 1}"> <!-- auth로 변경 -->
							    <input type="hidden" id="articleType" name="articleType" value="general" />
							</c:if>
						</div>
						<div class="editor mb-10">
							<textarea name="content" id="editor">
								<c:if test="${article.articleId ne null}">${article.content}</c:if>
							</textarea>
						</div>
						<div class="btn-grp d-flex justify-bw pb-r-4">
							<div class="btn-grp-left">
								<a href="#" id="back">
									<button type="button" class="cancel bg-white">취소</button>
								</a>
							</div>
							<div class="btn-grp-right">
								<c:if test="${article.articleId ne null}">
									<button type="button" class="submit bg-highlight white" onclick="submitArticle(2);">등록</button>
								</c:if>
								<c:if test="${article.articleId eq null}">
									<button type="button" class="submit bg-highlight white" onclick="submitArticle(1);">등록</button>
								</c:if>
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
 function submitArticle(type) {
	 var content = CKEDITOR.instances.editor.getData();
	 var title = $("#title").val();
	 
	 var url = "";
	 var id = "";
	 if(type == 1) {
		 url = "${pageContext.request.contextPath}/article/article-write";
	 }
	 else {
		 url = "${pageContext.request.contextPath}/article/article-modify";
		 id = $("#artiId").val();
	 }
	 
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
			content: content,
			articleId : id
		 };
		 
		 $.ajax({
			 type: "POST",
				url: url, //"${pageContext.request.contextPath}/article/article-write",
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
</script>