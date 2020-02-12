<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>

<head>
<%@include file="head.jspf" %>
</head>

<body>

	<div class="colorlib-loader"></div>

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
									<h2>myPage</h2>
									<ul>
										<li><a href="inserthotel.do">숙소 등록 및 수정</a></li>
										<li><a href="insertedRoom.do">등록 숙소</a></li>
										<li><a href="statistics.do">통계</a></li>
										<li><a href="chat.do">1대 1문의</a></li>
										<li><a href="home.do">메인 홈</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-three-forth animate-box">	
							<h2>예약 조회</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<a href="inserthotel.do">								
									<div class="room-wrap">
										<div class="row">
											
											<div class="col-md-6 col-sm-6">
												<div class="room-img"
													style="background-image: url(resources/client/images/room-1.jpg);"></div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>숙소명</h2>													
													<p>숙소종류 : </p>
													<p>숙소위치 : </p>
                                                    <p>객실 수 : </p>
                                                    <p>편의시설/서비스 : </p>													
												</div>
											</div>											
										</div>
										</a>		
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@include file="footer.jspf" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>	

</body>

</html>