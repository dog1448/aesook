<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<%@ include file="head.jspf"%>
<!-- Google Map -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="resources/client/js/google_map.js"></script>
</head>

<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@ include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div class="container">
			<h2>1:1 문의</h2>
			<div class="row">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;"><a>보낸사람</a></th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>정재훈</td>
							<td><a href="messageForm.do">신라호텔입니다.</a></td>
							<td>2020-02-07</td>
						</tr>

					</tbody>
				</table>
				<a href="#" class="btn btn-success btn-arrow-left">이전</a> 
				<a href="#" class="btn btn-success btn-arrow-left">다음</a> 
			</div>
		</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<%@ include file="footer.jspf"%>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>


</body>

</html>