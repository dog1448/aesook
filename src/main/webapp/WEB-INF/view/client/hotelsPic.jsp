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

.crown {
	width: auto;
}
</style>
<script type="text/javascript">
// mainPic modify
function mainPic() {
	var checkCnt = $('input[name=hotelsImageNo]:checked').length;
	if(checkCnt >= 2) {
		alert("대표사진은 하나만 선택 가능합니다.");
		return;
	} else if (checkCnt == 0) {
		alert("선택된 사진이 없습니다.");
		return;
	}
	
	var checkValue = $('input[name=hotelsImageNo]:checked').val();
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
			$('input[name=hotelsImageNo]:checked').prop('checked', false);
        })
        .fail(function (xhr, status, errorThrown) {
            alert(errorThrown);
        });
}

// roomMainPic modify
function modifyRoomMainPic() {
	var checkCnt = $('input[name=hotelsImageNo]:checked').length;
	var checkValue = $('input[name=hotelsImageNo]:checked').val();
	var roomSort = $('input[name=hotelsImageNo]:checked').closest('.block-check').find('input[name=room]').val();
	var hCode = $('#hCode').val();
	var addCrown = '<img src="resources/client/images/crown2.gif" width="70%" height="20px">';
	var removeCrown = '<canvas width="70%" height="20px"></canvas>';
	
	if(checkCnt >= 2) {
		alert("방대표 사진은 하나만 선택 가능합니다.");
		return;
	} else if (checkCnt == 0) {
		alert("선택된 사진이 없습니다.");
		return;
	}
	
	if (roomSort == "") {
		alert("배정되지 않는 사진은 선택 할 수 없습니다.");
		return;
	}
	
	
	$.ajax({
        url: "hotelsRoomMainPic.do",
        type: "GET",
        data: {
      		"hotelsCode" : hCode,
        	"hotelsImageNo" : checkValue,
        	"roomSort" : roomSort
        },
        dataType: "json"
    })
        .done(function(json) {
            console.log(json);
       		var room = json;
       		var crownId = '#crown' + room.hotelsImageNo; 
			$(crownId).html(removeCrown);
			$('input[name=hotelsImageNo]:checked').closest('.findCrown').find('.crown').html(addCrown);
       		$('input[name=hotelsImageNo]:checked').prop('checked', false);
        })
        .fail(function (xhr, status, errorThrown) {
            alert(errorThrown);
        });
	
}

// roomSort type modify
function modifyRoom() {
	var checkCnt = $('input[name=hotelsImageNo]:checked').length;
	if(checkCnt <= 0) {
		alert("선택된 사진이 없습니다.");
		return;
	}
	
	var modalRoomType = $('#modalRoomSort').val();
	$('#formRoomSort').val(modalRoomType);
	
	$('#formCheck').submit();
}

// checkall button
$(function(){
	 $("#checkall").click(function(){
         
         var chk = $(this).is(":checked");
         
         if(chk){
             $('input[name="hotelsImageNo"]').prop('checked', true);
         }else{
             $('input[name="hotelsImageNo"]').prop('checked', false);
         }
         
     });
})

function deleteImage() {
	var checkCnt = $('input[name=hotelsImageNo]:checked').length;
	if(checkCnt <= 0) {
		alert("선택된 사진이 없습니다.");
		return;
	}
	
	$('input[name="hotelsImageNo"]:checked').each(function() {
		var imageNameId = '#imageName' + $(this).val();
		$(imageNameId).attr("name", "hotelsImageName");
	});
	
	$('#formCheck').attr('action', 'hotelsPicDelete.do');
	$('#formCheck').submit();
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
            	    <h2>나의 숙소 Image</h2>
                 	<hr align="left">
                 	<p class="text-left"><strong>My Images</strong></p>
                 	<div class="col-sm col-sm-10 one">
                 	
                 	<form method="post" action="hotelsRoomSort.do" id="formCheck">
                 	    <!-- Modal content-->
					    <div class="modal-content">
					      <div class="modal-header">
					      <input type="checkbox" class="icon icon-checkbox-checked" id="checkall">  전체선택 / 해제
						  <input type="hidden" id="hCode" name="hotelsCode" value="${hotels.hotelsCode}"> 
							<input type="hidden" id="formRoomSort" name="roomSort">
					      </div>
					      <div class="modal-body" >
					         <div class="container-fluid">
					          <div class="row inner-scroll" >
					          <c:if test="${!empty imageList}">
					          	<c:forEach var="image" items="${imageList}">
									<div class="col-md-2 findCrown">
									<div class="crown" id="crown${image.hotelsImageNo}">
									<c:if test="${image.roomSortStatus eq 'R'}">
										<img src="resources/client/images/crown2.gif" width="70%" height="20px">
									</c:if>
									<c:if test="${image.roomSortStatus ne 'R'}">
										<canvas width="70%" height="20px"></canvas>
									</c:if>
									</div>
									  <div class="gallery-card">
										<div class="gallery-card-body">
										  <label class="block-check">
										 <img src="${image.hotelsImagePath}${image.hotelsImageName}" class="img-responsive" />
										 <input type="checkbox" name="hotelsImageNo" value="${image.hotelsImageNo}">
										 <input type="hidden" id="imageName${image.hotelsImageNo}" value="${image.hotelsImageName}">
										 <input type="hidden" name="room" value="${image.roomSort}">
										  <span class="checkmark"></span>
										  </label>
										   <div class="mycard-footer">
										    <c:if test="${image.roomSort eq null}">
											 <a href="#" class="card-link">NO GROUP</a>
											</c:if>
											<c:if test="${image.roomSort ne null}">
											 <a href="#" class="card-link">${image.roomSort}</a>
											</c:if>
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
        						<button type="button" onclick="mainPic()" class="btn btn-warning btn-outline">숙소 대표사진 설정</button>&nbsp;
        						<button type="button" onclick="modifyRoomMainPic()" class="btn btn-warning btn-outline">방 대표사진 설정</button>&nbsp;
        						<button type="button" data-toggle="modal" data-target="#modalRoomType" class="btn btn-info btn-outline">방 사진 등록</button>&nbsp;
        						<button type="button" onclick="javascript:location.href='insertHotelsPic.do?hotelsCode=${hotels.hotelsCode}'" class="btn btn-info btn-outline">사진 등록</button>&nbsp;
        						<button type="button" onclick="deleteImage()" class="btn btn-info btn-outline">사진 삭제</button>
      						</div>
      					</div>
                 	</form>
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
</body>
<!-- Modal Room Type -->
<div class="modal fade" id="modalRoomType" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Room Type</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
		<select class="form-control" id="modalRoomSort">
				<option value="null">선택 방 없음</option>
			<c:forEach var="room" items="${roomTypeList}">
				<option value="${room}">${room}</option>
			</c:forEach>
		</select>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button onclick="modifyRoom()" class="btn btn-info btn-outline">변경하기</button>
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal: RoomType -->
</html>