<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@include file="head.jspf" %>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<%@include file="main_header.jspf" %>
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
		
		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 animate-box">
						<h3>���� �׸� �Է�</h3>
						<form action="#">
							<div class="row form-group">
								<div class="col-sm-6">
									<label for="email">üũ��</label><!--for,id="email�� �ٸ��ɷ� �ٲܰ�"-->
									<input type="text" id="email" class="form-control" placeholder="üũ ��">
								</div>
								<div class="col-sm-6">
									<label for="email">üũ�ƿ�</label><!--for,id="email�� �ٸ��ɷ� �ٲܰ�"-->
									<input type="text" id="email" class="form-control" placeholder="üũ �ƿ�">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-sm-6">
									<label for="email">�̸�</label><!--for,id="email�� �ٸ��ɷ� �ٲܰ�"-->
									<input type="text" id="email" class="form-control" placeholder="�̸��� �Է��ϼ���">
								</div>
								<div class="col-sm-6">
									<label for="email">�޴���ȭ</label><!--for,id="email�� �ٸ��ɷ� �ٲܰ�"-->
									<input type="text" id="email" class="form-control" placeholder="�޴���ȭ �Է�">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<h3>���� ����</h3>
									<!--
									<label for="message">Message</label>
									<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
									-->
								</div>
							</div>
							<div class="btn-group btn-group-justified" role="group" aria-label="...">
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">ī�����</button>
								</div>
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">�޴���ȭ����</button>
								</div>
								<div class="btn-group" role="group">
								  <button type="button" class="btn btn-default">�ǽð� ������ü</button>
								</div>
							</div>
							<div class="row form-group"></div>
							<div class="btn-group btn-group-justified" role="group" aria-label="...">
								<div class="btn-group" role="group">
							 	 <button type="button" class="btn btn-warning">īī�� ���񽺷� ����</button>
								</div>
								<div class="btn-group" role="group">
							  	<button type="button" class="btn btn-success">���̹� ���񽺷� ����</button>
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

