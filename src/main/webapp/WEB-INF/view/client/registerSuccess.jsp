<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



<!DOCTYPE HTML>
<html>
<head>
<%@ include file="head.jspf"%>
</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@ include file="main_header.jspf"%>
		<!--index 화면 사진 부분-->
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
					<li style="background-image: url(resources/client/images/white_bg.jpg);">
						<div class="overlay"></div>
						<div class="container-fluids">
							<div class="row">
								<div
									class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">									
										<h1>축하드립니다.</h1>
										<h2>회원가입이 완료되었습니다.</h2>
										<a href="login.do" class="btn btn-success">로그인 페이지로 이동</a>									
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>

		
	
		<%@ include file="footer.jspf"%>
	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>
</html>

