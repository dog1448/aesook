<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<%@include file="head.jspf" %>
</head>

<body>

	<div class="colorlib-loader">   </div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">

		</nav>


		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<!-- 사이드바 -->
                 		<%@ include file="managementSidebar.jspf" %>
						<div class="col-three-forth animate-box">	
							<h2>통계</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									
									
								</div>
							</div>
						</div>
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