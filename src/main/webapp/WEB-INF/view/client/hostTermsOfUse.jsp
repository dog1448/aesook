<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf"%>
<c:if test="${noHotel eq 'noHotel'}">
<script type="text/javascript">
alert("등록된 숙소가 없습니다.");
</script>
</c:if>
<c:if test="${message ne null}">
<script type="text/javascript">
var message = "${message}";
alert(message);
</script>
</c:if>
<link href="resources/client/css/step.css" rel="stylesheet">
</head>
<body>
<%@ include file="main_header.jspf" %>
	  <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	<div id="colorlib-about">
		<div class="container">
			<div class="row">
				<div class="about-flex">
					<%@ include file="managementSidebar.jspf"%>

					<div class="col-three-forth animate-box ">
					<div>
	                  	<h2><strong>TERMS OF USE</strong></h2>
	                    <hr> 
                  	</div>
						<div class="container my-5">
						    <ul id="progressbar" class="text-center">
						        <li class="active" id="step1"><div class="d-none d-md-block">STEP 1</div></li>
						        <li class="" id="step2"><div class="d-none d-md-block">STEP 2</div></li>
						        <li class="" id="step3"><div class="d-none d-md-block">STEP 3</div></li>
						        <li class="" id="step4"><div class="d-none d-md-block">STEP 4</div></li>
						    </ul>
						</div>
						<hr>
						<div>&nbsp;</div>
						<h2>호스트 이용약관</h2>
						<div class="" style="overflow:scroll;width:700px; height:600px;">
											<c:forEach var="termsList" items="${termsList}">
						<c:if test="${termsList.termsUsage eq '호스트 이용약관'}">
${termsList.termsTitle}<br><br>
${termsList.termsContent}<br><br><br>
						</c:if>
					</c:forEach>
						</div>
						<div>&nbsp;</div>
						<form action="insertTerm.do" method="post">						
							<div class="text-right">
								<label><input type="checkbox" name="agree" id="agree"> 이용약관에 동의합니다.</label>
							</div>
							<div class="text-right">
								<button class="btn btn-info" type="submit" id="submit">다음</button>
							</div>
						</form>
						<div>&nbsp;</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<%@ include file="footer.jspf"%>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#submit").on("click", function() {
				if($("input:checkbox[id=agree]").is(":checked") == true) {
				  
				} 
				if($("input:checkbox[id=agree]").is(":checked") == false) {
					alert('약관에 동의해주세요.');
					return false;
				}
			});
		})
	
</script>
</body>
</html>