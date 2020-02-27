<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
	<%@include file="head.jspf" %>
	</head>
	<script type="text/javascript">
	function checkz() {
		var returnValue = confirm("정말 삭제하시겠습니까?");
		if(returnValue){
			$('#alarmForm').submit();
		}
	}
	</script>
	<body>
		
	<div class="colorlib-loader"> </div>

	<div id="page">
		<%@include file="main_header.jspf" %>
		
		
		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
				
				<div class="col-md-10 col-md-offset-1 animate-box">
				<div>&nbsp;</div>
						<h3>쪽지보기</h3>
						<form action="alarmDelete.do" method="post" id="alarmForm">
							<fieldset disabled="disabled">
							<div class="row form-group">
								<div class="col-md-6 padding-bottom">
									<label for="fname">보내는 사람</label>
									<input type="text" id="fname" class="form-control" value="${alarm.alarmSendId}">
								</div>
								<div class="col-md-6">
									<label for="lname">날짜</label>
									<input type="text" id="lname" class="form-control" value="${alarm.alarmDate}">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="subject">제목</label>
									<input type="text" id="subject" class="form-control" value="${alarm.alarmTitle}">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="message">Message</label>
									<textarea name="message" id="message" cols="30" rows="10" class="form-control">${alarm.alarmContents}</textarea>
								</div>
							</div>
							</fieldset>
							<input type="hidden" value="${alarm.alarmNo}" name="alarmNo">
							<div class="form-group text-center">
								<c:if test="${alarm.alarmSendId ne 'Admin'}">
									<input type="button" value="답장" class="btn btn-info btn-outline" onclick="location.href='alarmWrite.do?reply=Y&alarmNo=${alarm.alarmNo}'">
								</c:if>
								<input type="button" value="삭제" class="btn btn-danger btn-outline" onclick="checkz()">
								<input type="button" value="돌아가기" class="btn btn-primary btn-outline" onclick="location.href='alarm.do'">
							</div>

						</form>		
					</div>
				
				
				</div>
			</div>
		</div>
		<%@include file="footer.jspf" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>	
	</body>
</html>
