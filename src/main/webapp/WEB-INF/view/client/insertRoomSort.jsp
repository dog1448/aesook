<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>
<link href="resources/client/css/step.css" rel="stylesheet">
<link rel="stylesheet" href="resources/client/css/image.css">
<style type="text/css">
td, th {
	align-items: center;
	align-content: center;
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
    var i=1;
   $("#add_row").click(function(){
    $('#addr'+i).html("<tr><td><input name='roomList["+i+"].roomSort' type='text' placeholder='TYPE' class='form-control input-md roomSort'/> </td><td><input  name='roomList["+i+"].roomStandardCnt' type='number' placeholder='기준인원' class='form-control input-md roomStandardCnt'></td><td><input name='roomList["+i+"].roomMaxCnt' type='number' placeholder='최대인원' class='form-control input-md roomMaxCnt'></td><td><input  name='roomList["+i+"].roomStandardPrice' type='number' placeholder='평일요금'  class='form-control input-md roomStandardPrice'></td><td><input name='roomList["+i+"].roomHolidayPrice' type='number' placeholder='공휴일요금' class='form-control input-md roomHolidayPrice'/></td><td><input name='roomList["+i+"].roomAddPrice' type='number' placeholder='추가요금' class='form-control input-md roomAddPrice' /></td></tr><tr><td colspan='6'><input name='roomList["+i+"].roomInfo' placeholder='상세설명' type='text' class='form-control input-md roomInfo' /></td></tr>");

    $('#tab_logic').append('<tbody id="addr'+(i+1)+'"></tr>');
    i++; 
});
   $("#delete_row").click(function(){
       if(i>1){
		 $("#addr"+(i-1)).html('');
		 i--;
		 }
	 });

});

function checkz() {
		var flag = true;
		var roomSortList = new Array();
		
		$('.roomSort').each(function (index, item) {
			var test = $(item).val();
			roomSortList.push(test);
			if(test == ""){
				flag = false;
				alert("방 타입을 입력하세요.");					
				return;
			}	
		});
		if(!flag){
			return flag;
		}
		
		for (var i = 0; i < roomSortList.length; i++) {
			for (var j = i+1; j < roomSortList.length; j++) {
				if (roomSortList[i] == roomSortList[j]){
					alert("같은 이름의 방타입이 있습니다.");
					return;
				}
			}
		}
		
		
		$('.roomStandardCnt').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 최소 인원을 입력하세요.");					
				return;
			}
		});
		if(!flag){
			return flag;
		}
		
		$('.roomMaxCnt').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 최대 인원을 입력하세요.");					
				return;
			}
		});
		if(!flag){
			return flag;
		}
		
		$('.roomStandardPrice').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 평일 금액을 입력하세요.");					
				return;
			}
		});
		if(!flag){
			return flag;
		}
		
		$('.roomHolidayPrice').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 주말 금액을 입력하세요.");					
				return;
			}
		});
		if(!flag){
			return flag;
		}
		
		$('.roomAddPrice').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 추가 금액을 입력하세요.");					
				return;
			}
		});
		if(!flag){
			return flag;
		}
		
		$('.roomInfo').each(function (index, item) {
			var test = $(item).val();
			if(test == ""){
				flag = false;
				alert("방 정보를 입력하세요.");					
				return;
			}
		});			
		if(!flag){
			return flag;
		}
		
		$('#roomSortForm').submit();
	
}
</script>
<body>
<%@ include file="main_header.jspf" %>
	  <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
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
						<div>
		                  	<h2><strong>WRITE THE ROOM TYPE</strong></h2>
		                    <hr> 
                  		</div>
						<div class="container my-5">
						    <ul id="progressbar" class="text-center">
						        <li class="active" id="step1"><div class="d-none d-md-block">STEP 1</div></li>
						        <li class="active" id="step2"><div class="d-none d-md-block">STEP 2</div></li>
						        <li class="active" id="step3"><div class="d-none d-md-block">STEP 3</div></li>
						        <li class="" id="step4"><div class="d-none d-md-block">STEP 4</div></li>
						    </ul>
						</div>
							<hr>
							<form method="post" action="insertRoomSort.do" id="roomSortForm">
								  <div class="panel-body">
								    <div class="row">
								    	<div class="col-md-12 column">
											<table class="table table-bordered table-hover" id="tab_logic" border="1">
												<thead>
													<tr>
														<th>방 종류</th>
														<th>기준인원</th>
														<th>최대인원</th>
								                		<th>평일요금</th>
														<th>공휴일요금</th>
								                        <th>인원 추가 요금</th>
													</tr>
												</thead>
												<tbody id='addr0'>
													<tr>
														<td>
														<input type="text" name='roomList[0].roomSort'  placeholder='TYPE' class="form-control roomSort"/>
														</td>
														<td>
														<input type="number" name='roomList[0].roomStandardCnt' placeholder='기준인원'  class="form-control roomStandardCnt"/>
														</td>
								                        <td>
								    					<input type="number" name='roomList[0].roomMaxCnt' placeholder='최대인원'  class="form-control roomMaxCnt"/>
														</td>
														<td>
														<input type="number" name='roomList[0].roomStandardPrice' placeholder='평일요금' class="form-control roomStandardPrice"/>
														</td>
								                        <td>
								                        <input type='number' name='roomList[0].roomHolidayPrice' placeholder='공휴일요금' class="form-control roomHolidayPrice" />    
								                        </td>
								                        <td>
								                        <input type='number' name='roomList[0].roomAddPrice' placeholder='추가 요금' class="form-control roomAddPrice" />    
								                        </td>
								                     <tr>
									                    <td colspan="6">
									                    <input type='text' name='roomList[0].roomInfo' placeholder='상세설명' class="form-control roomInfo" />    
									                    </td>
								                     <tr>
													</tr>
												</tbody>
												<tbody id='addr1'>
												
												</tbody>
											</table>
								                <a id="add_row" class="btn btn-info btn-outline"> 추가</a>
								                <a id="delete_row" class="btn btn-danger btn-outline pull-right"></span> 삭제</a>
												</div>
												</div>
									 	</div>
											<hr>
					                        <div class="text-right">
					                         <button type="button" class="btn btn-warning" onclick="history.go(-1)">이전</button>
					                           <button type="button" onclick="checkz()" class="btn btn-info">다음</button>
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
</body>

</html>