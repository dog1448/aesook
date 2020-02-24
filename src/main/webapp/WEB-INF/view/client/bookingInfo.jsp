<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>
</head>
<body>
   <div class="colorlib-loader">  </div>

   <div id="page">
      <nav class="colorlib-nav" role="navigation">

      </nav>

      <div id="colorlib-about">
         <div class="container">
            <div class="row">
               <div class="about-flex">
               <!-- sideBar -->
				<%@ include file="myPageSidebar.jspf" %>
                  <div class="col-three-forth animate-box">
                     <form role="form" method="post" action="cancelBooking.do">
                        <h2>숙소 정보</h2>
                        <h4>숙소 이름 : ${bookingInfo.hotelsName}</h4>
                        <h4>방 타입 : ${bookingInfo.sortType}</h4>
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
                           <button type="button" onclick = "location.href = 'writeReview.do?bookingCode=${bookingInfo.bookingCode}'" class="btn btn-info btn-lg">후기쓰기</button>
                           <button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#cancelModal">예매취소</button>
                           <input type="hidden" name="bookingCode" value="${bookingInfo.bookingCode}">
                           <input type="hidden" name="memberId" value="${bookingInfo.memberId}">
                        </div>
                        
                       </form>
                    </div>
                 </div>
               </div>
            </div>
          </div>
          <!--Modal: modalPush-->
<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      	<div class="modal-header d-flex justify-content-center">
        <p class="heading">Confirm your Password</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <i class="fas fa-bell"></i>
        <p>정말 예약을 취소하시겠습니까?</p>
		<input type="password" placeholder="비밀번호 확인"><br></br>

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <button type="button" onclick = "location.href = 'cancelBooking.do?bookingCode=${bookingInfo.bookingCode}'" class="btn btn-info">Yes</button>
        <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No</a>
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