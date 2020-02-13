<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="head.jspf"%>
</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@ include file="main_header.jspf"%>
		<!--index 화면 사진 부분-->
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
					<li style="background-image: url(resources/client/images/img_bg_5.jpg);">
						<div class="overlay"></div>
						<div class="container-fluids">
							<div class="row">
								<div
									class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>집같이 편안한 숙소/뭔가 다른 느낌</h2>
										<h1>애숙이</h1>
									</div>
								</div>
							</div>
						</div>
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
							<form method="post" class="colorlib-form" action="">
								<div class="row">
									<div class="col-lg-10">
										<div class="form-group">
											<label for="date">통합검색</label>
											<div class="form-field">
												<input type="text" id="location" class="form-control"
													placeholder="Search Location">
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<input type="submit" name="submit" id="submit" value="검색하기"
											class="btn btn-primary btn-block">
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
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/hotel.png" /></a></span>
							<h3>호텔</h3>
						</div>
					</div>
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/motel.png" /></a>
							</span>
							<h3>모텔</h3>
						</div>
					</div>
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/pension.png" /></a>
							</span>
							<h3>펜션</h3>
						</div>
					</div>
					<div class="col-md-6 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/guestHouse.png" /></a>
							</span>
							<h3>게스트 하우스</h3>
						</div>
					</div>
					<div class="col-md-6 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/resort.png" /></a>
							</span>
							<h3>리조트/콘도</h3>
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
							<div class="item">
								<div class="hotel-entry">
									<!-- 여기에 JSTL로 DB 값들 받아 설정해야함 -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>기본 숙박비</span><small> /1박</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">숙소명</a>
										</h3>
										<span class="place">기본주소</span>
										<p>숙소소개</p>
									</div>
								</div>
							</div>
							<!-- 각 item이 하나의 숙소 링크 부분 -->
							<div class="item">
								<div class="hotel-entry">
									<!-- 여기에 JSTL로 DB 값들 받아 설정해야함 -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>기본 숙박비</span><small> /1박</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">숙소명</a>
										</h3>
										<span class="place">기본주소</span>
										<p>숙소소개</p>
									</div>
								</div>
							</div>
							<!-- 각 item이 하나의 숙소 링크 부분 -->
							<div class="item">
								<div class="hotel-entry">
									<!-- 여기에 JSTL로 DB 값들 받아 설정해야함 -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>기본 숙박비</span><small> /1박</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">숙소명</a>
										</h3>
										<span class="place">기본주소</span>
										<p>숙소소개</p>
									</div>
								</div>
							</div>
							<!-- 각 item이 하나의 숙소 링크 부분 -->
							<div class="item">
								<div class="hotel-entry">
									<!-- 여기에 JSTL로 DB 값들 받아 설정해야함 -->
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>기본 숙박비</span><small> /1박</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.jsp">숙소명</a>
										</h3>
										<span class="place">기본주소</span>
										<p>숙소소개</p>
									</div>
								</div>
							</div>
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
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-1.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Athens, Greece</h2> <span class="city">Athens, Greece</span> <span
						class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-2.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Thailand</h2> <span class="city">Athens,
							Greece</span> <span class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-3.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Philippines</h2> <span class="city">Lipa,
							Philippines</span> <span class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-4.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Greece</h2> <span class="city">Athens,
							Greece</span> <span class="price">$450</span>
				</span>
				</a>

			</div>
		</div>
		<%@ include file="footer.jspf"%>
	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>
</html>

