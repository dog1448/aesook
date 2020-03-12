<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<script type="text/javascript">

function checkz() {
	
	var value = $('#maxCnt').val();
	var checkOut = $('#date-out').val();
	var checkIn = $('#date-in').val();
	var hotelsCode = $('#hotelsCodeId').val();
	var roomSort = $('#roomSortId').val();

	//체크인 날짜 공백 확인
    if($("#date-in").val() == ""){
      alert("체크인 날짜를 입력해주세요");
      $("#date-in").focus();
      return;
    }
    
	//체크아웃 날짜 공백 확인
    if($("#date-out").val() == ""){
      alert("체크아웃 날짜를 입력해주세요");
      $("date-out").focus();
      return;
    }
	
	//체크인, 체크아웃 날짜 설정 확인
    if(new Date(checkOut) <= new Date(checkIn)){
		alert("체크아웃 날짜가 체크인 날짜와 같거나 더 앞섭니다.");
		return;
	}
	
 	//인원 공백확인
    if ($("#cnt").val() == "") {
     alert("인원수를 입력해주세요");
     $("#cnt").val("");
     $("#cnt").focus();
     return;
   }
 	
 	//인원수 확인
	if($("#cnt").val() > value){
		alert("기입한 인원수가 최대 수용 인원보다 많습니다.");
		return;
	}
 	
 	//예약자 이름 공백확인
    if ($("#name").val() == "") {
     alert("예약자 이름을 입력해주세요");
     $("#name").val("");
     $("#name").focus();
     return;
   }
 	//예약자 전화번호 공백확인
    if ($("#phone").val() == "") {
     alert("예약자 전화번호를 입력해주세요");
     $("#phone").val("");
     $("#phone").focus();
     return;
    }
    
	$.ajax({
	    url: "getRoomPossible.do",
	    type: "GET",
	    data: {
	  		"bookingCheckOut" : checkOut,
	  		"bookingCheckIn" : checkIn,
	  		"hotelsCode" : hotelsCode,
	  		"roomSort" : roomSort
	    },
	    dataType: "json"
	})
	.done(function(json) {
	       		if(json.length==0){
	       			alert("해당 날짜에 예약이 불가능한 방입니다.");
	       			return;
	       		}
	       $('#reserve').submit();
	});
	
	  
}
</script>
<style type="text/css">
.white {
	background-color: white;
	border: none !important;
}
</style>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/client/css/bootstrap2.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/owl.carousel2.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/magnific-popup2.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/style2.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/bootstrap.css">
    <link rel="stylesheet" href="resources/client/css/style.css">
</head>

<body>
    <div id="page">
        <%@ include file="main_header.jspf" %>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        
          <!-- Testimonial Section Begin -->
        <section class="testimonial-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="testimonial-slider owl-carousel">
                        <c:if test="${not empty roomPicList}">
                        	<c:forEach var="roomPicList" items="${roomPicList}">                        		
		                        <div class="ts-item">
		                            <img src="${roomPicList.hotelsImagePath}${roomPicList.hotelsImageName}" style="width: 1200px; height: 400px;">
		                        </div>	                           
                           </c:forEach> 
                         </c:if>
                         <c:if test="${empty roomPicList}">                        	                      		
		                       <div class="ts-item">
		                           <img src="resources/client/images/noImage.png" style="width: 1200px; height: 400px;">
		                       </div>
                         </c:if>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section End -->

        <!-- Breadcrumb Section Begin -->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>${memberRoomVO.roomSort}</h2>
                            <div>
                                <h4>${memberhotelsVO.hotelsName}</h4>
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->



        <!-- Room Details Section Begin -->
        <section class="room-details-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="room-details-item">
                            <div class="rd-text">                                
                                <h2>${memberRoomVO.roomStandardPrice} ￦<span>&nbsp;&nbsp;&nbsp;평일</span></h2>
                                <h2>${memberRoomVO.roomHolidayPrice} ￦<span>&nbsp;&nbsp;&nbsp;공휴일</span></h2>
                                <table>
                                    <tbody>                                   		
                                        <tr>
                                            <td class="r-o">기준 인원 : </td>
                                            <td>${memberRoomVO.roomStandardCnt} 명</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">최대 인원 : </td>
                                            <td>${memberRoomVO.roomMaxCnt} 명</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">추가인원 요금 : </td>
                                            <td>${memberRoomVO.roomAddPrice} ￦</td>
                                        </tr>    
                                    </tbody>
                                </table>                              
                               
                               	<h2>객실설명</h2>
                                <pre class="white">${memberRoomVO.roomInfo}</pre>
                                <div>&nbsp;</div>
                                <hr>
                                <div>&nbsp;</div>
                               	<h2>예약공지</h2>
                                <pre class="white">
ㆍ당일예약 특성 상 환불 및 취소가 불가합니다.
ㆍ객실요금은 기준인원 입실 기준이며, 파티룸 등 특수객실의 경우, 직접 입실 인원 확인이 필요합니다.
ㆍ미성년자의 입실 가능여부는 직접 제휴점에 확인 후 예약 진행하시기 바랍니다.
ㆍ미성년자 혼숙예약으로 인해 발생하는 입실 거부에 대해서는 취소/환불이 불가합니다.
ㆍ제휴점 사정에 의한 취소 발생 시 100% 환불 처리됩니다.
ㆍ제휴점 사정으로 객실 정보가 수시로 변경될 수 있습니다. 이로 인한 불이익은 당사가 책임지지 않습니다.
                                </pre>
                                <h2>취소규정</h2>
                                <pre class="white">
ㆍ입실 1일 전 24시 전까지 : 수수료 없음
ㆍ당일 취소 및 No-Show, 입실시간 경과/실제 입실 후: 환불불가
								</pre>
                            </div>                           
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="room-booking">
                        <form role="form" method="post" action="movePayment.do" id="reserve">
                        <input type="hidden" id = "hotelsCodeId" name="hotelsCode" value="${memberRoomVO.hotelsCode}">
                        <input type="hidden" id = "hotelsNameId" name="hotelsName" value="${memberhotelsVO.hotelsName}">
                        <input type="hidden" id = "roomSortId" name="roomSort" value="${memberRoomVO.roomSort}">
                        <input type="hidden" id = "roomStandardPrice" name="roomStandardPrice" value="${memberRoomVO.roomStandardPrice}">
                        <input type="hidden" id = "roomHolidayPrice" name="roomHolidayPrice" value="${memberRoomVO.roomHolidayPrice}">
                        <input type="hidden" id = "maxCnt" name="roomMaxCnt" value="${memberRoomVO.roomMaxCnt}">
                        
                            <h3>Your Reservation</h3>
                                <div class="check-date">
                                    <label for="date-in">체크인:</label>
                                    <input type="date" class="form-control date-input" id="date-in" name="bookingCheckIn" value= "${bookingCheckIn}">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="check-date">
                                    <label for="date-out">체크아웃:</label>
                                    <input type="date" class="form-control date-input" id="date-out" name="bookingCheckOut"  value="${bookingCheckOut}">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="select-option">
                                    <label for="guest">인원</label>
                                    <input type="number" class="form-control" id="cnt" name="bookingCnt" name="bookingCnt" placeholder="숫자만 입력하세요" >
                                    <i class="icon-pencil"></i>
                                </div>
                                <div>
									<label for="email">예약자 이름</label>
									<input type="text" id="name" name="bookingName" class="form-control" placeholder="이름을 입력하세요">
								</div>
								<div>&nbsp;</div>
								<div>
									<label for="email">예약자 전화번호</label>
									<input type="text" id="phone" name="bookingPhone" class="form-control" placeholder="-를 붙여 입력하세요.">
								</div>       
								<div>&nbsp;</div>                        
                                <button type="button" onclick="checkz()">예약하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->

        <%@ include file="footer.jspf" %>

    <!-- Js Plugins -->
    <script src="resources/client/js/jquery-3.3.1.min.js"></script>
    <script src="resources/client/js/bootstrap2.min.js"></script>
    <script src="resources/client/js/jquery.magnific-popup2.min.js"></script>
    <script src="resources/client/js/jquery.nice-select.min.js"></script>
    <script src="resources/client/js/jquery-ui.min.js"></script>
    <script src="resources/client/js/jquery.slicknav.js"></script>
    <script src="resources/client/js/owl.carousel2.min.js"></script>
    <script src="resources/client/js/main2.js"></script>

    <!-- Flexslider -->
    <script src="resources/client/js/jquery.flexslider-min.js"></script>
    <!-- Owl carousel -->
    <script src="resources/client/js/owl.carousel.min.js"></script>
    <!-- Magnific Popup -->
    <script src="resources/client/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/client/js/magnific-popup-options.js"></script>
    <!-- Date Picker -->
    <script src="resources/client/js/bootstrap-datepicker.js"></script>
    <!-- Stellar Parallax -->
    <script src="resources/client/js/jquery.stellar.min.js"></script>

    <!-- Main -->
    <script src="resources/client/js/main.js"></script>
</body>

</html>