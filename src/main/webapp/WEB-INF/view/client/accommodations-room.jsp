<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>

<head>
<%@include file="head.jspf"%>
<style type="text/css">
/* CUSTOMIZE THE NAVBAR
-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
}
/* CUSTOMIZE THE CAROUSEL
-------------------------------------------------- */

/* Carousel base class */
.carousel {
	margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
	z-index: 1;
}
/* Declare heights because of positioning of img element */
.carousel .item {
	height: 500px;
	background-color: #555;
}

.carousel img {
	position: absolute;
	top: 0;
	left: 0;
	min-height: 400px;
}
/* MARKETING CONTENT
-------------------------------------------------- */

/* Pad the edges of the mobile views a bit */
.marketing {
	padding-left: 15px;
	padding-right: 15px;
}

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
	text-align: center;
	margin-bottom: 20px;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .col-lg-4 p {
	margin-left: 10px;
	margin-right: 10px;
}

/* Featurettes
------------------------- */
.featurette-divider {
	margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

/* RESPONSIVE CSS
-------------------------------------------------- */
@media ( min-width : 768px) {
	/* Remve the edge padding needed for mobile */
	.marketing {
		padding-left: 0;
		padding-right: 0;
	}

	/* Navbar positioning foo */
	.navbar-wrapper {
		margin-top: 20px;
		margin-bottom: -90px;
		/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
	}
	/* The navbar becomes detached from the top, so we round the corners */
	.navbar-wrapper .navbar {
		border-radius: 4px;
	}

	/* Bump up size of carousel content */
	.carousel-caption p {
		margin-bottom: 20px;
		font-size: 21px;
		line-height: 1.4;
	}
}

.white {
	background-color: white;
	border: none !important;
}
</style>
<script type="text/javascript">
	function searchRoom() {
		$('.impossible').remove();
		var checkOut = $('#dateOut').val();
		var checkIn = $('#dateIn').val();
		var hotelsCode = $('#hotelsCode').val();
		var impossible;

		if (new Date(checkOut) <= new Date(checkIn)) {
			alert("체크아웃 날짜가 체크인 날짜와 같거나 더 앞섭니다.");
			return;
		}

		$
				.ajax({
					url : "getPossibleBooking.do",
					type : "GET",
					data : {
						"bookingCheckOut" : checkOut,
						"bookingCheckIn" : checkIn,
						"hotelsCode" : hotelsCode
					},
					dataType : "json"
				})
				.done(
						function(json) {
							console.log(json);
							var possibleList = json;
							$("input[name='roomSort']")
									.each(
											function(index, item) {
												var roomValue = $(item).val();
												var cnt = 0;
												for (var i = 0; i < possibleList.length; i++) {
													if (roomValue == possibleList[i]) {
														cnt++;
														break;
													}
												}
												if (cnt == 0) {
													var ida = '#imsi' + index;
													$(ida)
															.append(
																	'<div class="impossible"><h5><font color="red"><예약마감></font></h5></div>');
												}

											});

						});

	}
</script>
</head>

<body>
	<!-- 룸 게시판 -->
	<div class="colorlib-loader"></div>
	<div id="page">
		<%@include file="main_header.jspf"%>
		<!--main-->
		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div id="myCarousel" class="carousel slide">
						<div class="carousel-inner">
							<c:if test="${not empty picList}">
								<c:forEach var="picList" items="${picList}">
									<c:if test="${picList.hotelsImageStatus eq 'M' }">
										<div class="item active">
											<img
												src="${picList.hotelsImagePath}${picList.hotelsImageName}"
												class="img-responsive" style="width: auto; height: 500px;">

										</div>
									</c:if>
									<c:if test="${picList.hotelsImageStatus ne 'M' }">
										<div class="item">
											<img
												src="${picList.hotelsImagePath}${picList.hotelsImageName}"
												class="img-responsive" style="width: auto; height: 500px;">

										</div>
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${empty picList}">
								<div class="item active">
									<img src="resources/client/images/noImage.png"
										class="img-responsive" style="width: auto; height: 500px;">

								</div>
							</c:if>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span class="icon-prev"></span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span class="icon-next"></span>
						</a>
					</div>
					<!-- /.carousel -->
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
										<c:forEach var="list" items="${list}" varStatus="vs">
											<a href="roomDescription.do?hotelsCode=${list.hotelsCode}&roomName=${list.roomSort}">
												<div class="col-md-12 animate-box">
													<input type="hidden" value="${list.hotelsCode}"
														id="hotelsCode">
													<div class="room-wrap">
														<div class="row">
															<div class="col-md-6 col-sm-6">
															<c:if test="${list.hotelsImagePath ne null }">																
																<img src="${list.hotelsImagePath}${list.hotelsImageName}" 
																style="height: 280px; width: auto;">
															</c:if>
															<c:if test="${list.hotelsImagePath eq null }">																
																<img src="resources/client/images/noImage.png" 
																style="height: 280px; width: auto;">
															</c:if>		
															</div>
															<div class="col-md-6 col-sm-6">
																<div class="desc">
																	<h2 id="imsi${vs.index}">${list.roomSort}</h2>
																	<input type="hidden" value="${list.roomSort}"
																		name="roomSort">
																	<p class="price" id="standardPrice">
																		<span>${list.roomStandardPrice} ￦ <small>&nbsp;평일</small></span>
																	</p>
																	<p class="price">
																		<span><font color="#FFC300">${list.roomHolidayPrice}
																				￦</font></span> <small>&nbsp;공휴일</small>
																	</p>
																	<p>기준 : ${list.roomStandardCnt} 명
																		&nbsp;/&nbsp;&nbsp;최대 : ${list.roomMaxCnt} 명</p>
																	<p>인원당 추가요금 : ${list.roomAddPrice} ￦</p>
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
												<pre class="white">${vo.hotelsIntroduce }</pre>
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
														<p style="text-align: center">어메니티</p>
													</div>
												</c:if>
											</div>
										</div>

										<div>&nbsp;</div>

										<!-- 이용안내 -->
										<h3>이용안내</h3>
										<div class="container">
											<div class="row">
												<pre class="white">${vo.hotelsInfo}</pre>
											</div>
										</div>


										<div>&nbsp;</div>

										<h3>지도</h3>
										<!-- 맵 -->
										<div class="container">
											<div class="row">
												<div id="map" style="width: 100%; height: 350px;"></div>
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
												<i class="icon-star-full"></i> <small>전체 누적 평점</small>
												<c:if test="${scoreAvg eq null}">
													<br></br>
													<h4>등록된 리뷰가 없습니다.</h4>
												</c:if>
												<c:if test="${scoreAvg ne null}">
													<h1>
														<strong>${scoreAvg}</strong>&nbsp;<small>/5</small>
													</h1>
												</c:if>
												<hr>
												<c:forEach var="review" items="${review}">
													<span class="icon"> <c:if
															test="${review.reviewScore >= 4}">
															<img src="resources/client/images/good.png" width="35"
																height="35" />&nbsp;
													</c:if> <c:if test="${review.reviewScore == 3}">
															<img src="resources/client/images/soso.png" width="35"
																height="35" />&nbsp;
													</c:if> <c:if test="${review.reviewScore <= 2}">
															<img src="resources/client/images/bad.png" width="35"
																height="35" />&nbsp;
													</c:if> <c:forEach var="i" begin="1" end="${review.reviewScore}"
															step="1">
															<i class="icon-star-full"></i>
														</c:forEach>
													</span>
													<div>&nbsp;</div>
													작성자 : ${review.memberId}
													<div class="text-left">날 짜 : ${review.reviewDate}</div>
													<div>&nbsp;</div>
													${review.reviewContents}
													<hr>
												</c:forEach>
												<a href="#" class="btn btn-success btn-arrow-left">이전</a> <a
													href="#" class="btn btn-success btn-arrow-left">다음</a>
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
								<h3 class="sidebar-heading">상세 검색</h3>
								<form method="post" class="colorlib-form">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>체크인</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i> <input type="date"
														name="bookingCheckIn" id="dateIn"
														class="form-control date" value="${bookingCheckIn}"
														placeholder="Check-in date">

												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label>체크아웃</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i> <input type="date"
														name="bookingCheckOut" id="dateOut"
														class="form-control date" value="${bookingCheckOut}"
														placeholder="Check-out date">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label for="guests">인원</label>
												<div class="form-field">
													<i class="icon icon-pencil"></i> <input type="text"
														id="cnt" class="form-control" placeholder="숫자만 입력하세요.">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<input type="button" id="dateSearch" value="검색"
												onclick="searchRoom()" class="btn btn-info btn-block">
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


		<%@include file="footer.jspf"%>

		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=099fe2e10a4fe77fb4de8c5a1e4d91d5&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							'${vo.hotelsAddress1}',
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">${vo.hotelsName}</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		</script>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>

</html>