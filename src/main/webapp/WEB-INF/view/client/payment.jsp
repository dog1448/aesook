<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:useBean id="today" class="java.util.Date"/>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>
<script type="text/javascript">
	
	$(function() {
		$("#checkall").click(function() {

			var chk = $(this).is(":checked");

			if (chk) {
				$('input[name="agree"]').prop('checked', true);
			} else {
				$('input[name="agree"]').prop('checked', false);
			}

		});
	})
	
	function checkz() {
		var checkCnt = $('input[name=agree]:checked').length;
		
		if (checkCnt < 6) {
			alert("약관에 동의해주세요");
			return;
		}
		$('#insertBooking').submit();
	}
</script>
<style type="text/css">
.blue {
	background-color: #eaf7f9;
	margin-bottom: 20px;
}
</style>
</head>

<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@include file="main_header.jspf"%>

		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<form role="form" method="post" action="kakaoPay.do" id="insertBooking">
					<input type="hidden" name="hotelsCode" value="${booking.hotelsCode}">
					<input type="hidden" name="hotelsName" value="${booking.hotelsName}">
					<input type="hidden" name="roomName" value="${possibleRoom[0]}">
					<input type="hidden" name="roomSort" value="${booking.roomSort}">
					<input type="hidden" name="memberId" value="${booking.memberId}">
					<input type="hidden" name="bookingCheckIn" value="${booking.bookingCheckIn}">
					<input type="hidden" name="bookingCheckOut" value="${booking.bookingCheckOut}">
					<input type="hidden" name="bookingName" value="${booking.bookingName}">
					<input type="hidden" name="bookingPhone" value="${booking.bookingPhone}">
					<input type="hidden" name="bookingCnt" value="${booking.bookingCnt}">
					<input type="hidden" name="bookingTotalPrice" value="${totalPrice}">
						<div class="col-md-10 col-md-offset-1 blue animate-box">
							<div>&nbsp;</div>
							<h3 class="text-center">Check Your Reservation</h3>
							<hr>
							<div>&nbsp;</div>
							<div class="row form-group">
								<div class="panel panel-default col-sm-6">
									<div class="panel-heading">체크인 날짜</div>
									<div class="panel-body">
										<h1>${booking.bookingCheckIn}</h1>
									</div>
								</div>
								<div class="panel panel-default col-sm-6">
									<div class="panel-heading">체크아웃 날짜</div>
									<div class="panel-body">
										<h1>${booking.bookingCheckOut}</h1>
									</div>
								</div>
							</div>
							<div>&nbsp;&nbsp;</div>
							<div class="row form-group">
								<div class="col-sm-6">
									<label>숙소명</label>
									<h3>${booking.hotelsName}</h3>
								</div>
								<div class="col-sm-6">
									<label>방종류</label>
									<h3>${booking.roomSort}</h3>
								</div>
								<div class="col-sm-6">
									<label>예약자 이름</label>
									<h3>${booking.bookingName}</h3>
								</div>
								<div class="col-sm-6">
									<label>예약자 번호</label>
									<h3>${booking.bookingPhone}</h3>
								</div>
								<div class="col-sm-6">
									<label>예약 인원</label>
									<h3>${booking.bookingCnt}명</h3>
								</div>
								<div class="col-sm-6">
									<label>예약 일자</label>
									<h3><fmt:formatDate value="${today}" pattern="yyyy-MM-dd"/></h3>
								</div>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1 blue animate-box">
							<div>&nbsp;</div>
							<h3 class="text-center">Check Your Payment</h3>
							<hr>
							<div class="col-sm-6">
								<label>총 결제금액</label>
								<fmt:formatNumber type="number" var="totalPrice" maxFractionDigits="3" value="${totalPrice}" />
								<h2>${totalPrice} ￦</h2>
							</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div class="panel panel-default">
								<div class="panel-heading">결제수단 선택</div>
								<div class="panel-body">
									<div class="form-check">
										<input class="form-check-input" type="radio" id="kakaopay"
											checked> <img
											src="resources/client/images/kakaopay.jpg" height="50rem">
										<label class="form-check-label" for="kakaopay">&nbsp;카카오페이</label>
									</div>
								</div>
								<div>&nbsp;</div>
							</div>
						</div>
						<div class="col-md-10 col-md-offset-1 blue animate-box">
							<div>&nbsp;</div>
							<h3 class="text-center">Confirm the terms</h3>
							<hr>
							<div>
								&nbsp;<input type="checkbox" id="checkall"><strong>전체동의</strong><br>
								<input type="checkbox" name="agree">(필수) 만 14세 이상입니다.<br>
								<input type="checkbox" name="agree">(필수) 취소 규정 동의 <br>
								<input type="checkbox" name="agree">(필수) 숙소 이용규칙 동의 
									<a data-toggle="modal" href="#hotelsRuleModal">
										<span class="label label-primary"><small>보기</small></span></a><br>
								<input type="checkbox" name="agree">(필수) 개인정보 수집 및 이용 동의 
									<a data-toggle="modal" href="#infoSubmitModal">	
										<span class="label label-primary"><small>보기</small></span></a><br> 
								<input type="checkbox" name="agree">(필수) 개인정보 제3자 제공동의 
									<a data-toggle="modal" href="#infoUtilizeModal">	
										<span class="label label-primary"><small>보기</small></span></a><br> 
								<input type="checkbox" name="agree">(필수) 기준인원 초과 시 현장결제 하겠습니다<br>
							</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div class="text-center">
								<button type="button" onclick="javascript:history.go(-1)"
									class="btn btn-secondary btn-lg float-center">뒤로가기</button>
								<button type="button" onclick="checkz()"
									class="btn btn-info btn-lg float-center">결제하기</button>
							</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- hotelsRuleModal -->
<div class="modal fade" id="hotelsRuleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalScrollableTitle">숙소 이용 규칙</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
       		"숙소 이용 규칙"이 들어갈 곳
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
	<!-- infoSubmitModal -->
<div class="modal fade" id="infoSubmitModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalScrollableTitle">개인정보수집 이용약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
       		"개인정보수집 이용약관"이 들어갈 곳
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
	<!-- hotelsRuleModal Modal -->
<div class="modal fade" id="infoUtilizeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalScrollableTitle">개인정보 제 3자 제공 약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
       		"개인정보 제 3자 제공 약관"이 들어갈 곳
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
	<%@include file="footer.jspf"%>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>
</html>

