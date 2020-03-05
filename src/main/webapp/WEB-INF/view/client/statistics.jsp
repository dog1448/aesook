<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<%@include file="head.jspf"%>
<script src="resources/client/js/Chart.min.js"></script>
<script src="resources/client/js/utils.js"></script>
<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>

</head>

<body>

	<div class="colorlib-loader"></div>

	<div id="page">


		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<!-- 사이드바 -->
						<%@ include file="managementSidebar.jspf"%>
						<div class="col-three-forth animate-box">
							<h2>통계</h2>							
							<nav class="navbar navbar-default navbar-static-top">
								<div id="navbar" class="navbar-collapse collapse">
									<ul class="nav navbar-nav">
										<li class="active"><a href="statistics.do">수입</a></li>
										<li><a href="#about">예약률</a></li>
										<li><a href="#contact">조회수</a></li>
									</ul>
								</div>
							</nav>
							<div>&nbsp;</div>
							<div class="text-right">
								<tr>
									<td>
										<select name="YEAR" id="YEAR" title="년도" class="select w80"></select>
										<select name="MONTH" id="MONTH" title="월" class="select w80"></select>
									</td>
								</tr>
							</div>
							<div class="row">
								<div class="col-md">
									<div id="container" style="width: 100%;">
										<canvas id="canvas"></canvas>
									</div>

								</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div class="col-md text-center">
									<button id="randomizeData">Randomize Data</button>
									<button id="addDataset">Add Dataset</button>
									<button id="removeDataset">Remove Dataset</button>
									<button id="addData">Add Data</button>
									<button id="removeData">Remove Data</button>
								</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div class="col-md">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title">2020년도 수입</h3>
										</div>
										<table class="table table-hover" id="dev-table">
											<thead>
												<tr>
													<th>#</th>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Username</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Kilgore</td>
													<td>Trout</td>
													<td>kilgore</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Bob</td>
													<td>Loblaw</td>
													<td>boblahblah</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Holden</td>
													<td>Caulfield</td>
													<td>penceyreject</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="footer.jspf"%>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>
<script>
	var MONTHS = [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월',
			'11월', '12월' ];
	var color = Chart.helpers.color;
	var barChartData = {
		labels : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월',
				'11월', '12월' ],
		datasets : [ {
			label : 'Dataset 1',
			backgroundColor : color(window.chartColors.blue).alpha(0.5)
					.rgbString(),
			borderColor : window.chartColors.blue,
			borderWidth : 1,
			data : [ randomScalingFactor(), randomScalingFactor(),
					randomScalingFactor(), randomScalingFactor(),
					randomScalingFactor(), randomScalingFactor(),
					randomScalingFactor(), randomScalingFactor(),
					randomScalingFactor(), randomScalingFactor(),
					randomScalingFactor(), randomScalingFactor() ]
		} ]

	};

	window.onload = function() {
		var ctx = document.getElementById('canvas').getContext('2d');
		window.myBar = new Chart(ctx, {
			type : 'bar',
			data : barChartData,
			options : {
				responsive : true,
				legend : {
					position : 'top',
				},
				title : {
					display : true,
					text : 'Chart.js Bar Chart'
				}
			}
		});

	};

	document.getElementById('randomizeData').addEventListener('click',
			function() {
				var zero = Math.random() < 0.2 ? true : false;
				barChartData.datasets.forEach(function(dataset) {
					dataset.data = dataset.data.map(function() {
						return zero ? 0.0 : randomScalingFactor();
					});

				});
				window.myBar.update();
			});


	//selectBox
	$(document).ready(function() {
		setDateBox();
	});

	// select box 연도 , 월 표시
	function setDateBox() {		
		var dt = new Date();
		var year = "";
		var com_year = dt.getFullYear();
		// 발행 뿌려주기
		$("#YEAR").append("<option value=''>" + com_year + " 년" +"</option>");
		// 올해 기준으로 -1년부터 +5년을 보여준다.
		for (var y = (com_year - 1); y <= (com_year + 5); y++) {
			$("#YEAR").append(
					"<option value='"+ y +"'>" + y + " 년" + "</option>");
		}
		// 월 뿌려주기(1월부터 12월)
		var month = dt.getMonth() + 1;
		$("#MONTH").append("<option value=''>" + month + " 월" + "</option>");
		for (var i = 1; i <= 12; i++) {
			$("#MONTH").append(
					"<option value='"+ i +"'>" + i + " 월" + "</option>");
		}

	}
</script>

</html>