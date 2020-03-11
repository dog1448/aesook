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
	<div id="page">
		<%@ include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div id="colorlib-about">
		<input class="input100" type="hidden" name="memberId" id="memberId" value="${login.memberId}">
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
										<li><a href="statistics.do">월별 수입</a></li>
										<li class="active"><a href="statisticsRoom.do">객실별	예약률</a></li>
									</ul>
								</div>
							</nav>
							<input class="input100" type="hidden" name="memberId"
								id="memberId" value="${login.memberId}">
							<div>&nbsp;</div>
							<div id="canvas-holder" style="width: 100%">
								<canvas id="chart-area"></canvas>
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
	var chartLabels = [];
	var chartData = [];
	

	var config = {
		type : 'doughnut',
		data : {
			datasets : [ {
				data : chartData,
				backgroundColor : [ window.chartColors.red,
						window.chartColors.orange, window.chartColors.yellow,
						window.chartColors.green, window.chartColors.blue, ],
				label : 'Dataset 1'
			} ],
			labels : chartLabels
		},
		options : {
			responsive : true,
			legend : {
				position : 'top',
			},
			title : {
				display : true,
				text : '객실별 예약률 (단위 : %)'
			},
			animation : {
				animateScale : true,
				animateRotate : true
			}
		}
	};

	function createChart() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
	};
	

	$(document).ready(function() {
		$.ajax({
			url : "getRoomRatio.do",
			type : "post",
			dataType : "json",
			async : false,
			data : {				
				"memberId" : $("#memberId").val()
			},
			success : function(data) {
				// ArrayList loop
				for (var i = 0; i < data.length; i++) {
					// HashMap
					var map = data[i];
					// HashMap loop
					for ( var key in map) {
						if (key == 'room_sort') {									
							chartLabels.push(map[key]);
							console.log("컬럼 : " + key + " value : "
									+ map[key]);
						}
						if (key == 'room_ratio') {
							chartData.push(map[key]);
							console.log("col : " + key + " value : "
									+ map[key]);
						}

					}

				}

			}
		})

		createChart();		
	});
</script>

</html>