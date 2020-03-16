<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
	<%@include file="head.jspf" %>
	<script type="text/javascript">
	function checkz() {
		
	    if($("#fname").val() == ""){
		   alert("받는 사람을 입력하세요.");
		   $("#fname").focus();
		   return;
		}
		
	    if($("#subject").val() == ""){
			alert("제목을 입력하세요.");
			$("#subject").focus();
			return;
		}
	    
	    if($("#message").val() == ""){
			alert("내용을 입력하세요.");
			$("#message").focus();
			return;
		}
	    
	    $('#alarmWriteForm').submit();
	}
	</script>
	</head>
	
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
						<form action="alarmWrite.do" method="post" id="alarmWriteForm">
							<div class="row form-group">
								<div class="col-md-6 padding-bottom">
									<label for="fname">받는 사람</label>
									<c:if test="${inquiry ne 'inquiry'}">
										<input type="text" id="fname" class="form-control" value="${alarm.alarmSendId}" disabled="disabled">
										<input type="hidden" value="${alarm.alarmSendId}" name="alarmRecieveId">
									</c:if>
									<c:if test="${inquiry eq 'inquiry'}">									
										<input type="text" id="fname" class="form-control" value="${hotels.MemberId}" disabled="disabled">
										<input type="hidden" name="alarmRecieveId" value="${hotels.MemberId}">
									</c:if>
								</div>
								<div class="col-md-6">
									<label for="lname">보내는 사람</label>
									<input type="text" id="lname" class="form-control" value="${user.memberId}" disabled="disabled">
									<input type="hidden" name="alarmSendId" value="${user.memberId}">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="subject">제목</label>
									<c:if test="${reply eq 'reply'}">
										<input type="text" id="subject" name="alarmTitle" class="form-control" value="[답변]">
									</c:if>
									<c:if test="${reply ne 'reply'}">												
										<input type="text" id="subject" name="alarmTitle" class="form-control" placeholder="제목을 입력하세요">
									</c:if>
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="message">Message</label>
									<textarea id="message" name="alarmContents" cols="30" rows="10" class="form-control" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>
							<div class="form-group text-center">
								<input type="button" value="보내기" onclick="checkz()" class="btn btn-info btn-outline">
								<input type="button" value="돌아가기" onclick="location.href='alarm.do'" class="btn btn-primary btn-outline">
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
