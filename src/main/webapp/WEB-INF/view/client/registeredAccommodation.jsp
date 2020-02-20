<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						 <!-- 숙소관리 사이드바 -->
                 		 <%@ include file="accommodationManagementSidebar.jspf" %>
						<div class="col-three-forth animate-box">	
							<h2>예약 조회</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<a href="inserthotel.jsp">								
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