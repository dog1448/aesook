<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>

</head>

<body>
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation"></nav>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<!-- 사이드바 -->
						<%@ include file="managementSidebar.jspf"%>
						<div class="col-three-forth animate-box">
							<nav class="navbar navbar-default">
								<ul class="nav navbar-nav">
									<li><a href="#">약관 동의</a></li>
									<li><a href="#">숙소 등록</a></li>
									<li class="active"><a href="#">객실 등록</a></li>
								</ul>
							</nav>
							<hr>
							<form method="post" action="insertRoomSort.do">

								<!-- 객체 자체로 넘겨받는데 못받음 그래서 이렇게 한거임... -->
								<input type="hidden" name="hotelsName"
									value="${memberHotelsVO.hotelsName}"> <input
									type="hidden" name="hotelsType"
									value="${memberHotelsVO.hotelsType}"> <input
									type="hidden" name="memberId"
									value="${memberHotelsVO.memberId}"> <input
									type="hidden" name="hotelsPhone"
									value="${memberHotelsVO.hotelsPhone}"> <input
									type="hidden" name="hotelsZipcode"
									value="${memberHotelsVO.hotelsZipcode}"> <input
									type="hidden" name="hotelsAddress1"
									value="${memberHotelsVO.hotelsAddress1}"> <input
									type="hidden" name="hotelsAddress2"
									value="${memberHotelsVO.hotelsAddress2}"> <input
									type="hidden" name="hotelsPath"
									value="${memberHotelsVO.hotelsPath}"> <input
									type="hidden" name="hotelsInfo"
									value="${memberHotelsVO.hotelsInfo}"> <input
									type="hidden" name="hotelsIntroduce"
									value="${memberHotelsVO.hotelsIntroduce}"> <input
									type="hidden" name="facilityParking"
									value="${memberFacilityVO.facilityParking}"> <input
									type="hidden" name="facilityPool"
									value="${memberFacilityVO.facilityPool}"> <input
									type="hidden" name="facilityBreakfast"
									value="${memberFacilityVO.facilityBreakfast}"> <input
									type="hidden" name="facilityFitness"
									value="${memberFacilityVO.facilityFitness}"> <input
									type="hidden" name="facilityWifi"
									value="${memberFacilityVO.facilityWifi}"> <input
									type="hidden" name="facilityParty"
									value="${memberFacilityVO.facilityParty}"> <input
									type="hidden" name="facilityPc"
									value="${memberFacilityVO.facilityPc}"> <input
									type="hidden" name="facilityAmenity"
									value="${memberFacilityVO.facilityAmenity}">

								<button type="button" class="btn btn-success" onclick="add();">객실추가</button>
								<div>&nbsp;</div>
								<div id="hey">
									<div class="form-group">
										<div class="col-sm-6">
											<label>방 이름</label> <input type="text" class="form-control"
												placeholder="Ex>101호, 새싹방" name="roomName" id="roomName">
										</div>
										<div class="col-sm-6">
											<label>방 종류</label> <input type="text" class="form-control"
												placeholder="Ex>디럭스룸, 스위트룸" name="roomSort" id="roomSort">
										</div>
										<div class="col-sm-6">
											<label>기준 인원</label> <input type="text" class="form-control"
												placeholder="인원 수 입력" name="roomStandardCnt"
												id="roomStandardCnt">
										</div>
										<div class="col-sm-6">
											<label>최대 인원</label> <input type="text" class="form-control"
												placeholder="인원 수 입력" name="roomMaxCnt" id="roomMaxCnt">
										</div>
										<div class="col-sm-6">
											<label>평일 요금</label> <input type="text" class="form-control"
												placeholder="요금 입력" name="roomStandardPrice"
												id="roomStandardPrice">
										</div>
										<div class="col-sm-6">
											<label>공휴일 요금</label> <input type="text" class="form-control"
												placeholder="요금 입력" name="roomHolidayPrice"
												id="roomHolidayPrice">
										</div>
										<div class="col-sm-6">
											<label>인원 추가당 요금</label> <input type="text"
												class="form-control" placeholder="요금 입력" name="roomAddPrice"
												id="roomAddPrice">
										</div>
										<div class="col-sm-6">
											<label>방 상세설명</label> <input type="text" class="form-control"
												placeholder="설명 입력" name="roomRoomInfo" id="roomRoomInfo">
										</div>
									</div>
									<div>&nbsp;</div>
									<div>&nbsp;</div>
								</div>
								<div>&nbsp;</div>
								<hr>
								<div>
									<button type="button" class="btn btn-warning"
										onclick="history.go(-1)">이전</button>
									<button type="submit" id="submit" class="btn btn-info">등록</button>

								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jspf"%>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	<script type="text/javascript">
		
		var room = '<div class="form-group"><div class="col-sm-6"><label>방 이름</label><input type="text" class="form-control" placeholder="Ex>101호, 새싹방" name="roomName" id="roomName"></div><div class="col-sm-6"><label>방 종류</label><input type="text" class="form-control" placeholder="Ex>디럭스룸, 스위트룸" name="roomSort" id="roomSort"></div><div class="col-sm-6"><label>기준 인원</label><input type="text" class="form-control" placeholder="인원 수 입력" name="roomStandardCnt" id="roomStandardCnt"></div><div class="col-sm-6"><label>최대 인원</label><input type="text" class="form-control" placeholder="인원 수 입력" name="roomMaxCnt" id="roomMaxCnt"></div><div class="col-sm-6"><label>평일 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomStandardPrice" id="roomStandardPrice"></div><div class="col-sm-6"><label>공휴일 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomHolidayPrice" id="roomHolidayPrice"></div><div class="col-sm-6"><label>인원 추가당 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomAddPrice" id="roomAddPrice"></div><div class="col-sm-6"><label>방 상세설명</label><input type="text" class="form-control" placeholder="설명 입력" name="roomRoomInfo" id="roomRoomInfo"></div><div>&nbsp;</div><div class="col-sm-6"><button type="button" class="btn btn-secondary">객실삭제</button></div><div>&nbsp;</div><div>&nbsp;</div></div></div>'
		
		function add() {
			$("#hey").append(room);
		}
		$(document).on("click", ".btn-secondary", function() {

			$(this).closest(".form-group").remove();

		});

		$(document).on("click", "#submit", function() {
			var flag = true;
			$('input[name=roomName]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 이름을 입력하세요.");					
					return;
				}	
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomSort]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 종류를 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomStandardCnt]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 최소 인원을 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomMaxCnt]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 최대 인원을 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomStandardPrice]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 평일 금액을 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomHolidayPrice]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 주말 금액을 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomAddPrice]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 추가 금액을 입력하세요.");					
					return;
				}
			});
			if(!flag){
				return flag;
			}
			
			$('input[name=roomRoomInfo]').each(function () {
				var test = $(this).val();
				if(test == ""){
					flag = false;
					alert("방 정보를 입력하세요.");					
					return;
				}
			});			
			if(!flag){
				return flag;
			}
			
			alert("방이 성공적으로 등록되었습니다.");

		});
	</script>
</body>

</html>