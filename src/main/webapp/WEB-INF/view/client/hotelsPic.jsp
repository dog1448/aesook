<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jspf" %>
<title>Insert title here</title>
<link rel="stylesheet" href="resources/client/css/image2.css">
<style type="text/css">
hr {
	 width : 70%;
	 border-top : 2px solid #eeeeee;
}
</style>
<script type="text/javascript">
function mainPic() {
	var checkCnt = $('input[name=cbox]:checked').length;
	if(checkCnt >= 2) {
		alert("대표사진은 하나만 선택 가능합니다.");
		return;
	} else if (checkCnt == 0) {
		alert("선택된 사진이 없습니다.");
		return;
	}
	
	var checkValue = $('input[name=cbox]:checked').val();
	var hCode = $('#hCode').val();
	$.ajax({
        url: "hotelsMainPic.do",
        type: "GET",
        data: {
      		"hotelsCode" : hCode,
        	"hotelsImageNo" : checkValue
        },
        dataType: "json"
    })
        .done(function(json) {
            console.log(json);
       		var main = json;
			$('#mainPic').attr("src", main.hotelsImagePath + main.hotelsImageName);
			$('input[name=cbox]:checked')
        })
        .fail(function (xhr, status, errorThrown) {
            alert(errorThrown);
        });
}

$(function(){
	 $("#checkall").click(function(){
         
         var chk = $(this).is(":checked");
         
         if(chk){
             $('input[name="cbox"]').prop('checked', true);
         }else{
             $('input[name="cbox"]').prop('checked', false);
         }
         
     });
})
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
                  <!-- 사이드바 -->
                 <%@ include file="managementSidebar.jspf" %>
            	
            	 <div class="col-three-forth animate-box">
                  <div class="container">
					   <div class="row it">
                 		 <h2>대표 사진</h2>
                 		 <hr align="left">
	   				   <p class="text-left"><strong>대표사진을 누르면 확대가 됩니다.</strong></p>
					    <div class="col-sm col-sm-5 one">
					    <c:if test="${mainImage eq null}">
						 <img src="resources/client/images/noImage.png" id ="mainPic" >	
						</c:if>
						<c:if test="${mainImage ne null}">
						 <img src="${mainImage.hotelsImagePath}${mainImage.hotelsImageName}" id ="mainPic" >	
						</c:if>
						</div><!-- one -->
				</div><!-- row -->
			</div><!-- container -->
			<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
			 <div class="container">
				<div class="row it">
            	    <h2>나의 호텔 Image</h2>
                 	<hr align="left">
                 	<p class="text-left"><strong>Hotels Images</strong></p>
                 	<div class="col-sm col-sm-10 one">
                 	
                 	    <!-- Modal content-->
					    <div class="modal-content">
					      <div class="modal-header">
					      <input type="checkbox" class="icon icon-checkbox-checked" id="checkall">  전체선택 / 해제
					       <input type="hidden" id="hCode" name="hotelsCode" value="${hotels.hotelsCode}"> 
					      </div>
					      
					      <div class="modal-body" >
					         <div class="container-fluid">
					          <div class="row inner-scroll" >
					          <c:if test="${!empty imageList}">
					          	<c:forEach var="image" items="${imageList}">
									<div class="col-md-2">
									  <div class="gallery-card">
										<div class="gallery-card-body">
										  <label class="block-check">
										 <img src="${image.hotelsImagePath}${image.hotelsImageName}" class="img-responsive" />
										 <input type="checkbox" name="cbox" value="${image.hotelsImageNo}">
										  <span class="checkmark"></span>
										  </label>
										   <div class="mycard-footer">
											<a href="#" class="card-link">${image.hotelsImageOrigin}</a>
											</div>
										</div>
									  </div>
									</div><!-- col-md-2 end -->
								</c:forEach>
								</c:if>
								<c:if test="${empty imageList}">
									<h3 class="text-center">등록된 사진이 없습니다.<br><br><br>사진을 등록해 주세요</h3>
								</c:if>
							  </div>
                 			</div>
      					  </div><!-- modal-body -->
                   			<div class="modal-footer">
        						<button type="button" onclick="mainPic()" class="btn btn-info btn-outline">대표사진 설정</button>&nbsp;
        						<button type="button" onclick="javascript:location.href='insertHotelsPic.do?hotelsCode=${hotels.hotelsCode}'" class="btn btn-info btn-outline">사진 등록</button>&nbsp;
        						<button type="button" class="btn btn-info btn-outline">사진 삭제</button>
      						</div>
      					</div>
                 	
                 	
                 	</div>
              </div>
            </div>
                 
                 
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