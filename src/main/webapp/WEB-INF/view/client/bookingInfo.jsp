<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>
<script>
	function checkz() {
	 	// 공백확인
	    if ($("#confirmPass").val() == "") {
	     alert("비밀번호를 입력해주세요");
	     $("#confirmPass").val("");
	     $("#confirmPass").focus();
	     return;
	   }
	    //비밀번호 확인
	    if($("#confirmPass").val() != ($("#memberPass").val())){ 
	    alert("비밀번호가 틀립니다.");
	    $("#confirmPass").val("");
	    $("#confirmPass").focus();
	    return;
	   }
		$('#cancelBooking').submit();
	}
</script>
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
                        <h2>숙소 정보</h2>
                        <h4>숙소 이름 : ${bookingInfo.hotelsName}</h4>
                        <h4>방 타입 : ${bookingInfo.roomSort}</h4>
                        <div>&nbsp;</div><div>&nbsp;</div>
                        <h2>예약 정보</h2>
                        <h4>예약자 이름 : ${bookingInfo.bookingName}</h4>
                        <h4>예약자 번호 : ${bookingInfo.bookingPhone}</h4>
                        <h4>체크인 날짜 : ${bookingInfo.bookingCheckIn}</h4>
                        <h4>체크아웃 날짜 : ${bookingInfo.bookingCheckOut}</h4>
                        <h4>예약 일자 : ${bookingInfo.bookingDate}</h4>
                        <h4>총 금액 : ${bookingInfo.bookingTotalPrice}원</h4>
                        <div>
                        <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
                           <button type="button" onclick="javascript:history.go(-1)" class="btn btn-secondary btn-lg">뒤로가기</button>
                           <c:if test="${bookingInfo.bookingStatus eq 'R'}">
		                           <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#reviewModal">내가 쓴 후기</button>
							</c:if>
                           <c:if test="${bookingInfo.bookingStatus eq 'B'}">
									<button type="button" onclick = "location.href = 'reviewWrite.do?bookingCode=${bookingInfo.bookingCode}'" class="btn btn-info btn-lg">후기 쓰기</button>
							</c:if>
                           <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#cancelModal">예매취소</button>
                           <input type="hidden" name="memberId" value="${bookingInfo.memberId}">
                        </div>
                    </div>
                 </div>
               </div>
            </div>
          </div>
          <!--#cancelModal: modalPush-->
<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<form role="form" id="cancelBooking" method="post" action="kakaoPayCancel.do">
<input type="hidden" name="bookingCode" value="${bookingInfo.bookingCode}">
  <div class="modal-dialog modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      	<div class="modal-header d-flex justify-content-center">
        <p class="heading">Confirm your Password</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <img src="resources/client/images/again.png" width="50" height="50"/><br></br>
        <p>정말 예약을 취소하시겠습니까?</p>
		<input type="password" id="confirmPass" placeholder="비밀번호 확인"><br></br>
		<input type="hidden" value="${user.memberPass}" id="memberPass">

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <button type="button" onclick="checkz()" class="btn btn-info">Yes</button>
        <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</form>
</div>
<!--Modal: modalPush-->

          <!--#reviewModal: modalPush-->
<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      	<div class="modal-header d-flex justify-content-center">
        <p class="heading">
        	<br>숙소명 : ${bookingInfo.hotelsName}
        	<br>방종류 : ${bookingInfo.roomSort}
        	<br>날   짜 : ${review.reviewDate}
        </p>
      </div>

      <!--Body-->
      <div class="modal-body">
		<c:if test="${review.reviewScore >= 4}">
			<img src="resources/client/images/good.png" width="35"
				height="35" />&nbsp;
		</c:if>
		<c:if test="${review.reviewScore == 3}">
			<img src="resources/client/images/soso.png" width="35"
				height="35" />&nbsp;
		</c:if>
		<c:if test="${review.reviewScore <= 2}">
			<img src="resources/client/images/bad.png" width="35" height="35" />&nbsp;
		</c:if>
			<c:forEach var="i" begin="1" end="${review.reviewScore}" step="1">
				<i class="icon-star-full"></i>
			</c:forEach><br></br>
		${review.reviewContents}
      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <a type="button" class="btn btn-info waves-effect" data-dismiss="modal">확인</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: modalPush-->
      <%@ include file="footer.jspf" %>
   </div>

   <div class="gototop js-top">
      <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
   </div>   

</body>

</html>