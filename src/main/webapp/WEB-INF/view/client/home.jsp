<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="head.jspf"%>
<script type="text/javascript">

function checkz() {
	
	//검색어 입력 확인
 if($("#searchKeyword").val() == ""){
   alert("검색어를 입력해주세요");
   $("#searchKeyword").focus();
   return;
 }
      
	$('#searchHotels').submit();

}
</script>
<style type="text/css">
option  {
	background : #595959;
	width : auto;
}
/* pc 화면 */
@media (min-width: 768px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 10px; /* 화면 오른쪽으로부터의 거리 */
    bottom: 70px; /* 화면 아래쪽으로부터의 거리 */
    }
}
/* 모바일 화면 */
@media (max-width:767px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 10px; /* 화면 오른쪽으로부터의 거리 */
    bottom: 70px; /* 화면 아래쪽으로부터의 거리 */
    }
}
</style>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
window.kakaoAsyncInit = function () {
    Kakao.init('099fe2e10a4fe77fb4de8c5a1e4d91d5');
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button'
    });
  };

  (function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//developers.kakao.com/sdk/js/kakao.plusfriend.min.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'kakao-js-sdk'));
</script>
</head>
<body>
<div id="kakao-talk-channel-chat-button" data-channel-public-id="_qxhvXxb" data-title="question" data-size="small" data-color="yellow" data-shape="pc" data-support-multiple-densities="true"></div>
	<div class="colorlib-loader"> </div>
	<div id="page">
		<%@ include file="main_header.jspf"%>
		<!--index 화면 사진 부분-->
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<c:if test="${not empty adminImageVO}">
						<img alt="" src="${adminImageVO.adminImagePath}${adminImageVO.adminImageName}" style="width: 100%; height: 800px;">
						</c:if>
						<c:if test="${empty adminImageVO}">
						<img src="resources/client/images/noImage.png" style="width: 100%; height: 800px;">
						</c:if>						
					</li>
				</ul>
			</div>
		</aside>
		
		<!-- 통합 검색 부분 -->
		<div id="colorlib-reservation">
			<div class="row">
				<div class="search-wrap">
					<div class="tab-content">
						<div id="flight" class="tab-pane fade in active">
							<!-- 검색 값 -->
							<form method="post" class="colorlib-form" action="searchedHotelsList.do" id="searchHotels">
								<div class="row">
									<div class="col-lg-6 col-lg-offset-2">
										<label>&nbsp;&nbsp;&nbsp;&nbsp;통합검색</label>
										<div class="form-group">
											<div class="form-field">
												<div class="col-lg-4">
													<i class="icon icon-arrow-down3"></i> 
													<select id="searchCodition" name="searchCondition" class="form-control">
														<c:forEach items="${conditionMap}" var="option">
															<option value="${option.value}">${option.key}</option>
														</c:forEach>
													</select>
												</div>
												<div class="col-lg-8">
													<input type="text" name="searchKeyword" class="form-control" id="searchKeyword"
														placeholder="검색어를 입력해주세요.">
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-2">
										<button type="button" onclick="checkz()" class="btn btn-outline btn-info btn-block">검색하기</button>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 호텔, 모텔, 펜션, 게스트하우스, 리조트/콘도 클릭 부분 (페이지 이동시 숙소종류 데이터 가지고 넘어가야 할듯?) -->
		<div id="colorlib-services">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-2 col-md-offset-1 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="hotelMove.do"><img
									src="resources/client/images/hotel.png" /></a></span>
							<h3>호텔</h3>
						</div>
					</div>
					<div class="col-md-2 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="hotelMove.do?type=모텔"><img
									src="resources/client/images/motel.png" /></a>
							</span>
							<h3>모텔</h3>
						</div>
					</div>
					<div class="col-md-2 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="hotelMove.do?type=펜션"><img
									src="resources/client/images/pension.png" /></a>
							</span>
							<h3>펜션</h3>
						</div>
					</div>
					<div class="col-md-2 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="hotelMove.do?type=게스트하우스"><img
									src="resources/client/images/guestHouse.png" /></a>
							</span>
							<h3>게스트 하우스</h3>
						</div>
					</div>
					<div class="col-md-2 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="hotelMove.do?type=리조트"><img
									src="resources/client/images/resort.png" /></a>
							</span>
							<h3>리조트</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>

		<!-- 인기 숙소 부분 -->
		<div id="colorlib-hotel">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>인기 숙소</h2>
						<p>금일의 인기 숙소 목록입니다.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box">
						<div class="owl-carousel">
						
							<!-- 각 item이 하나의 숙소 링크 부분 -->
							<c:forEach var="list" items="${top10}">
								<div class="item">
									<div class="hotel-entry">
										<c:if test="${list.hotelsImageStatus eq 'M' }">										
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="${list.hotelsImagePath}${list.hotelsImageName}" style="height: 280px; width: auto;">																					
											</a>											
										</c:if>
										<c:if test="${list.hotelsImageStatus ne 'M' }">
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="resources/client/images/noImage.png" style="height: 280px; width: auto;">																	
											</a>
										</c:if>	
										<div class="desc">
											<p class="star">
												<span>
													<c:if test="${list.scoreAvg == 0}">
														<i class="icon-star-empty"></i>
													</c:if>
													<c:forEach var="i" begin="1" end="${list.scoreAvg}" step="1">
														<i class="icon-star-full"></i>
													</c:forEach>
												</span>
												${list.scoreCnt} Reviews
											</p>									
											<h3>
												<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}">${list.hotelsName}</a>
											</h3>
											<span class="place">${list.hotelsAddress1}</span>
											<p>${list.hotelsPath}</p>
										</div>
									</div>
								</div>
							</c:forEach>					
													
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 이벤트 배너 (4개)-->
		<div class="colorlib-tour colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>이벤트</h2>
						<p>지금 진행 중인 이벤트를 확인하세요</p>
					</div>
				</div>
			</div>
			
			<div class="tour-wrap">
				<a href="#" class="tour-entry animate-box">
					<div class="tour-img">						
						<c:if test="${not empty event1ImageVO}">
						<img alt="" src="${event1ImageVO.adminImagePath}${event1ImageVO.adminImageName}" style="width: auto; height: 300px">
						</c:if>
						<c:if test="${empty event1ImageVO}">
						<img src="resources/client/images/noImage.png" style="width: auto; height: 300px">
						</c:if>						
					</div> 					
				</a> 
				<a href="#" class="tour-entry animate-box">
					<div class="tour-img">
						<c:if test="${not empty event2ImageVO}">
						<img alt="" src="${event2ImageVO.adminImagePath}${event2ImageVO.adminImageName}" style="width: auto; height: 300px">
						</c:if>
						<c:if test="${empty event2ImageVO}">
						<img src="resources/client/images/noImage.png" style="width: auto; height: 300px">
						</c:if>	
					</div> 						
				</a> 
				<a href="#" class="tour-entry animate-box">
					<div class="tour-img">
						<c:if test="${not empty event3ImageVO}">
						<img alt="" src="${event3ImageVO.adminImagePath}${event3ImageVO.adminImageName}" style="width: auto; height: 300px">
						</c:if>
						<c:if test="${empty event3ImageVO}">
						<img src="resources/client/images/noImage.png" style="width: auto; height: 300px">
						</c:if>	
					</div> 					
				</a> 
				<a href="#" class="tour-entry animate-box">
					<div class="tour-img">
						<c:if test="${not empty event4ImageVO}">
						<img alt="" src="${event4ImageVO.adminImagePath}${event4ImageVO.adminImageName}" style="width: auto; height: 300px">
						</c:if>
						<c:if test="${empty event4ImageVO}">
						<img src="resources/client/images/noImage.png" style="width: auto; height: 300px">
						</c:if>	
					</div>
				</a>
			</div>
		</div>		
	</div>
	<%@ include file="footer.jspf"%>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>

</html>

