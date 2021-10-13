<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<link href="/WEB-INF/css/article.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<div class="board-wrap w-50 m-center pt-r-8">
				<div class="board-top">
					<h1 class="mb-40">자유게시판</h1>
				</div>
				<div class="board-extra d-flex justify-bw mb-4 font-13">
					<div class="extra-left">
						<span class="article-total">총 10건의 게시물</span> <!-- 새글 오늘게시글 / 토탈 도 괜찮아 보였음-->
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
							<tr class="board-row t-center noti">
								<td>
									<div class="noti-box">공지</div>
								</td>
								<td class="t-left t-title">
									<a href="article-detail.html" class="">공지 공지 공지 공지입니다 공지예여</a>
								</td>
								<td>
									<a href="#" class="">박정화</a>
								</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center noti">
								<td>
									<div class="noti-box">공지</div>
								</td>
								<td class="t-left t-title">공지 공지 공지 공지입니다 공지예여</td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>3</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>4</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>5</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>1</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>2</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>3</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>4</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
							<tr class="board-row t-center">
								<td>5</td>
								<td class="t-left t-title">후참 신메뉴 나왔다며 ... </td>
								<td>박정화</td>
								<td>2021.09.17</td>
								<td>1</td>
								<td>2</td>
							</tr>
						</tbody>
					</table>
					<div class="page-grp pb-r-2 table w-100">
						<div class="table-cell">
							<a href="${path}/board/article-write">
								<button class="to-write highlight bg-white">글쓰기</button>
							</a>
						</div>
						<div class="paging icon-color t-center font-13 table-cell">
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
						<div class="table-cell t-right">
							<a href="article-my-article.html">
								<button class="my-article bg-white">내글보기</button>
							</a>
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

