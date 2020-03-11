<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="head.jspf" %>
	</head>
	<body>
		
	<div class="colorlib-loader">  </div>

	<div id="page">
		 <%@ include file="main_header.jspf" %>
        
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					
					<div class="about-flex">
						<!-- sideBar -->
						<%@ include file="myPageSidebar.jspf" %>
						<div class="col-three-forth animate-box">	
						<input type="hidden" name="memberId" value="${user.memberId}">
							<h2>취소된 예약 조회</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<div class="room-wrap">
									<c:if test="${empty canceledBookingList}">
										<p class="price"><span>조회되는 취소 내역이 없습니다.</span></p>
									</c:if>
									<c:if test="${!empty canceledBookingList}">
									<c:forEach var="canceledbooking" items="${canceledBookingList}">	
										<div class="row">							
											<div class="col-md-6 col-sm-6">
												<c:if test="${canceledbooking.hotelsImageName ne null}">
													<img src="${canceledbooking.hotelsImagePath}${canceledbooking.hotelsImageName}" 
																	style="height: 280px; width: 350px;">
												</c:if>
												<c:if test="${canceledbooking.hotelsImageName eq null}">
													<img src="resources/client/images/noImage.png" 
																	style="height: 280px; width: 350px;">
												</c:if>	
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>숙소명 : ${canceledbooking.hotelsName}</h2>
													<p class="price"><span>${canceledbooking.bookingTotalPrice}￦</span> <small>/ allNight</small></p>
													<p>방종류   : ${canceledbooking.roomSort}</p>
													<p>체크인    : ${canceledbooking.bookingCheckIn} / 체크아웃 : ${canceledbooking.bookingCheckOut}</p>
													<p>예약일자 : ${canceledbooking.bookingDate}</p>													
													<p><font color="red">취소일자 : ${canceledbooking.bookingCancelDate}</font></p>													
												</div><!-- desc -->
											</div> <!-- col-md-6 col-sm-6 -->											
										</a>
										<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
										</div> <!-- row -->
										</c:forEach>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="footer.jspf" %>		

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

	
	</body>
</html>

