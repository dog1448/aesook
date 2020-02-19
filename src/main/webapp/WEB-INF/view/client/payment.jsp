<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@include file="head.jspf" %>
	</head>
	
	<body>
		
	<div class="colorlib-loader"> </div>

	<div id="page">
		<%@include file="main_header.jspf" %>
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
		
		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 animate-box">
						<h3>결제 항목 입력</h3>
						<form action="#">
							<div class="row form-group">
								<div class="col-sm-6">
									<label for="email">체크인</label><!--for,id="email을 다른걸로 바꿀것"-->
									<input type="text" id="email" class="form-control" placeholder="체크 인">
								</div>
								<div class="col-sm-6">
									<label for="email">체크아웃</label><!--for,id="email을 다른걸로 바꿀것"-->
									<input type="text" id="email" class="form-control" placeholder="체크 아웃">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-sm-6">
									<label for="email">이름</label><!--for,id="email을 다른걸로 바꿀것"-->
									<input type="text" id="email" class="form-control" placeholder="이름을 입력하세요">
								</div>
								<div class="col-sm-6">
									<label for="email">휴대전화</label><!--for,id="email을 다른걸로 바꿀것"-->
									<input type="text" id="email" class="form-control" placeholder="휴대전화 입력">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<h3>결제 수단</h3>
									<!--
									<label for="message">Message</label>
									<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
									-->
								</div>
							</div>
							<div class="btn-group btn-group-justified" role="group" aria-label="...">
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">카드결제</button>
								</div>
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">휴대전화결제</button>
								</div>
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">실시간 계좌이체</button>
								</div>
							</div>
							<div class="row form-group"></div>
							<div class="btn-group btn-group-justified" role="group" aria-label="...">
								<div class="btn-group" role="group">
							 	 <button type="button" class="btn btn-warning">카카오 서비스로 결제</button>
								</div>
								<div class="btn-group" role="group">
							  	<button type="button" class="btn btn-success">네이버 서비스로 결제</button>
								</div>
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

