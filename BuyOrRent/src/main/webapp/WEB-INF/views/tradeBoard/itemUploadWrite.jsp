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
					<a href="${path}/trade?board_id=${bid}" class="sell">
						<h1 class="mb-40">중고거래</h1>
					</a>
				</div>
				<hr class="mb-16"/>
				<div class="board-content">
					<form id="item-upload-form" method="post" enctype="multipart/form-data" action="${path}/trade/item-upload">
						<!--  <input type="hidden" name="bid" value="${bid}" />-->
						<input type="hidden" name="author" value="${sessionScope.username}" />
						<div class="photo-upload-wrap d-flex mb-16">
							<input type="file" name="files" id="file" class="fileUpload d-none" multiple/>
							<div class="item-photo-wrap icon-color t-center cursor" onclick="fileUpload();">
								<div class="item-photo-box">
									<div class="">
										<i class="fas fa-camera"></i>
									</div>
									<div class="photo-count-wrap font-13">
										<span id="photo-count" class="photo-count mr-5">0</span>
										<span class="mr-5">/</span>
										<span class="photo-total">5</span>
									</div>
								</div>
							</div>
							<div class="photo-preview-wrap d-flex"></div>
						</div>
						<div class="title-wrap pb-10 mb-10">
							<input type="text" name="title" class="title font-20" maxlength="" autocomplete="off" placeholder="제목을 입력하세요."/>
						</div>
						<div class="item-info-wrap font-16 d-flex justify-bw pb-10 mb-10">
							<div class="category-wrap">
								<select name="category" class="category-select">
									<option value="">카테고리</option>
								</select>
							</div>
							<div class="price-wrap">
								<input type="text" class="price-input" maxlength="" autocomplete="off" placeholder="₩ 가격 (선택사항)"/>
								<input type="radio" name="price" class="price-suggestion d-none" value="price-suggest"/>
								<!-- 대여 게시글의 경우 대여일 지정 select 추가하기 -->
								<span class="circle-default cursor" onclick="circleChkBtn(true, 'price','price-suggest');">
									<i class="far fa-circle"></i>
								</span>
								<span class="circle-chk cursor d-none highlight" onclick="circleChkBtn(false, 'price','price-suggest');">
									<i class="fas fa-check-circle"></i>
								</span>
								<span class="">가격제안 받기</span>
							</div>
						</div>
						<div class="editor">
							<textarea name="content" placeholder="ㅇㅇ동에 올릴 게시글 내용을 작성해주세요."></textarea>
						</div>
						<div class="btn-grp d-flex justify-bw pb-r-4">
							<div class="btn-grp-left">
								<a href="${path}/trade?board_id=${bid}">
									<button class="cancel bg-white">취소</button>
								</a>
							</div>
							<div class="btn-grp-right">
								<button type="subtmit" class="submit bg-highlight white">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
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
			content: content
		 };
		 if(type != 1) formData['articleId']=id;
		 console.log(formData);
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