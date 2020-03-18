<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html lang="zxx">

<head>
<script type="text/javascript">
function checkz() {
	
	//전화번호 유효성 검사
	var regex= /^\d{2,3}-\d{3,4}-\d{4}$/;
	
	var value = $('#maxCnt').val();
	var checkOut = $('#date-out').val();
	var checkIn = $('#date-in').val();
	var hotelsCode = $('#hotelsCodeId').val();
	var roomSort = $('#roomSortId').val();
	var phone = document.getElementById("phone");
	
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
 	
    if ($("#cnt").val() < 1) {
        alert("인원수를 정확히 입력해주세요");
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
 	
    if (!check(regex, phone, "번호를 형식에 맞게 제대로 입력해주세요.")) {
		return;
	}	
    
	$.ajax({
	    url: "getPossibleRoom.do",
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

function check(re, what, message) {
	if (re.test(what.value)) {
		return true;
	}
	alert(message);
	what.value = "";
	what.focus();
	// return false;
}
</script>
<style type="text/css">
.white {
	background-color: white;
	border: none !important;
	
}
pre {
	white-space: pre-wrap;
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
		                            <img src="${roomPicList.hotelsImagePath}${roomPicList.hotelsImageName}" style="width: auto; height: 400px;">
		                        </div>	                           
                           </c:forEach> 
                         </c:if>
                         <c:if test="${empty roomPicList}">                        	                      		
		                       <div class="ts-item">
		                           <img src="resources/client/images/noImage.png" style="width: auto; height: 400px;">
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
                            <fmt:formatNumber type="number" var="roomStandardPrice" maxFractionDigits="3" value="${memberRoomVO.roomStandardPrice}" />
                            <fmt:formatNumber type="number" var="roomHolidayPrice" maxFractionDigits="3" value="${memberRoomVO.roomHolidayPrice}" />                                
                                <h2>${roomStandardPrice} ￦<span>&nbsp;&nbsp;&nbsp;평일</span></h2>
                                <h2>${roomHolidayPrice} ￦<span>&nbsp;&nbsp;&nbsp;공휴일</span></h2>
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
                                        <fmt:formatNumber type="number" var="roomAddPrice" maxFractionDigits="3" value="${memberRoomVO.roomAddPrice}" />
                                            <td class="r-o">추가인원 요금 : </td>
                                            <td>${roomAddPrice} ￦</td>
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
${memberRule.bookingRule }
                                </pre>
                                <h2>취소규정</h2>
                                <pre class="white">
${memberRule.cancelRule }
								</pre>
                            </div>                           
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="room-booking">
                        <form role="form" method="get" action="movePayment.do" id="reserve">
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