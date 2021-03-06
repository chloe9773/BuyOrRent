<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="${path}/css/article.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<div class="board-wrap w-50 m-center pt-r-8">
				<div class="board-top">
					<h1 class="mb-40">${boardName}</h1>
				</div>
				<div class="board-extra d-flex justify-bw mb-4 font-13">
					<div class="extra-left">
						<span class="article-total">총 ${count}건의 게시물</span> <!-- 새글 오늘게시글 / 토탈 도 괜찮아 보였음-->
					</div>
					<div class="extra-right d-flex">
						<input type="checkbox" id="notiChk" class="mr-5" onclick="hideNoti();"/>
						<span>공지감추기</span>
					</div>
				</div>
				<div class="board-content">
					<table class="board-table w-100 mb-30 font-13">
						<thead>
							<tr class="bg-gray-v-light">
								<th width="10%">번호</th>
								<th class="">제목</th>
								<th width="15%">작성자</th>
								<th width="20%">작성일</th>
								<th width="10%">조회수</th>
								<th width="10%">댓글</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="noti" items="${notiList}">
							<tr class="board-row t-center noti">
								<td>
									<div class="noti-box">공지</div>
								</td>
								<td class="t-left t-title">
									<a href="${path}/article/article-detail?article_id=${noti.articleId}" class="">${noti.title}</a>
								</td>
								<td>
									<a href="#" class="">${noti.author}</a>
								</td>
								<td>${fn:substring(noti.uploadDate,0,10)}</td>
								<td>${noti.hit}</td>
								<td>${noti.commentTotal}</td>
							</tr>
							</c:forEach>
							<c:forEach var="article" items="${articleList}" varStatus="status">
								<tr class="board-row t-center">
									<%-- <td>${article.articleId}</td> --%>
									<td>${(count - status.index) - ((currPage - 1) * end)}</td>
									<td class="t-left t-title">
										<a href="${path}/article/article-detail?article_id=${article.articleId}" class="">${article.title}</a>
									</td>
									<td>${article.author}</td>
									<td>${fn:substring(article.uploadDate,0,10)}</td>
									<td>${article.hit}</td>
									<td>${article.commentTotal}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="page-grp pb-r-2 table w-100">
						<div class="table-cell">
						<c:if test = "${sessionScope.username != null}">
							<a href="${path}/article/article-write?board_id=${boardId}">
								<button class="to-write highlight bg-white">글쓰기</button>
							</a>
						</c:if>
						<c:if test = "${sessionScope.username == null}">
							<button class="to-write bg-white" disabled>글쓰기</button>
						</c:if>
						</div>
						<c:if test="${count>0}">
							<div class="paging icon-color t-center font-13 table-cell">
								<!-- 제일 앞 페이지로 -->
								<c:choose> 
									<c:when test="${currPage > 1}">
										<span class="page-btn to-first">
											<a href="${path}/board?board_id=1&1">
												<i class="fas fa-angle-double-left"></i>
											</a>
										</span>
									</c:when>
									<c:otherwise>
										<span class="page-btn to-first">
											<i class="fas fa-angle-double-left"></i>
										</span>
									</c:otherwise>
								</c:choose>
								<!-- 한 페이지 앞으로 -->
								<c:choose> 
									<c:when test="${currPage > 1}">
										<span class="page-btn to-left">
											<a href="${path}/board?board_id&currPage=${currPage - 1}">
												<i class="fas fa-angle-left"></i>
											</a>
										</span>
									</c:when>
									<c:otherwise>
										<span class="page-btn to-left">
											<i class="fas fa-angle-left"></i>
										</span>
									</c:otherwise>
								</c:choose>
								<!--  페이지 번호 출력 -->
								<c:forEach begin="${blockBegin}" end="${blockEnd}" var="num">
									<c:if test="${selected == num}">
										<span class="page-btn active">
											<a herf="#">${num}</a>
										</span>
									</c:if>
									<c:if test="${selected != num}">
										<span class="page-btn">
											<a href="${path}/board?board_id=1&currPage=${num}">${num}</a>
										</span>
									</c:if>
								</c:forEach>
								<!-- 페이지 번호 출력 끝 -->
								<c:choose>
									<c:when test="${currPage != totalPage}">
										<span class="page-btn to-right">
											<a herf="${path}/board?board_id=1&currPage=${currPage + 1}">
												<i class="fas fa-angle-right"></i>
											</a>
										</span>
									</c:when>
									<c:otherwise>
										<span class="page-btn to-right">
											<i class="fas fa-angle-right"></i>
										</span>
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${currPage != totalPage}">
										<span class="page-btn to-left">
											<a href="${path}/board?board_id=1&currPage=${totalPage}">
												<i class="fas fa-angle-double-right"></i>
											</a>
										</span>
									</c:when>
									<c:otherwise>
										<span class="page-btn to-left">
											<i class="fas fa-angle-double-right"></i>
										</span>
									</c:otherwise>
								</c:choose>
							</div>
						</c:if>
						<div class="table-cell t-right">
							<c:if test = "${sessionScope.username == null}">
								<a href="${path}/board/my-article">
									<button class="my-article bg-white" disabled>내글보기</button>
								</a>
							</c:if>
							<c:if test = "${sessionScope.username != null}">
								<a href="${path}/board/my-article">
									<button class="my-article bg-white">내글보기</button>
								</a>
							</c:if>
						</div>
					</div>
					<div class="article-search m-center d-flex justify-center pb-r-2">
						<select name="article-search">
							<option value="all">제목+내용</option>
							<option value="title">글제목</option>
							<option value="writer">작성자</option>
						</select>
						<div class="article-search-wrap border-1-dark border-r-2 p-5 ml-5">
							<input type="text" class="article-search-input" />
							<i class="fas fa-search"></i>
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

