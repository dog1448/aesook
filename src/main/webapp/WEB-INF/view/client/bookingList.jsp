<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<c:if test="${message ne null}">
	<script type="text/javascript">
	var message = "${message}";
	alert(message);
	</script>
</c:if>
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
							<h2>예약 조회</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<div class="room-wrap">
									<c:if test="${empty bookingList}">
										<p class="price"><span>조회되는 예약 내역이 없습니다.</span></p>
									</c:if>
									<c:if test="${!empty bookingList}">
									<c:forEach var="booking" items="${bookingList}">	
										<div class="row">
											<input type="hidden" name="bookingCode" value="${booking.bookingCode}">
											<a href="bookingInfo.do?bookingCode=${booking.bookingCode}">								
											<div class="col-md-6 col-sm-6">
												<c:if test="${booking.hotelsImageName ne null}">
													<img src="${booking.hotelsImagePath}${booking.hotelsImageName}" 
																	style="height: 280px; width: 100%;">
												</c:if>
												<c:if test="${booking.hotelsImageName eq null}">
													<img src="resources/client/images/noImage.png" 
																	style="height: 280px; width: 100%;">
												</c:if>				
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
												<fmt:formatNumber type="number" var="bookingTotalPrice" maxFractionDigits="3" value="${booking.bookingTotalPrice}" />
													<h2>숙소명 : ${booking.hotelsName}</h2>
													<p class="price"><span>${bookingTotalPrice}￦</span> <small>/ allNight</small></p>
													<p>체크인    : ${booking.bookingCheckIn}</p>
													<p>체크아웃 : ${booking.bookingCheckOut}</p>
													<p>예약일자 : ${booking.bookingDate}</p>													
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

