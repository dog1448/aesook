<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>

<head>
<%@include file="head.jspf" %>
</head>

<body>

	<div class="colorlib-loader"> </div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">

		</nav>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<div class="col-one-forth aside-stretch animate-box">
							<div class="row">
								<div class="col-md-12 about">
									<h2>숙소관리</h2>

									<ul>
										<li><a href="inserthotel.jsp">숙소 등록 및 수정</a></li>
										<li><a href="insertedRoom.jsp">등록 숙소</a></li>
										<li><a href="statistics.jsp">통계</a></li>
										<li><a href="chat.jsp">1대 1문의</a></li>
										<li><a href="index.jsp">메인 홈</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-three-forth animate-box">
							<form action="#">
								<h2>숙소 종류</h2>
								<div class="row form-group">
									<div class="col-md-12">
										&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="radio" name="rooms" value="hotel">호텔</label>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<label><input type="radio" name="rooms" value="motel">모텔</label>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<label><input type="radio" name="rooms" value="pension">팬션</label>
													&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="radio" name="rooms"	value="guesthouse">게스트하우스</label>
													&nbsp;&nbsp;&nbsp;&nbsp;
														<label><input type="radio" name="rooms"	value="resort/condo">리조트/콘도</label>
									</div>
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>

								<h2>숙소 이름</h2>
								<div class="col-md-12 form-group">
									<input type="text" id="room-name" class="form-control" placeholder="숙소명 입력하세요">
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>숙소 위치</h2>
								<div class="col-md-12 form-group">
									<iframe id="map-detail-frame" width="652" height="217" frameborder="0"
										scrolling="no" title="rooms-location"
										src="https://goo.gl/maps/araV1CpH7VR57Svb9"></iframe>
									<div>&nbsp;&nbsp;</div>
									<label>URL입력</label>
									<div class="row">
										<div class="col-lg-6">
											<div class="input-group">
												<input type="text" class="form-control" placeholder="위치값 URL입력">
												
												<span class="input-group-btn">
													<button class="btn btn-default" type="button">검색</button>
												</span>
											</div>
										</div>
									</div>
									<label>위치</label>
									<input type="text" id="location" class="form-control" placeholder="주소를 입력하세요">
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>객실</h2>
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
										객실 추가 및 제외
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#">객실 추가</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#">객실 제거</a></li>										
									</ul>
								</div>

								<div class="form-group">
									<div class="col-sm-6">
										<label>방 이름</label>
										<input type="text" class="form-control" placeholder="방 이름 입력">
									</div>
									<div class="col-sm-6">
										<label>인원</label>
										<input type="text" class="form-control" placeholder="인원 수 입력">
									</div>
									<div class="col-sm-6">
										<label>요금</label>
										<input type="text" class="form-control" placeholder="요금 입력">
									</div>
									<div class="col-sm-6">
										<label>특징</label>
										<input type="text" class="form-control" placeholder="특징 입력">
									</div>
									<div class="col-md-12">
										<label>사진 업로드</label>
										<div class="file-upload-wrapper">
											<input type="file" id="input-file-now-custom-1" class="file-upload" data-default-file="https://mdbootstrap.com/img/Photos/Others/images/89.jpg" />
										  </div>
									</div>
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>편의시설/서비스</h2>
								<div class="row">
									<div class="col-md-12 form-group">
										&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
												value="hotel">주차가능</label>
											&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
													value="motel">식사가능</label>
												&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
														value="pension">레스토랑</label>
													&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
															value="guesthouse">비즈니스</label>
									</div>
									<div>&nbsp;</div>
									<div class="col-md-12 form-group">
										&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
												value="hotel">24시간 데스크</label>
											&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
													value="motel">파티룸</label>
												&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
														value="pension">와이파이</label>
									</div>
								</div>


								<div>
									<button type="button" class="btn btn-info btn-lg">등록 및 수정</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jspf" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>	
</body>

</html>