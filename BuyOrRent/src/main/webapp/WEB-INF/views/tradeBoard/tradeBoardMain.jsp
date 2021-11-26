<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<body>
	<%@ include file="/WEB-INF/views/include/followingTopMenuWithOutSearch.jsp" %>
	<div class="main-content w-100">
		<div class="section-wrap bg-white">
			<hr class="w-50 m-center"/>
			<div class="hot-item-wrap w-50 m-center pt-r-8">
				<div class="hot-item-top t-center">
					<c:if test="${bid == 2}">
						<h1 class="mb-40">중고거래 인기매물</h1>
					</c:if>
					<c:if test="${bid == 3}">
						<h1 class="mb-40">인기 대여 물품</h1>
					</c:if>
					<div class="mb-30 t-right">
						<select name="region1" id="region1" onchange="changeRegion('r1', this.value);" class="location-select">
							<option value="">지역을 선택하세요</option>
							<c:forEach var="sido" items="${sidoList}"> 
								<option value="${sido.sid}">${sido.sido}</option>
							</c:forEach>
						</select>
						<select name="region2" id="region2" disabled="disabled" onchange="changeRegion('r2', this.value);" class="location-select">
							<option value="">동네를 선택하세요</option>
						</select>
						<select name="region3" id="region3" onchange="changeRegion('r3', this.value);" class="location-select d-none">
							<option value="">동을 선택하세요</option>
						</select>
					</div>
				</div>
				<div class="hot-item-content">
					<c:forEach var="i" begin="1" end="2">
						<div class="item-row-${i} d-flex w-100 justify-bw mb-r-4">
							<div class="rent-col-1 w-20">
								<a href="${path}/trade/item-detail">
									<div class="item-wrap w-100">
										<div class="item-img-wrap">
											<img src="${path}/images/bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
										</div>
										<div class="item-txt-wrap t-left mt-12">
											<div class="item-title font-16">접이식 자전거</div>
											<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
											<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
											<div class="item-response font-13 gray-middle">
												<span class="item-like">관심 21</span>
												<span>·</span>
												<span class="item-chat">채팅 41</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="rent-col-2 w-20 cursor" onclick="itemDetail();">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
									</div>
									<div class="item-txt-wrap t-left mt-12">
										<div class="item-title font-16">접이식 자전거</div>
										<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
										<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
										<div class="item-response font-13 gray-middle">
											<span class="item-like">관심 21</span>
											<span>·</span>
											<span class="item-chat">채팅 41</span>
										</div>
									</div>
								</div>
							</div>
							<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
									</div>
									<div class="item-txt-wrap t-left mt-12">
										<div class="item-title font-16">접이식 자전거</div>
										<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
										<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
										<div class="item-response font-13 gray-middle">
											<span class="item-like">관심 21</span>
											<span>·</span>
											<span class="item-chat">채팅 41</span>
										</div>
									</div>
								</div>
							</div>
							<div class="rent-col-3 w-20 cursor" onclick="itemDetail();">
								<div class="item-wrap w-100">
									<div class="item-img-wrap">
										<img src="bicycle.jpeg" class="w-100 border-r-6 border-1" alt="img1"/>
									</div>
									<div class="item-txt-wrap t-left mt-12">
										<div class="item-title font-16">접이식 자전거</div>
										<div class="item-price mt-12 mb-4 font-15 weight-700">40,000원</div>
										<div class="item-location mb-4 font-13">서울 강서구 화곡본동</div>
										<div class="item-response font-13 gray-middle">
											<span class="item-like">관심 21</span>
											<span>·</span>
											<span class="item-chat">채팅 41</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div class="follow-navigation icon-color">
		<div class="to-top">
			<a href="#" title="위로이동"><i class="fas fa-chevron-circle-up"></i></a>
		</div>
		<div class="to-write">
			<a href="${path}/trade/article/item-upload?board_id=3" title="중고거래"><i class="fas fa-plus-circle"></i></a>
		</div>
		<div class="to-bottom">
			<a href="#footer" title="아래로이동"><i class="fas fa-chevron-circle-down"></i></a>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>
<script>
function changeRegion(type, region) {
    if(type == 'r1' && (region != '' || region != null)) {
    	var formData = {sid : region};
    	
    	$.ajax({
    		type: "POST",
			url: "${pageContext.request.contextPath}/trade/sigun",
			data: formData,
			success: function(resData) {
				$('#region2').empty();
				
				var option = $("<option value=''>동네를 선택하세요</option>");
                $('#region2').append(option);
				//console.log(resData[0].sigun);
				for(var i = 0; i < resData.length; i++){
					//console.log(resData[i].sigun);
	                var option = $("<option value='" + resData[i].sigun + "'>"+ resData[i].sigun +"</option>");
	                $('#region2').append(option);
	            }
			},
			error: function() {
				alert("주소 오류");
			}
    		
    	});
        $("#region2").removeAttr("disabled");
    } 

    if(type == 'r2') {
        if (region.length > 0) {
        	var formData = {
        			sid : $("#region1 option:selected").val(),
        			sigun : $("#region2 option:selected").val()
        			};
        	
        	$.ajax({
        		type: "POST",
    			url: "${pageContext.request.contextPath}/trade/dong",
    			data: formData,
    			success: function(resData) {
    				$('#region3').empty();
    				
    				var option = $("<option value=''>동을 선택하세요</option>");
                    $('#region3').append(option);
    				//console.log(resData[0].sigun);
    				for(var i = 0; i < resData.length; i++){
    					//console.log(resData[i].sigun);
    	                var option = $("<option value='" + resData[i].updong + "'>"+ resData[i].updong +"</option>");
    	                $('#region3').append(option);
    	            }
    			},
    			error: function() {
    				alert("주소 오류");
    			}
        		
        	});
            $("#region3").removeClass('d-none');
        } else if(region.length == 0) {
            $("#region3").addClass('d-none');
        }
    } 

}
</script>