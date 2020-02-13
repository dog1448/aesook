<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>

<head>
<%@include file="head.jspf" %>
</head>

<body>

	<div class="colorlib-loader"> </div>

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
									<h2>���Ұ���</h2>

									<ul>
										<li><a href="inserthotel.jsp">���� ��� �� ����</a></li>
										<li><a href="insertedRoom.jsp">��� ����</a></li>
										<li><a href="statistics.jsp">���</a></li>
										<li><a href="chat.jsp">1�� 1����</a></li>
										<li><a href="index.jsp">���� Ȩ</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-three-forth animate-box">
							<form action="#">
								<h2>���� ����</h2>
								<div class="row form-group">
									<div class="col-md-12">
										&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="radio" name="rooms" value="hotel">ȣ��</label>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<label><input type="radio" name="rooms" value="motel">����</label>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<label><input type="radio" name="rooms" value="pension">�Ҽ�</label>
													&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="radio" name="rooms"	value="guesthouse">�Խ�Ʈ�Ͽ콺</label>
													&nbsp;&nbsp;&nbsp;&nbsp;
														<label><input type="radio" name="rooms"	value="resort/condo">����Ʈ/�ܵ�</label>
									</div>
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>

								<h2>���� �̸�</h2>
								<div class="col-md-12 form-group">
									<input type="text" id="room-name" class="form-control" placeholder="���Ҹ� �Է��ϼ���">
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>���� ��ġ</h2>
								<div class="col-md-12 form-group">
									<iframe id="map-detail-frame" width="652" height="217" frameborder="0"
										scrolling="no" title="rooms-location"
										src="https://goo.gl/maps/araV1CpH7VR57Svb9"></iframe>
									<div>&nbsp;&nbsp;</div>
									<label>URL�Է�</label>
									<div class="row">
										<div class="col-lg-6">
											<div class="input-group">
												<input type="text" class="form-control" placeholder="��ġ�� URL�Է�">
												
												<span class="input-group-btn">
													<button class="btn btn-default" type="button">�˻�</button>
												</span>
											</div>
										</div>
									</div>
									<label>��ġ</label>
									<input type="text" id="location" class="form-control" placeholder="�ּҸ� �Է��ϼ���">
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>����</h2>
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
										���� �߰� �� ����
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#">���� �߰�</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#">���� ����</a></li>										
									</ul>
								</div>

								<div class="form-group">
									<div class="col-sm-6">
										<label>�� �̸�</label>
										<input type="text" class="form-control" placeholder="�� �̸� �Է�">
									</div>
									<div class="col-sm-6">
										<label>�ο�</label>
										<input type="text" class="form-control" placeholder="�ο� �� �Է�">
									</div>
									<div class="col-sm-6">
										<label>���</label>
										<input type="text" class="form-control" placeholder="��� �Է�">
									</div>
									<div class="col-sm-6">
										<label>Ư¡</label>
										<input type="text" class="form-control" placeholder="Ư¡ �Է�">
									</div>
									<div class="col-md-12">
										<label>���� ���ε�</label>
										<div class="file-upload-wrapper">
											<input type="file" id="input-file-now-custom-1" class="file-upload" data-default-file="https://mdbootstrap.com/img/Photos/Others/images/89.jpg" />
										  </div>
									</div>
								</div>
								<div>&nbsp;</div><div>&nbsp;</div>


								<h2>���ǽü�/����</h2>
								<div class="row">
									<div class="col-md-12 form-group">
										&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
												value="hotel">��������</label>
											&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
													value="motel">�Ļ簡��</label>
												&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
														value="pension">�������</label>
													&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
															value="guesthouse">����Ͻ�</label>
									</div>
									<div>&nbsp;</div>
									<div class="col-md-12 form-group">
										&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
												value="hotel">24�ð� ����ũ</label>
											&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
													value="motel">��Ƽ��</label>
												&nbsp;&nbsp;&nbsp;&nbsp;<labe><input type="checkbox" name="services"
														value="pension">��������</label>
									</div>
								</div>


								<div>
									<button type="button" class="btn btn-info btn-lg">��� �� ����</button>
								</div>
							</form>
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
</body>

</html>