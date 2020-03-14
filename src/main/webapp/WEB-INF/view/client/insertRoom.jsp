<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>
<link href="resources/client/css/step.css" rel="stylesheet">
<link rel="stylesheet" href="resources/client/css/image.css">
<style type="text/css">
option {
 width : auto;
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	var roomSortList = new Array();
	var optionList = ""
	<c:forEach var="sort" items="${sessionScope.RoomType}">
		roomSortList.push("${sort.roomSort}");
	</c:forEach>
	for (var i = 0; i < roomSortList.length; i++) {
		optionList += "<option>"+roomSortList[i]+"</option>"
	}	
	
    var i=1;
   $("#add_row").click(function(){
    $('#addr'+i).html("<td><input name='roomList["+i+"].roomName' type='text' placeholder='RoomName' class='form-control input-md roomName'/></td><td><select name='roomList["+i+"].roomSort' class='form-control'>"+optionList+"</select>");

    $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
    i++; 
});
   $("#delete_row").click(function(){
       if(i>1){
		 $("#addr"+(i-1)).html('');
		 i--;
		 }
	 });

});

function checkz() {
	
	var flag = true;
	
	$('.roomName').each(function (index, item) {
		var test = $(item).val();
		if(test == ""){
			flag = false;
			alert("방 이름을 입력하세요.");					
			return;
		}	
	});
	if(!flag){
		return flag;
	}
	
	$('#roomForm').submit();
}
</script>
<body>
<%@ include file="main_header.jspf" %>
	  <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation"></nav>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<!-- 사이드바 -->
						<%@ include file="managementSidebar.jspf"%>
						<div class="col-three-forth animate-box">
						<div>
		                  	<h2><strong>WRITE MY ROOM</strong></h2>
		                    <hr> 
                  		</div>
						<div class="container my-5">
						    <ul id="progressbar" class="text-center">
						        <li class="active" id="step1"><div class="d-none d-md-block">STEP 1</div></li>
						        <li class="active" id="step2"><div class="d-none d-md-block">STEP 2</div></li>
						        <li class="active" id="step3"><div class="d-none d-md-block">STEP 3</div></li>
						        <li class="active" id="step4"><div class="d-none d-md-block">STEP 4</div></li>
						    </ul>
						</div>
							<hr>
							<form method="post" action="insertRoom.do" id ="roomForm">
								  <div class="panel-body">
								    <div class="row">
								    	<div class="col-md-12 column">
											<table class="table table-bordered table-hover" id="tab_logic" border="1">
												<thead>
													<tr>
														<th>방 이름</th>
														<th>방 종류</th>
													</tr>
												</thead>
												<tbody>
													<tr id='addr0'>
														<td>
														<input type="text" name='roomList[0].roomName'  placeholder='RoomName' class="form-control roomName"/>
														</td>
														<td>
														<select name='roomList[0].roomSort' class="form-control">
														<c:forEach var="sort" items="${sessionScope.RoomType}">
															<option>${sort.roomSort}</option>
														</c:forEach>
														</select>
														</td>
													</tr>
								                    <tr id='addr1'></tr>
												</tbody>
											</table>
								                <a id="add_row" class="btn btn-info btn-outline"> 추가</a>
								                <a id="delete_row" class="btn btn-danger btn-outline pull-right"></span> 삭제</a>
												</div>
												</div>
											<hr>
					                        <div class="text-right">
					                         <button type="button" class="btn btn-warning" onclick="history.go(-1)">이전</button>
					                         <button type="button" onclick="checkz()" class="btn btn-info">등록하기</button>
					                       </div>
					              </div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<%@ include file="footer.jspf"%>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
</body>

</html>