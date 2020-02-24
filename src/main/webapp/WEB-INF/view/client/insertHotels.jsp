<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

function checkz() {
	   //호텔타입 입력 확인
    if($(':radio[name="hotelsType"]:checked').length < 1){
      alert("숙소의 타입을 입력해주세요");
      return;
    }
	   //호텔이름 입력 확인
    if($("#hotelsName").val() == ""){
      alert("숙소의 이름을 입력해주세요");
      $("#hotelsName").focus();
      return;
    }
	   //호텔 우편번호 입력 확인
    if($("#hotelsZipcode").val() == ""){
      alert("우편번호를 입력해주세요");
      $("#hotelsZipcode").focus();
      return;
    }
	   //호텔주소 입력 확인
    if($("#hotelsAddress1").val() == ""){
      alert("주소를 입력해주세요");
      $("#hotelsAddress1").focus();
      return;
    }
	   //호텔 전화번호 입력 확인
    if($("#hotelsPhone").val() == ""){
      alert("사업장 전화번호를 입력해주세요");
      $("#hotelsPhone").focus();
      return;
    }
         
	$('#insertHotelsAll').submit();
  
}

	function openZipAddress(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            console.log(data.zonecode);
            console.log(fullRoadAddr);
            
            document.getElementById('hotelsZipcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('hotelsAddress1').value = fullRoadAddr;
        	}
    	}).open();
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
                     <form role="form" method="post" action="insertHotelsAll.do" id="insertHotelsAll">
                        <h2>숙소 종류</h2>
                        <div class="row form-group">
                           <div class="col-md-12">
                              &nbsp;&nbsp;&nbsp;&nbsp;

                              <label><input type="radio" id="hotelsType" name="hotelsType" value="호텔">호텔</label>
                                 &nbsp;&nbsp;&nbsp;&nbsp;
                                 <label><input type="radio" id="hotelsType" name="hotelsType" value="모텔">모텔</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label><input type="radio" id="hotelsType" name="hotelsType" value="펜션">팬션</label>
                                       &nbsp;&nbsp;&nbsp;&nbsp;
                                       <label><input type="radio" id="hotelsType" name="hotelsType" value="게스트하우스">게스트하우스</label>
                                       &nbsp;&nbsp;&nbsp;&nbsp;
                                          <label><input type="radio" id="hotelsType" name="hotelsType" value="리조트">리조트</label>
                           </div>
                        </div>
                        <div>&nbsp;</div><div>&nbsp;</div>

                        <h2>숙소 이름</h2>
                        <div class="col-md-12 form-group">

                           <input type="text" name="hotelsName" id="hotelsName" class="form-control" placeholder="숙소명 (지명 기입 가능  ex.홍대 기역모텔)">
                           <input type="hidden" name="memberId" value="${user.memberId}">
                        </div>
                        <div>&nbsp;</div><div>&nbsp;</div>


                        <h2>숙소 위치</h2>
								<div class="col-md-12 form-group">
                           <iframe id="map-detail-frame" width="652" height="217" frameborder="0"
                              scrolling="no" title="rooms-location"
                              src="https://goo.gl/maps/araV1CpH7VR57Svb9"></iframe>
                           <div>&nbsp;&nbsp;</div>
                           <label>주소 입력</label>
                           <div class="row">
                              <div class="col-lg-6">
                                 <div class="input-group">
                                    <input type="text" id="hotelsZipcode" name="hotelsZipcode" class="form-control" placeholder="우편번호" readonly="readonly">
                                    
                                    <span class="input-group-btn">
                                       <button class="btn btn-default" onclick="openZipAddress()" type="button">검색</button>
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <input type="text" id="hotelsAddress1" name="hotelsAddress1" class="form-control" placeholder="주소를 입력하세요" readonly="readonly">
                           <input type="text" id="hotelsAddress2" name="hotelsAddress2" class="form-control" placeholder="상세주소를 입력하세요"><br></br>
                           <label>위치</label>
                           <input type="text" id="hotelsPath" name="hotelsPath" class="form-control" placeholder="오시는길(ex 종로 3가역으로부터 3분 거리)"><br></br>
                           <label>연락처</label>
                           <input type="text" id="hotelsPhone" name="hotelsPhone" class="form-control" placeholder="사업장 혹은 사업주 전화번호">

                        </div>
                        <div>&nbsp;</div><div>&nbsp;</div>
						<h2>이용안내</h2>
                        	<textarea name="hotelsInfo" id="hotelsInfo" rows="8" cols="50"></textarea>
                        <br></br>
                        <h2>숙소소개</h2>
                        	<textarea name="hotelsIntroduce" id="hotelsIntroduce" rows="8" cols="50"></textarea>
                        <br></br>
                        <h2>편의시설/서비스</h2>
                        <div>
                           <button type="button" onclick="checkz()" class="btn btn-info btn-lg">등록</button>
                           <button type="button" class="btn btn-warning btn-lg">수정</button>
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

</body>

</html>