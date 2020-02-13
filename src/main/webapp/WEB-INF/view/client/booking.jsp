<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="head.jspf" %>
	</head>
	<body>
		
	<div class="colorlib-loader"> </div>

	<div id="page">
		 <%@ include file="main_header.jspf" %>
        
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<div class="col-one-forth aside-stretch animate-box">
							<div class="row">
								<div class="col-md-12 about">
									<h2>myPage</h2>
									<ul>
										<li><a href="booking.jsp">예약조회</a></li>
                                        <li><a href="myReview.jsp">나의 후기</a></li>
                                        <li><a href="modify_info.jsp">개인정보관리</a></li>
                                        <li><a href="brn.jsp">사업자등록</a></li>
                                        <li><a href="inserthotel.jsp">숙소 관리</a></li>
                                        <li><a href="withdrawal.jsp">회원탈퇴</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-three-forth animate-box">	
							<h2>예약 조회</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<a href="room-details.jsp">								
									<div class="room-wrap">
										<div class="row">
											
											<div class="col-md-6 col-sm-6">
												<div class="room-img"
													style="background-image: url(resources/client/images/room-1.jpg);"></div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>숙소명</h2>
													<p class="price"><span>$45</span> <small>/ night</small>
													</p>
													<p>체크인 : </p>
													<p>체크아웃 : </p>
													<p>시간 : </p>													
												</div>
											</div>											
										</div>
										</a>
										<div>&nbsp;</div>
										
										<a href="room-details.jsp">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<div class="room-img"
													style="background-image: url(resources/client/images/room-1.jpg);"></div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>숙소명</h2>
													<p class="price"><span>$45</span> <small>/ night</small>
													</p>
													<p>체크인 : </p>
													<p>체크아웃 : </p>
													<p>시간 : </p>													
												</div>
											</div>											
										</div>
										</a>
										<div>&nbsp;</div>
									</div>
								</div>
							</div>
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

