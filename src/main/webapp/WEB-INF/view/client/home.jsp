<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="head.jspf"%>
</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@ include file="main_header.jspf"%>
		<!--index ȭ�� ���� �κ�-->
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
					<li style="background-image: url(resources/client/images/img_bg_5.jpg);">
						<div class="overlay"></div>
						<div class="container-fluids">
							<div class="row">
								<div
									class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
									<div class="slider-text-inner text-center">
										<h2>������ ����� ����/���� �ٸ� ����</h2>
										<h1>�ּ���</h1>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</aside>

		<!-- ���� �˻� �κ� -->
		<div id="colorlib-reservation">
			<div class="row">
				<div class="search-wrap">
					<div class="tab-content">
						<div id="flight" class="tab-pane fade in active">
							<!-- �˻� �� -->
							<form method="post" class="colorlib-form" action="">
								<div class="row">
									<div class="col-lg-10">
										<div class="form-group">
											<label for="date">���հ˻�</label>
											<div class="form-field">
												<input type="text" id="location" class="form-control"
													placeholder="Search Location">
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<input type="submit" name="submit" id="submit" value="�˻��ϱ�"
											class="btn btn-primary btn-block">
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- ȣ��, ����, ���, �Խ�Ʈ�Ͽ콺, ����Ʈ/�ܵ� Ŭ�� �κ� (������ �̵��� �������� ������ ������ �Ѿ�� �ҵ�?) -->
		<div id="colorlib-services">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/hotel.png" /></a></span>
							<h3>ȣ��</h3>
						</div>
					</div>
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/motel.png" /></a>
							</span>
							<h3>����</h3>
						</div>
					</div>
					<div class="col-md-4 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/pension.png" /></a>
							</span>
							<h3>���</h3>
						</div>
					</div>
					<div class="col-md-6 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/guestHouse.png" /></a>
							</span>
							<h3>�Խ�Ʈ �Ͽ콺</h3>
						</div>
					</div>
					<div class="col-md-6 animate-box text-center">
						<div class="services">
							<span class="icon"> <a href="selectRegion.do"><img
									src="resources/client/images/resort.png" /></a>
							</span>
							<h3>����Ʈ/�ܵ�</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>

		<!-- �α� ���� �κ� -->
		<div id="colorlib-hotel">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>�α� ����</h2>
						<p>������ �α� ���� ����Դϴ�.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box">
						<div class="owl-carousel">
							<!-- �� item�� �ϳ��� ���� ��ũ �κ� -->
							<div class="item">
								<div class="hotel-entry">
									<!-- ���⿡ JSTL�� DB ���� �޾� �����ؾ��� -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>�⺻ ���ں�</span><small> /1��</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">���Ҹ�</a>
										</h3>
										<span class="place">�⺻�ּ�</span>
										<p>���ҼҰ�</p>
									</div>
								</div>
							</div>
							<!-- �� item�� �ϳ��� ���� ��ũ �κ� -->
							<div class="item">
								<div class="hotel-entry">
									<!-- ���⿡ JSTL�� DB ���� �޾� �����ؾ��� -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>�⺻ ���ں�</span><small> /1��</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">���Ҹ�</a>
										</h3>
										<span class="place">�⺻�ּ�</span>
										<p>���ҼҰ�</p>
									</div>
								</div>
							</div>
							<!-- �� item�� �ϳ��� ���� ��ũ �κ� -->
							<div class="item">
								<div class="hotel-entry">
									<!-- ���⿡ JSTL�� DB ���� �޾� �����ؾ��� -->
									<a href="hotels.do" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>�⺻ ���ں�</span><small> /1��</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.do">���Ҹ�</a>
										</h3>
										<span class="place">�⺻�ּ�</span>
										<p>���ҼҰ�</p>
									</div>
								</div>
							</div>
							<!-- �� item�� �ϳ��� ���� ��ũ �κ� -->
							<div class="item">
								<div class="hotel-entry">
									<!-- ���⿡ JSTL�� DB ���� �޾� �����ؾ��� -->
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>�⺻ ���ں�</span><small> /1��</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="room-detail.jsp">���Ҹ�</a>
										</h3>
										<span class="place">�⺻�ּ�</span>
										<p>���ҼҰ�</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- �̺�Ʈ ��� (4��)-->
		<div class="colorlib-tour colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>�̺�Ʈ</h2>
						<p>���� ���� ���� �̺�Ʈ�� Ȯ���ϼ���</p>
					</div>
				</div>
			</div>
			<div class="tour-wrap">
				<a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-1.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Athens, Greece</h2> <span class="city">Athens, Greece</span> <span
						class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-2.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Thailand</h2> <span class="city">Athens,
							Greece</span> <span class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-3.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Philippines</h2> <span class="city">Lipa,
							Philippines</span> <span class="price">$450</span>
				</span>
				</a> <a href="#" class="tour-entry animate-box">
					<div class="tour-img"
						style="background-image: url(resources/client/images/tour-4.jpg);"></div> <span
					class="desc">
						<p class="star">
							<span><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i><i
								class="icon-star-full"></i><i class="icon-star-full"></i></span> 545
							Reviews
						</p>
						<h2>Family Tour in Greece</h2> <span class="city">Athens,
							Greece</span> <span class="price">$450</span>
				</span>
				</a>

			</div>
		</div>
		<%@ include file="footer.jspf"%>
	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>
</html>

