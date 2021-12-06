<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9404f42f5e7fb1713499d80e4d6590f9&libraries=services"></script>
<link href="${path}/css/article.css" rel="stylesheet"/>
<link href="${path}/css/trade.css" rel="stylesheet"/>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<input type="hidden" id="position" />
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
						<input type="hidden" id="userid" value="${sessionScope.userId}" />
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
	<div id="pop-wrap" class="pop-wrap t-center font-15">
		<div class="pop-top pop-title p-10">잠깐, 여기 계신가요?</div>
		<div class="pop-main">
			<div id="map" style="width:100%;height:200px;"></div>
		</div>
		<div class="pop-bottom">
			<div class="pop-btn-wrap">
				<div class="pop-btn pop-btn-yes p-10 cursor" onclick="setLocation('y');">네</div>
				<div class="pop-btn pop-btn-no p-10 cursor" onclick="setLocation('n');">아니요</div>
			</div>
		</div>
	</div>
	<div id="modal" class="modal"></div>
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
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div

mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

if (navigator.geolocation) {
    //위치 정보를 얻기
    navigator.geolocation.getCurrentPosition (function(pos) {
    	var lat = pos.coords.latitude;     // 위도
        var lon = pos.coords.longitude; // 경도
        
        var locPostion = new kakao.maps.LatLng(lat, lon);//, //마커가 표시될 위치를 geolocation 좌표로 생성합니다.
        //message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다.
        
        //displayMarker(locPostion,message);
        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
        	map: map,
        	position: locPostion
        });
        
        map.setCenter(locPostion);
        // 마커가 지도 위에 표시되도록 설정합니다
        //marker.setMap(map);
        
        // 행정동 정보 
        searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    });
} else {
    alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다.
function displayMarker(locPostion, message) {
    
    // 마커를 생성합니다.
    var marker = new kakao.maps.Marker({
        map: map,
        position: locPostion
    });

    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;
    
    // 인포윈도우를 생성합니다.
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });

    // 인포윈도우를 마커위에 표시합니다.
    infowindow.open(map,marker);

    // 지도 중심좌표를 접속위치로 변경합니다.
    map.setCenter(locPostion);
}

//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
            	$("#position").val(result[i].address_name);     
            	break;
            }
        }
    }    
}
</script>
<script>
	function setLocation(val) {
		if(val == 'y') {
			var addr = $("#position").val().split(" ");
			var formData = {
					addrSido : addr[0],
					addrGu : addr[1],
					addrDong : addr[2],
					userId : $("#userid").val() 
			};
			
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/set-addr",
				data: formData,
				success: function(resData) {
					$("#pop-wrap").addClass("d-none");
					$("#modal").addClass("d-none");
				},
				error: function() {}
			 });
		} else {
			
		}
	}
</script>