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
						<div class="col-one-forth aside-stretch animate-box">
							<div class="row">
								<div class="col-md-12 about">
									<h2>myPage</h2>
									<ul>
										<li><a href="inserthotel.jsp">숙소 등록 및 수정</a></li>
										<li><a href="insertedRoom.jsp">등록 숙소</a></li>
										<li><a href="statistics.jsp">통계</a></li>
										<li><a href="chat.jsp">1대 1문의</a></li>
										<li><a href="index.jsp">메인 홈</a></li>
									</ul>
								</div>
							</div>
						</div>
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