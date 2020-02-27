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

                        <h2>객실 등록 및 수정</h2>
                        <hr>       
						<form method="post" action="insertRoomSort.do">
													
	                        <div class="form-group">	                       
	                        <input type="hidden" name="memberId" value="${memberId}"> 
	                           <div class="col-sm-6">
	                           <label>숙소 선택</label><br>	                          
								<select name="hotelsCode" id="hotelsCode">
								 <c:forEach var="list" items="${memberHotelsList}">								  
								  <option value="${list.hotelsCode}" >${list.hotelsName}</option>
								  </c:forEach>								
								</select>
								
	                           </div>	                            
	                           <div class="col-sm-6">
	                              <label>방 종류</label>
	                              <input type="text" class="form-control" placeholder="Ex>디럭스룸, 스위트룸" name="roomSort" id="roomSort">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>방 이름</label>
	                              <input type="text" class="form-control" placeholder="Ex>101호, 새싹방" name="roomName" id="roomName">
	                           </div>
	                           <div>&nbsp;</div>
	                           <div class="col-sm-6">
	                              <button type="button" id="roomCheck" class="btn btn-success" onclick="checkName();" value="N">방 이름 중복확인</button>
	                           </div>
	                           <div>&nbsp;</div>
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
	                        <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	                        <hr>                        
	                        <div>
	                           <button type="submit" id="submit" class="btn btn-info" onclick="register()">등록</button>	                                                                            
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
$("#roomName").change(function(){
	$("#roomCheck").attr("value","N");
});

$(document).ready(function() {
	$("#submit").on("click", function() {
	if($("#roomSort").val() == ""){
		alert("방 종류를 입력하세요.");
		$("#roomSort").focus();
		return false;
	}	
	if($("#roomName").val() == ""){
		alert("방 이름을 입력하세요.");
		$("#roomName").focus();
		return false;
	}
	if($("#roomCheck").val() == "N"){
		alert("중복확인 버튼을 눌러주세요.");
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

function checkName() {
	$.ajax({
		url : "roomNameChk.do",
		type : "post",
		dataType : "json",
		data : {
			"roomName" : $("#roomName").val(),
			"hotelsCode" : $("#hotelsCode").val()
		},
		success : function(data) {
			if (data == 1) {
				alert("중복된 방 이름입니다.");
				return false;
			} else if (data == 0) {				
				$("#roomCheck").attr("value","Y");
				alert("사용가능한 방 이름입니다.");		

			} 
		}
	})
}
</script>	
</body>

</html>