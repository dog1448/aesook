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
					<div class="col-md-10 col-md-offset-1">
						<div>
							<h1 align="center">
							<c:if test="${type eq '호텔' }">HOTEL</c:if>
							<c:if test="${type eq '모텔' }">MOTEL</c:if>
							<c:if test="${type eq '게스트하우스' }">GUEST HOUSE</c:if>
							<c:if test="${type eq '펜션' }">PENSION</c:if>
							<c:if test="${type eq '리조트' }">RESORT</c:if>
							</h1>
							<div>&nbsp;</div><div>&nbsp;</div>
							<div>&nbsp;</div>
							<h4><span class="label label-info">${sido}</span></h4>
							<a data-toggle="modal" href="#modalPoll-1">
							<h3>${region}&nbsp;<i class="icon-circle-down"></i></h3></a>
						</div>
					<div class="text-right"> 
						<a data-toggle="modal" href="#modalSort">
						<button class="btn btn-info btn-outline">SORT&nbsp;&nbsp;<i class="icon-equalizer"></i>
						</button></a>
					</div>
					  <hr>
					</div>
					<div class="col-md-12 col-md-offset-1">
						<div class="row">
							<c:if test="${empty viewAll}">
								<div class="col-md-10 animate-box text-center">
									<div>&nbsp;</div>
									<div>&nbsp;</div>
									<span class="icon"><img src="resources/client/images/no_file.jpg" width="100" height="100" /></span>
									<div>&nbsp;</div>
									<h3>
										<font color="#0075b4">조회되는 목록이 없습니다.</font>
									</h3>
								</div>
							</c:if>
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

<!-- Modal Sort -->
<div class="modal fade" id="modalSort" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form role="form" method="GET" action="hotelsSortedList.do">
     <input type="hidden" name="type" value="${type}">
     <input type="hidden" name="sido" value="${sido}">
     <input type="hidden" name="region" value="${region}">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Sort Type</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
      <select class="form-control" name="sortCondition">
            <option>정렬선택</option>
            <option value="scoreAvg">인기가 높은 순으로 정렬</option>
            <option value="scoreCnt">후기가 많은 순으로 정렬</option>
            <option value="hotelsCode">최신 숙박업체 순으로 정렬</option>
      </select>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="submit" class="btn btn-info btn-outline">정렬하기</button>
        <button class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<!-- Modal Sort -->
<!-- Modal: modalPoll -->
<div class="modal fade right" id="modalPoll-1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
    <div class="modal-content">

      <!--Body-->
      <div class="modal-body">
        <div class="text-center">
          <i class="far fa-file-alt fa-4x mb-3 animated rotateIn"></i>
          <p>
            <strong>현재 지역</strong>
          </p>
            <strong>&nbsp;서울</strong>
          <p>강남/역삼/삼성/논현
          </p>
        </div>

        <hr>

        <!-- Radio -->
        <p class="text-center">
          <strong>Your can Choose</strong>
        </p>
        <div class="form-check mb-4">
          <input class="form-check-input" name="group1" type="radio" id="radio-179" value="option1" checked>
          <label class="form-check-label" for="radio-179">잠실/신천</label>
        </div>
        <div class="form-check mb-4">
          <input class="form-check-input" name="group1" type="radio" id="radio-279" value="option2">
          <label class="form-check-label" for="radio-279">신림/사당/동작</label>
        </div>

        <div class="form-check mb-4">
          <input class="form-check-input" name="group1" type="radio" id="radio-379" value="option3">
          <label class="form-check-label" for="radio-379">영등포/여의도</label>
        </div>
        <div class="form-check mb-4">
          <input class="form-check-input" name="group1" type="radio" id="radio-479" value="option4">
          <label class="form-check-label" for="radio-479">화곡/까치산/양천/목동</label>
        </div>
        <div class="form-check mb-4">
          <input class="form-check-input" name="group1" type="radio" id="radio-579" value="option5">
          <label class="form-check-label" for="radio-579">노원/도봉/창동</label>
        </div>
        <!-- Radio -->
      </div>

      <!--Footer-->
      <div class="modal-footer justify-content-center">
        <a type="button" class="btn btn-info waves-effect waves-light">GO
          <i class="fa fa-paper-plane ml-1"></i>
        </a>
        <a type="button" class="btn btn-outline-primary waves-effect" data-dismiss="modal">Cancel</a>
      </div>
    </div>
  </div>
</div>
<!-- Modal: modalPoll -->
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>
</html>

