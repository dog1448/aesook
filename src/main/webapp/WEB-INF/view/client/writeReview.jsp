<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>
<script type="text/javascript">
$(document).ready(function() {
	$('.starRev span').click(function(){
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	  });
});

function checkz() {
 	// 공백확인
    if ($("#reviewContents").val() == "") {
     alert("내용을 입력해주세요");
     $("#reviewContents").val("");
     $("#reviewContents").focus();
     return;
   }
    
 	var star = $('.on').length;
 	$('#starNo').val(star);
	console.log(star);
 	
	$('#insertReview').submit();
	
}
</script>

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
                        <h2>후기 쓰기</h2>
                       <!--리뷰 작성-->
                       <form role="form" id="insertReview" method="post" action="insertReview.do">
										<div id="colorlib-contact">
											<div class="container">
												<div class="row">
													<div class="col-md-10 animate-box">	
														<div class="row form-group">
															<div class="col-md-12">
																<label for="subject">
																<h4>숙소명 : ${bookingInfo.hotelsName}</h4>
																<h4>방종류 : ${bookingInfo.sortType}</h4>
																<input type="hidden" value="${user.memberId}" name="memberId">
																<input type="hidden" value="${bookingInfo.hotelsCode}" name="hotelsCode">
																<input type="hidden" value="${bookingInfo.bookingCode}" name="bookingCode">
																<input type="hidden" name="reviewScore" id="starNo">
																</label>
															</div>
														</div>
														<div class="row form-group">
															<div class="col-md-12">
																<label for="subject">별점</label>
																<div class="starRev">
																	<span class="starR on">별1</span>
																	<span class="starR">별2</span>
																	<span class="starR">별3</span>
																	<span class="starR">별4</span>
																	<span class="starR">별5</span>
																</div>
															</div>
														</div>


														<div class="row form-group">
															<div class="col-md-8">
																<label for="message">내용</label>
																<textarea name=reviewContents cols="30"
																	rows="10" class="form-control"
																	placeholder=""></textarea>
															</div>
														</div>
														<div class="form-group text-center">
															<button type="button" class="btn btn-info btn-lg" onclick="checkz()" class="btn btn-info">작성하기</button>
															<button type="button" onclick="javascript:history.go(-1)" class="btn btn-secondary btn-lg">뒤로가기</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 리뷰 끝-->
						</form>
                    </div>
                 </div>
               </div>
            </div>
          </div>
      <%@ include file="footer.jspf" %>
   </div>

   <div class="gototop js-top">
      <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
   </div>   

</body>

</html>