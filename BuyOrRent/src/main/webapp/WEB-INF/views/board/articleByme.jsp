<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%-- <link href="${path}/css/article.css" rel="stylesheet" /> --%>
<link href="${path}/css/mypage.css" rel="stylesheet" />
<body>
	<%@ include
		file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp"%>
	<div id="main-content" class="main-content w-100 mt-r-5 p-10 bg-white">
		<div id="section-wrap" class="section-wrap w-50 m-center p-30">
			<div class='section-top-wrap mb-30'>
				<div class='section-titles font-20 weight-700 mb-10'>
					<span class='section-type mr-5'>내 게시글</span> 
					<span class='section-sub-title'>수정</span>
				</div>
				<div class='section-sub-title font-12 icon-color mb-10'>
					<span class='section-type mr-5'>작성한 게시글과 댓글을 수정, 삭제 할 수 있습니다.</span>
					<!-- <span class='section-type mr-5 d-block'>
                    	<span class='userid weight-700 highlight'>jeonghwa</span>
					</span>
                    <span class='section-type mr-5 d-block'>님의 </span> -->
				</div>
				<div class="d-flex font-13">
					<div class="total-article-wrap">
						<span class="total-article-title icon-color">총 게시물</span>
						<span class="total-article highlight weight-700">10개</span>
					</div>
					<div class="space-divider">|</div>
					<div class="total-comment-wrap">
						<span class="total-comment-title icon-color">총 게시물</span>
						<span class="total-comment highlight weight-700">10개</span>
					</div>
				</div>
			</div>
			<div class='section-bottom-wrap'>
				<div class="content-table-tab-wrap w-100 mb-5">
					<!-- <div class="tab focus tab-articles">내가 쓴 게시글</div>
					<div class="tab tab-comment">내가 쓴 댓글</div> -->
					<!-- 내가 쓴 댓글 탭에서는 헤드 날리고 
					날짜 시간
					내용
					원문 제목 : ㅇㅇㅇㅇ [댓글수]
					-->
					<table class="content-table-tab w-100 cursor">
						<tr>
							<td class="tab w-15 focus">내가 쓴 게시글</td>
							<td class="tab w-15">내가 쓴 댓글</td>
							<td class="w-70 blank"></td>
						</tr>
					</table>
				</div>
				<div class="content-table-sub d-flex justify-bw">
					<div class="">
						<button id="mypage_select_all" onclick="selectAllChk(this)">전체선택</button>
						<button>삭제</button>
					</div>
					<div class="search-submenu">
						<select class="font-11 p-2" name="myarticle-search">
							<option value="all">제목+내용</option>
							<option value="title">글제목</option>
						</select> <input type="text" class="font-11" />
						<button class="">검색</button>
					</div>
				</div>
				<div class="content-table-wrap w-100 mb-16">
					<table class="content-table article w-100">
						<thead>
							<tr class="font-13 p-5">
								<th class="w-2"></th>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>댓글</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class=""><input type="checkbox"
									name="mypage_select_all" value="" /></td>
								<td class="">10</td>
								<td class="p-5 t-title"><a href="article-detail.html">제목
										제목 제목 제목 제목 제목 제목 제목 제목 제목 제목</a></td>
								<td class="p-5 cursor">박정화</td>
								<td class="p-5">21.10.04</td>
								<td class="p-5">1</td>
								<td class="p-5">1</td>
							</tr>
							<tr>
								<td class=""><input type="checkbox"
									name="mypage_select_all" value="" /></td>
								<td class="">9</td>
								<td class="p-5 t-title"><a href="article-detail.html">제목
										제목 제목 제목 제목 제목 제목 제목 제목 제목 제목</a></td>
								<td class="p-5 cursor">박정화</td>
								<td class="p-5">21.10.04</td>
								<td class="p-5">1</td>
								<td class="p-5">1</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="page-grp pb-r-2 table w-100">
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
									<span class="page-btn to-first"> <i
										class="fas fa-angle-double-left"></i>
									</span>
								</c:otherwise>
							</c:choose>
							<!-- 한 페이지 앞으로 -->
							<c:choose>
								<c:when test="${currPage > 1}">
									<span class="page-btn to-left"> 
										<a
										href="${path}/board?board_id&currPage=${currPage - 1}"> <i
											class="fas fa-angle-left"></i>
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
				</div>
			</div>
		</div>
	</div>
	<footer class="footer bg-gray-middle white ptb-r-4">
		<div class="footer-wrap w-50 m-center">푸터푸터푸터푸터푸터푸터</div>
	</footer>
</body>
</html>

