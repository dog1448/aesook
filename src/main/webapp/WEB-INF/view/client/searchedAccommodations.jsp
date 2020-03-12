<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf"%>

<script type="text/javascript">

	$(document).ready(function() {
		$(window).scroll(function () {

			// 현재 위치의 높이

			//var curHeight = $(window).height() + $(window).scrollTop();

			var curHeight = $(window).scrollTop();

			// 문서의 높이

			var docHeight = $(document).height();

		});

		$('#searchConditionId').val('${searchCondition}').prop('selected', true);

	});
	
	function checkz() {
		
		//검색어 입력 확인
	 if($("#searchKeywordId").val() == ""){
	   alert("검색어를 입력해주세요");
	   $("#searchKeyword").focus();
	   return;
	 }
		$('#getSearchedHotelsListOption').submit();
	}
	
	function sortType(input){
		var searchCondition = $('#searchConditionId option:selected').val();
		var searchKeyword = $('#searchKeywordId').val();
		var sortCondition = $('#sortConditionId option:selected').val();
		location.href = "getSearchedHotelsListOption.do?searchCondition="+searchCondition+"&searchKeyword="+searchKeyword+"&sortCondition="+sortCondition+"&hotelsType="+input;
		
	}
</script>

<title>게시판 목록</title>
</head>
<body>
<form method="get" id="getSearchedHotelsListOption" action="getSearchedHotelsListOption.do">
									
	<div class="colorlib-loader"></div>

	<!-- 숙소 게시판 -->
	<div id="page">
		<%@include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

	
		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-md-offset-1">
						<div class="col-md-12">
							<label>&nbsp;&nbsp;&nbsp;&nbsp;통합검색</label>
							<div class="form-group">
								<div class="form-field">
										<div class="col-md-2">
											<select id="searchConditionId" name="searchCondition"
												class="form-control">
												<option value="ADDRESS">지명</option>
												<option value="NAME">숙소명</option>
												<option value="PATH">지하철역</option>
											</select>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" name="searchKeyword" id="searchKeywordId"
												value="${searchKeyword}" id="searchKeyword"
												placeholder="검색어를 입력해주세요.">
										</div>
									<div class="col-md-2">
										<button type="button" onclick="checkz()" class="btn btn-outline btn-default btn-block">검색하기</button>
									</div>
									<a data-toggle="modal" href="#modalSort">
									<button class="btn btn-info btn-outline">SORT&nbsp;&nbsp;<i class="icon-equalizer"></i>
									</button>
								</a>
								</div>
							</div>
						  </div>
						  <div class = "col-md-10">
						  <hr>
						  <span>
						  <a href="#none" onclick="sortType('hotel')">
						  	<label class="label-info"><font color="white">&nbsp;#호텔&nbsp;</font></label></a>&nbsp;
						  <a href="#none" onclick="sortType('motel')">
						  <label class="label-info"><font color="white">&nbsp;#모텔&nbsp;</font></label></a>&nbsp;
						  <a href="#none" onclick="sortType('guesthouse')">
						  <label class="label-info"><font color="white">&nbsp;#게스트&nbsp;하우스&nbsp;</font></label></a>&nbsp;
						  <a href="#none" onclick="sortType('resort')">
						  <label class="label-info"><font color="white">&nbsp;#리조트&nbsp;</font></label></a>&nbsp;
						  <a href="#none" onclick="sortType('pension')">
						  <label class="label-info"><font color="white">&nbsp;#펜션&nbsp;</font></label></a>&nbsp;
						  </span>  
						  <hr>
						  </div>
						<div class="row">						
						  <div>&nbsp;</div><div>&nbsp;</div>
								<c:if test="${empty searchedList}">
									<div class="col-md-10 animate-box text-center">
										<div>&nbsp;</div><div>&nbsp;</div>
										<span class="icon"><img src="resources/client/images/no_file.jpg" width="100" height="100"/></span>
										<div>&nbsp;</div>
										<h3><font color="#0075b4">조회되는 목록이 없습니다.</font></h3>
									</div>
								</c:if>
								<div class="wrap-division">
								<c:forEach var="list" items="${searchedList}">
									<div class="col-md-6 col-sm-6 animate-box">
							<div>&nbsp;</div><div>&nbsp;</div>
										<div class="hotel-entry">
									 
										<c:if test="${list.hotelsImageStatus eq 'M' }">										
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="${list.hotelsImagePath}${list.hotelsImageName}" style="height: auto; width: 350px;">																					
											</a>											
										</c:if>
										<c:if test="${list.hotelsImageStatus ne 'M' }">
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="resources/client/images/noImage.png" style="height: auto; width: 350px;">																	
											</a>
										</c:if>							
											<div class="desc">
												<p class="star">
													<span>
														<c:if test="${list.scoreAvg == 0}">
															<i class="icon-star-empty"></i>
														</c:if>
														<c:forEach var="i" begin="1" end="${list.scoreAvg}"
															step="1">
															<i class="icon-star-full"></i>
														</c:forEach>
													</span>
													${list.scoreCnt} Reviews
												</p>
												<h3>
													<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}&hotelsName=${list.hotelsName}">${list.hotelsName}</a>
												</h3>
												<span class="place">${list.hotelsAddress1} ${list.hotelsAddress2}</span>
												<p>${list.hotelsPath}</p>
											</div>
										</div>
									</div>
								</c:forEach>
								
							</div>
						</div>						
					</div>

				</div>
			</div>
		</div>			
	</div>
<!-- Modal Sort -->
<div class="modal fade" id="modalSort" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Sort Type</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
      <select class="form-control" name="sortCondition" id="sortConditionId">
            <option>정렬선택</option>
            <option value="scoreAvg">인기가 높은 순으로 정렬</option>
            <option value="scoreCnt">후기가 많은 순으로 정렬</option>
            <option value="hotelsCode">최신 숙박업체 순으로 정렬</option>
      </select>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button type="submit" class="btn btn-info btn-outline">정렬하기</button>
        <button class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal Sort -->
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	</form>
</body>
</html>

