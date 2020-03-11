<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>

<script type="text/javascript">

	$(document).ready(function() {

		$(window).scroll(function () {

			// 현재 위치의 높이

			//var curHeight = $(window).height() + $(window).scrollTop();

			var curHeight = $(window).scrollTop();

			// 문서의 높이

			var docHeight = $(document).height();

		});

	});

</script>

<title>게시판 목록</title>
</head>
<body>

	<div class="colorlib-loader"></div>

	<!-- 숙소 게시판 -->
	<div id="page">
		<%@include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

	
		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="wrap-division">
							
								<c:forEach var="list" items="${viewAll}">
									<div class="col-md-6 col-sm-6 animate-box">
										<div class="hotel-entry">
									 
										<c:if test="${list.hotelsImageStatus eq 'M' }">										
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="${list.hotelsImagePath}${list.hotelsImageName}" style="height: 280px; width: 350px;">																					
											</a>											
										</c:if>
										<c:if test="${list.hotelsImageStatus ne 'M' }">
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="resources/client/images/noImage.png" style="height: 280px; width: 350px;">																	
											</a>
										</c:if>							
											<div class="desc">
												<p class="star">
													<span>
														<c:if test="${list.scoreAvg == 0}">
															<i class="icon-star-empty"></i>
														</c:if>
														<c:forEach var="i" begin="1" end="${list.scoreAvg}"
															step="1">
															<i class="icon-star-full"></i>
														</c:forEach>
													</span>
													${list.scoreCnt} Reviews
												</p>
												<h3>
													<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}&hotelsName=${list.hotelsName}">${list.hotelsName}</a>
												</h3>
												<span class="place">${list.hotelsAddress1} ${list.hotelsAddress2}</span>
												<p>${list.hotelsPath}</p>
											</div>
										</div>
									</div>
								</c:forEach>
								
							</div>
						</div>						
					</div>

				</div>
			</div>
		</div>			
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>
</html>

