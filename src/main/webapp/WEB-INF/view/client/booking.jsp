<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="head.jspf" %>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		 <%@ include file="main_header.jspf" %>
        
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<div class="col-one-forth aside-stretch animate-box">
							<div class="row">
								<div class="col-md-12 about">
									<h2>myPage</h2>
									<ul>
										<li><a href="booking.jsp">������ȸ</a></li>
                                        <li><a href="myReview.jsp">���� �ı�</a></li>
                                        <li><a href="modify_info.jsp">������������</a></li>
                                        <li><a href="brn.jsp">����ڵ��</a></li>
                                        <li><a href="inserthotel.jsp">���� ����</a></li>
                                        <li><a href="withdrawal.jsp">ȸ��Ż��</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-three-forth animate-box">	
							<h2>���� ��ȸ</h2>	
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<a href="room-details.jsp">								
									<div class="room-wrap">
										<div class="row">
											
											<div class="col-md-6 col-sm-6">
												<div class="room-img"
													style="background-image: url(images/room-1.jpg);"></div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>���Ҹ�</h2>
													<p class="price"><span>$45</span> <small>/ night</small>
													</p>
													<p>üũ�� : </p>
													<p>üũ�ƿ� : </p>
													<p>�ð� : </p>													
												</div>
											</div>											
										</div>
										</a>
										<div>&nbsp;</div>
										
										<a href="room-details.jsp">
										<div class="row">
											<div class="col-md-6 col-sm-6">
												<div class="room-img"
													style="background-image: url(images/room-1.jpg);"></div>
											</div>
											<div class="col-md-6 col-sm-6">
												<div class="desc">
													<h2>���Ҹ�</h2>
													<p class="price"><span>$45</span> <small>/ night</small>
													</p>
													<p>üũ�� : </p>
													<p>üũ�ƿ� : </p>
													<p>�ð� : </p>													
												</div>
											</div>											
										</div>
										</a>
										<div>&nbsp;</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jspf" %>		
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

