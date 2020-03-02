<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>

</head>

<body>
   <div class="colorlib-loader">  </div>
   <div id="page">
      <nav class="colorlib-nav" role="navigation"></nav>

      <div id="colorlib-about">
         <div class="container">
            <div class="row">
               <div class="about-flex">
                 <!-- 사이드바 -->
                 <%@ include file="managementSidebar.jspf" %>
                  <div class="col-three-forth animate-box">                    
						<nav class="navbar navbar-default">					  				    
						    <ul class="nav navbar-nav">
						      <li><a href="#">숙소 등록</a></li>
						      <li class="active"><a href="#">객실 등록</a></li>
						      <li><a href="#">사진 등록</a></li>
						      <li><a href="#">약관 동의</a></li>
						    </ul>					  
						</nav>      
                        <hr>       
                        <input type="hidden" name="memberHotelsVO" value="${memberHotelsVO}"> 
	                    <input type="hidden" name="memberFacilityVO" value="${memberFacilityVO}"> 
						<form method="post" action="insertRoomSort.do">
						<button type="button" class="btn btn-success" onclick="add();">객실 추가</button>						
						<div id="hey">												
	                        <div class="form-group">
	                           <div class="col-sm-6">
	                              <label>방 이름</label>
	                              <input type="text" class="form-control" placeholder="Ex>101호, 새싹방" name="roomName" id="roomName">
	                           </div>	                                                     
	                           <div class="col-sm-6">
	                              <label>방 종류</label>
	                              <input type="text" class="form-control" placeholder="Ex>디럭스룸, 스위트룸" name="roomSort" id="roomSort">
	                           </div>	                          
	                           <div class="col-sm-6">
	                              <label>기준 인원</label>
	                              <input type="text" class="form-control" placeholder="인원 수 입력" name="roomStandardCnt" id="roomStandardCnt">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>최대 인원</label>
	                              <input type="text" class="form-control" placeholder="인원 수 입력" name="roomMaxCnt" id="roomMaxCnt">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>방 상세설명</label>
	                              <input type="text" class="form-control" placeholder="설명 입력" name="roomRoomInfo" id="roomRoomInfo">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>평일 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력" name="roomStandardPrice" id="roomStandardPrice">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>공휴일 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력" name="roomHolidayPrice" id="roomHolidayPrice">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>인원 추가당 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력" name="roomAddPrice" id="roomAddPrice">
	                           </div>	                                                         
	                        </div>
	                        <div>&nbsp;</div>
	                        <button type="button" class="btn btn-secondary" onclick="del();" id="hot">객실 삭제</button>
	                        <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	                      </div> 
	                        <hr>                        
	                        <div>
	                           <button type="button" id="submit" class="btn btn-info">다음</button>	
	                           <button type="button" class="btn btn-success" onclick="history.go(-1);">이전</button>                                                                            
	                        </div>                        
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
	<script type="text/javascript">
$(document).ready(function() {
	$("#submit").on("click", function() {
	if($("#roomName").val() == ""){
		alert("방 이름을 입력하세요.");
		$("#roomName").focus();
		return false;
	}	
	if($("#roomSort").val() == ""){
		alert("방 종류를 입력하세요.");
		$("#roomSort").focus();
		return false;
	}		
	if($("#roomStandardCnt").val() == ""){
		alert("방 최소 인원을 입력하세요.");
		$("#roomStandardCnt").focus();
		return false;
	}
	if($("#roomMaxCnt").val() == ""){
		alert("방 최대 인원을 입력하세요.");
		$("#roomMaxCnt").focus();
		return false;
	}
	
	if($("#roomRoomInfo").val() == ""){
		alert("방 정보를 입력하세요.");
		$("#roomRoomInfo").focus();
		return false;
	}
	if($("#roomStandardPrice").val() == ""){
		alert("방 평일 금액을 입력하세요.");
		$("#roomStandardPrice").focus();
		return false;
	}
	
	
	if($("#roomHolidayPrice").val() == ""){
		alert("방 주말 금액을 입력하세요.");
		$("#roomHolidayPrice").focus();
		return false;
	}
	
	if($("#roomAddPrice").val() == ""){
		alert("방 추가 금액을 입력하세요.");
		$("#roomAddPrice").focus();
		return false;
	}	
	alert("방이 성공적으로 등록되었습니다.");
	
	});
})

var room = '<div class="form-group"><div class="col-sm-6"><label>방 이름</label><input type="text" class="form-control" placeholder="Ex>101호, 새싹방" name="roomName" id="roomName"></div><div class="col-sm-6"><label>방 종류</label><input type="text" class="form-control" placeholder="Ex>디럭스룸, 스위트룸" name="roomSort" id="roomSort"></div><div class="col-sm-6"><label>기준 인원</label><input type="text" class="form-control" placeholder="인원 수 입력" name="roomStandardCnt" id="roomStandardCnt"></div><div class="col-sm-6"><label>최대 인원</label><input type="text" class="form-control" placeholder="인원 수 입력" name="roomMaxCnt" id="roomMaxCnt"></div><div class="col-sm-6"><label>방 상세설명</label><input type="text" class="form-control" placeholder="설명 입력" name="roomRoomInfo" id="roomRoomInfo"></div><div class="col-sm-6"><label>평일 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomStandardPrice" id="roomStandardPrice"></div><div class="col-sm-6"><label>공휴일 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomHolidayPrice" id="roomHolidayPrice"></div><div class="col-sm-6"><label>인원 추가당 요금</label><input type="text" class="form-control" placeholder="요금 입력" name="roomAddPrice" id="roomAddPrice"></div></div><div>&nbsp;</div><button type="button" class="btn btn-secondary" onclick="del();" id="hot">객실 삭제</button><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>'

function add() {
	$("#hey").append(room);
}
function del() {
	$(this).closest(".form-group").remove();
}

</script>	
</body>

</html>