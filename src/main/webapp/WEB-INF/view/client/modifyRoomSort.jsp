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

$(document).on('click', 'button[name=modify]', function() {
	
	var test = $(this).parents('form');
	
	if(test.find('input[name=roomStandardCnt]').val() == "") {
		alert("기준인원을 입력해주세요.");
		return;
	} 
	
	if(test.find('input[name=roomMaxCnt]').val() == "") {
		alert("최대인원을 입력해주세요.");
		return;
	} 
	
	if(test.find('input[name=roomStandardPrice]').val() == "") {
		alert("평일요금을 입력해주세요.");
		return;
	} 
	
	if(test.find('input[name=roomHolidayPrice]').val() == "") {
		alert("공휴일요금을 입력해주세요.");
		return;
	} 
	
	if(test.find('input[name=roomAddPrice]').val() == "") {
		alert("인원 추가 요금을 입력해주세요.");
		return;
	}
	
	if(test.find('input[name=roomInfo]').val() == "") {
		alert("상세설명을 입력해주세요.");
		return;
	}
	
	test.submit();
	
})

$(document).on('click', 'button[name=delete]', function() {
	
	var confirmVal = confirm('이 방종류에 해당하는 방들이 전부 사라집니다.\n정말 삭제하시겠습니까?');
	if (!confirmVal) {
		return;
	}
	
	var test = $(this).parents('form');
	test.attr("action", "modifyDeleteRoomSort.do");
	test.submit();
});

var roomSortList = new Array();
var roomNameList = new Array();
$(document).ready(function(){
	<c:forEach var="sort" items="${roomSortList}">
		roomSortList.push("${sort.roomSort}");
	</c:forEach>
	<c:forEach var="sort" items="${roomNameList}">
		roomNameList.push("${sort.roomName}");
	</c:forEach>
});

function insertModifySort() {
	
	if($('#tdRoomName').val() == "") {
		alert("방 이름을 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomSort').val() == "") {
		alert("방 종류를 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomStandardCnt').val() == "") {
		alert("기준인원을 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomMaxCnt').val() == "") {
		alert("최대인원을 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomStandardPrice').val() == "") {
		alert("평일요금을 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomHolidayPrice').val() == "") {
		alert("공휴일요금을 입력해주세요.");
		return;
	} 
	
	if($('#tdRoomAddPrice').val() == "") {
		alert("인원 추가 요금을 입력해주세요.");
		return;
	} 

	if($('#tdRoomInfo').val() == "") {
		alert("상세설명을 입력해주세요.");
		return;
	} 
	
	for (var i = 0; i < roomNameList.length; i++) {
		if ($('#tdRoomName').val() == roomNameList[i]){
			alert("같은 이름의 방이 있습니다.");
			return
		}
	}
	
	for (var i = 0; i < roomSortList.length; i++) {
		if ($('#tdRoomSort').val() == roomSortList[i]){
			alert("같은 종류의 방이 있습니다.");
			return
		}
	}
	
	$('#insertRoomSortForm').submit();
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
		                  	<h2><strong>MODIFY THE ROOM TYPE</strong></h2>
		                    <hr> 
                  		</div>
								  <div class="panel-body">
								    <div class="row">
								    	<div class="col-md-12 column">
								    	<c:forEach var="room" items="${roomSortList}">
											<form method="post" action="modifyUpdateRoomSort.do" class="roomSortForm">
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
												<tbody>
													<tr>
														<td>
														<input type="text" name='roomSort' value="${room.roomSort}"  class="form-control roomSort" disabled="disabled"/>
														<input type="hidden" name='roomSort' value="${room.roomSort}"  class="form-control roomSort"/>
														</td>
														<td>
														<input type="number" name='roomStandardCnt' value="${room.roomStandardCnt}"  class="form-control roomStandardCnt"/>
														</td>
								                        <td>
								    					<input type="number" name='roomMaxCnt' value="${room.roomMaxCnt}"  class="form-control roomMaxCnt"/>
														</td>
														<td>
														<input type="number" name='roomStandardPrice' value="${room.roomStandardPrice}" class="form-control roomStandardPrice"/>
														</td> 
								                        <td>
								                        <input type='number' name='roomHolidayPrice' value="${room.roomHolidayPrice}" class="form-control roomHolidayPrice" />    
								                        </td>
								                        <td>
								                        <input type='number' name='roomAddPrice' value="${room.roomAddPrice}" class="form-control roomAddPrice" />    
								                        </td>
								                    <tr>
								                    <tr>
									                    <td colspan="4">
									                    <input type='text' name='roomInfo' value="${room.roomInfo}" class="form-control roomInfo" />
									                    </td>
									                    <td colspan="2" class="text-center">
									                    	<button type="button" name="modify" class="btn btn-warning btn-outline">변경</button>
									                    	<button type="button" name="delete" class="btn btn-danger btn-outline">삭제</button>
									                    </td>
													</tr>
												</tbody>
											</table>
									        <input type="hidden" name="hotelsCode" value="${hotelsCode}"/>
											</form>
											</c:forEach>
											</div><!-- col-md-12 column -->
										</div><!-- row -->
								 	</div><!-- panel-body -->
											<hr>
					                        <div class="text-left">
					                           <button type="button" data-toggle="modal" data-target="#modifyInsertRoomSort"  class="btn btn-info btn-outline" onclick="">추가</button>
					                        </div>
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
<!-- modifyInsertRoomSort Modal -->
<!-- Modal Room Type -->
<div class="modal fade" id="modifyInsertRoomSort" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
     <form method="post" action="modifyInsertRoomSort.do" id="insertRoomSortForm">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">최소한의 1개의 방이 있어야 방 종류가 생성가능합니다.</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
		<table class="table table-bordered table-hover" id="tab_logic" border="1">
				<tbody id='addr0'>
					<tr>
						<td colspan="2">
						<input type="text" id="tdRoomName" name='roomName'  placeholder='NAME' class="form-control roomName"/>
						</td>
						<td>
						<input type="text" id="tdRoomSort"  name='roomSort'  placeholder='TYPE' class="form-control roomSort"/>
						</td>
						<td>
						<input type="number" id="tdRoomStandardCnt"  name='roomStandardCnt' placeholder='기준인원'  class="form-control roomStandardCnt"/>
						</td>
					</tr>
					<tr>
                        <td>
    					<input type="number" id="tdRoomMaxCnt" name='roomMaxCnt' placeholder='최대인원'  class="form-control roomMaxCnt"/>
						</td>
						<td>
						<input type="number" id="tdRoomStandardPrice"  name='roomStandardPrice' placeholder='평일요금' class="form-control roomStandardPrice"/>
						</td>
                        <td>
                        <input type='number' id="tdRoomHolidayPrice"  name='roomHolidayPrice' placeholder='공휴일요금' class="form-control roomHolidayPrice" />    
                        </td>
                        <td>
                        <input type='number' id="tdRoomAddPrice"  name='roomAddPrice' placeholder='추가 요금' class="form-control roomAddPrice" />    
                        </td>
                     </tr>
                     <tr>
	                    <td colspan="4">
	                    <input type='text' id="tdRoomInfo"  name='roomInfo' placeholder='상세설명' class="form-control roomInfo" />    
	                    </td>
                     <tr>
					</tr>
				</tbody>
			</table>
      </div>
		<input type="hidden" value="${hotelsCode}" name="hotelsCode">
      <!--Footer-->
      <div class="modal-footer">
        <input type="button" onclick="insertModifySort()" class="btn btn-info btn-outline" value="등록하기">
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<!-- Modal: RoomType -->
</html>