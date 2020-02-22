<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>

<head>
	<%@include file="head.jspf" %>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=m98vgu013u&callback=initMap"></script>
	<script type="text/javascript">
		var map = null;
	
	    function initMap() {
	        map = new naver.maps.Map('map', {
	            center: new naver.maps.LatLng(37.3595704, 127.105399),
	            zoom: 15
	            
	        });
	        marker = new naver.maps.Marker({
	            position: new naver.maps.LatLng(37.3595704, 127.105399),
	            map: map
	        });    
	    }
    </script>
</head>

<body>
	<!-- 룸 게시판 -->
	<div class="colorlib-loader"> </div>
	<div id="page">
		<%@include file="main_header.jspf" %>
		
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<!--main-->
		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-12">
								<div class="wrap-division">
									<div class="col-md-12 col-md-offset-0 heading2 animate-box">
										<h2>${vo.hotelsName}</h2>																									
									</div>
									<!-- 방목록> -->									
									<h3>방목록</h3>	
									<div class="row">									
									<c:forEach var="list" items="${list}">
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">													
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>${list.sortType}</h2>
																<p class="price"><span>￦${list.sortStandardPrice}</span> <small>/ night</small>
																</p>
																<p>최소인원 : ${list.sortStandardCnt}</p>
																<p>최대인원 : ${list.sortMaxCnt}</p>
																<p>추가요금 : ${list.sortAddPrice}</p>
																<p>${list.sortRoomInfo}</p>
															</div>
														</div>														
													</div>													
												</div>												
											</div>											
										</a>																			
										</c:forEach>										
										
										<!-- 숙소 소개 -->
										<h3>숙소 소개</h3>										
										<div class="container">
											<div class="row">
												<p>${vo.hotelsIntroduce }</p>																										
											</div>						
										</div>
											
										<div>&nbsp;</div>
										
										<!-- 편의시설 및 테마 -->
										<h3>편의시설 및 테마</h3>										
										<div class="container">
											<div class="row">
											<c:if test="${facilityVO.facilityParking eq 'Y'}">
												<div class="col-lg-1">
												   	<img src="resources/client/images/icons/car.png">
												   	<div>&nbsp;</div>												   	
												   	<p style="text-align: center">주차장</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityPool eq 'Y'}">	 	
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/pool.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">수영장</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityBreakfast eq 'Y'}">	 
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/breakfast.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">조식 제공</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityFitness eq 'Y'}">	 
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/fitness.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">헬스장</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityWifi eq 'Y'}">	 	
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/wifi.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">와이파이</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityParty eq 'Y'}">	 
												  <div class="col-lg-1">
												    <img src="resources/client/images/icons/party.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">파티</p>
												 </div>
											</c:if>
											<c:if test="${facilityVO.facilityPc eq 'Y'}">	 	
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/pc.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">PC</p>
												 </div>	
											</c:if>
											<c:if test="${facilityVO.facilityAmenity eq 'Y'}">	 
												 <div class="col-lg-1">
												    <img src="resources/client/images/icons/amenity.png">
												    <div>&nbsp;</div>												   
												    <p style="text-align: center">편의시설</p>
												 </div>
											</c:if>	 																																	
											</div>						
										</div>	
										
										<div>&nbsp;</div>
										
										<!-- 이용안내 -->
										<h3>이용안내</h3>										
										<div class="container">
											<div class="row">
												<p>${vo.hotelsInfo}</p>																										
											</div>						
										</div>									
										
											
										<div>&nbsp;</div>
									
										<h3>지도</h3>	
										<!-- 네이버 맵 -->
										<div class="container">										
											<div class="row">
												<div id="map" style="width:100%;height:400px;"></div>										
											</div>
										</div>
										
										<div>&nbsp;</div>
										
										<!-- 찾아 오시는 길 -->
										<h3>찾아 오시는 길</h3>										
										<div class="container">
											<div class="row">
												<p>${vo.hotelsPath}</p>																										
											</div>						
										</div>
										
										<div>&nbsp;</div>
										
										<!-- 리뷰 게시판 -->									
										<h3>리뷰</h3>										
										<div class="container">
											<div class="row">											
												<table class="table table-striped"
													style="text-align: center; border: 1px solid #dddddd">
													<thead>
														<tr>
															<th style="background-color: #eeeeee; text-align: center;">
																번호</th>
															<th style="background-color: #eeeeee; text-align: center;">
																제목</th>
															<th style="background-color: #eeeeee; text-align: center;">
																작성자</th>
															<th style="background-color: #eeeeee; text-align: center;">
																별점</th>
															<th style="background-color: #eeeeee; text-align: center;">
																작성일</th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<td>1</td>
															<td><a>EXAMPLE</a></td>
															<td>요피</td>
															<td>																
																<div class="starRev">
																	<span class="starR on">별1</span>
																	<span class="starR on">별2</span>
																	<span class="starR on">별3</span>
																	<span class="starR on">별4</span>
																	<span class="starR on">별5</span>
																</div>
															</td>
															<td>2020-02-07</td>
														</tr>

													</tbody>
												</table>
												<a href="#" class="btn btn-success btn-arrow-left">이전</a>
												<a href="#" class="btn btn-success btn-arrow-left">다음</a>												
											</div>
										</div>
										
									
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- SIDEBAR-->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side search-wrap animate-box">
								<h3 class="sidebar-heading">방 검색</h3>
								<form method="post" class="colorlib-form">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="date">체크인:</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i>
													<input type="text" id="date" class="form-control date"
														placeholder="Check-in date">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label for="date">체크아웃:</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i>
													<input type="text" id="date" class="form-control date"
														placeholder="Check-out date">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label for="guests">인원</label>
												<div class="form-field">
													<i class="icon icon-arrow-down3"></i>
													<select name="people" id="people" class="form-control">
														<option value="#">1</option>
														<option value="#">2</option>
														<option value="#">3</option>
														<option value="#">4</option>
														<option value="#">5+</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<input type="submit" name="submit" id="submit" value="검색"
												class="btn btn-primary btn-block">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div>&nbsp;</div>
				

		<%@include file="footer.jspf" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>

</html>