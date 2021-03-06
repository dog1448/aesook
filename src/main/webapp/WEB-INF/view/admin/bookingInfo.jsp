<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row"><div>&nbsp;</div>
                        <div class="col-lg-12">
                            <h1 class="page-header">Booking Info</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Booking Info Detail
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <form role="form" action="bookingInfo.admin" method="post" id="modifyBookingInfo">

                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>Booking_Code</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.bookingCode}" id="bookingCode" disabled>
                                                    <input type="hidden" value="${bookingInfo.bookingCode}" name="bookingCode">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Code</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.hotelsCode}" name="hotelsCode" id="hotelsCode" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Member_Id</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.memberId}" name="memberId" id="memberId" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Room_Name</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.roomName}" name="roomName" id="roomName">
                                                </div>
                                                <div class="form-group">
                                                    <label>Room_Sort</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.roomSort}" name="roomSort" id="roomSort">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Check_In</label>
                                                    <input class="form-control datePicker" type="text" value="${bookingInfo.bookingCheckIn}" name="bookingCheckIn" id="bookingCheckIn">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Check_Out</label>
                                                    <input class="form-control datePicker" type="text" value="${bookingInfo.bookingCheckOut}" name="bookingCheckOut" id="bookingCheckOut">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Name</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.bookingName}" name="bookingName" id="bookingName">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booker_Phone</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.bookingPhone}" name="bookingPhone" id="bookingPhone">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Cnt</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.bookingCnt}" name="bookingCnt" id="bookingCnt">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Date</label>
                                                    <input class="form-control" type="date" value="${bookingInfo.bookingDate}" name="bookingDate" id="bookingDate" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Cancel_Date</label>
                                                    <input class="form-control datePicker" type="text" value="${bookingInfo.bookingCancelDate}" name="bookingCancelDate" id="bookingCancelDate">
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Total_Price</label>
                                                    <input class="form-control" type="text" value="${bookingInfo.bookingTotalPrice}" name="bookingTotalPrice" id="bookingTotalPrice" >
                                                </div>
                                                <div class="form-group">
                                                    <label>Booking_Status</label>
                                                    <select class="form-control" id="statusSelectBox" name = "bookingStatus">
                                                        <option value="B">B</option>
                                                        <option value="C">C</option>
                                                        <option value="D">D</option>
                                                    </select>
                                                </div>
                                                </fieldset>

                                                <div class="col-lg-12"> 
                                                    <button type="button" onclick="modify()" class="btn btn-default float-left" id="modibt">Modify</button>
                                                    <button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">Cancel</button>
                                                    <button type="button" class="btn btn-warning float-left" id="disbt">disable</button>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-lg-6 (nested) -->
                                    </div>
                                    <!-- /.row (nested) -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
</div>
<%@ include file="javascript.jspf" %>
	<script>
		      var isDisabled = false;
			$(document).ready(function() {
                $('#statusSelectBox').val('${bookingInfo.bookingStatus}').prop('selected', true); 
            });

            $('#disbt').click(function() {
            		isDisabled = true;
                    $("#field").attr("disabled", false); //활성화
            });        
			
            function modify() {
				if (isDisabled == false) {
					  alert("disable을 선행하세요");
					  return;
				}
					 $('#modifyBookingInfo').submit();         	
			}
            
            $(function() {	
                
            	 $('#statusSelectBox')
            	
                $('.datePicker').datepicker({
                    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
                    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
                    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
                    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
                    datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
                    daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
                    daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
                    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
                    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
                    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
                    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
                    templates : {
                        leftArrow: '&laquo;',
                        rightArrow: '&raquo;'
                    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
                    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
                    title: "테스트",	//캘린더 상단에 보여주는 타이틀
                    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
                    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
                    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
                    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
                    
                	});//datepicker end
                
           	 });//ready end
			
           	
        </script>
</body>
</html>
