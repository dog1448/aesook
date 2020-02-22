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
                 		 <%@ include file="managementSidebar.jspf" %>
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
													<h2>숙소명 : ${hotels.hotelsName}</h2><br></br>
													<input type="hidden" name="memberId" value="${user.memberId}">									
													<p>숙소종류 : ${hotels.hotelsName}</p>
													<p>숙소위치 : ${hotels.hotelsAddress1}&nbsp;${hotels.hotelsAddress2}</p>
                                                    <p>전화번호 : ${hotels.hotelsPhone}</p>												
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