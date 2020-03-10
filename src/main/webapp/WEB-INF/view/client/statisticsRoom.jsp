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
										<li><a href="statistics.do">수입</a></li>
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
							<button id="randomizeData">Randomize Data</button>							
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
	var randomScalingFactor = function() {
		return Math.round(Math.random() * 100);
	};

	var config = {
		type : 'doughnut',
		data : {
			datasets : [ {
				data : [ randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), ],
				backgroundColor : [ window.chartColors.red,
						window.chartColors.orange, window.chartColors.yellow,
						window.chartColors.green, window.chartColors.blue, ],
				label : 'Dataset 1'
			} ],
			labels : [ 'Red', 'Orange', 'Yellow', 'Green', 'Blue' ]
		},
		options : {
			responsive : true,
			legend : {
				position : 'top',
			},
			title : {
				display : true,
				text : 'Chart.js Doughnut Chart'
			},
			animation : {
				animateScale : true,
				animateRotate : true
			}
		}
	};

	window.onload = function() {
		var ctx = document.getElementById('chart-area').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
	};

	document.getElementById('randomizeData').addEventListener('click',
			function() {
				config.data.datasets.forEach(function(dataset) {
					dataset.data = dataset.data.map(function() {
						return randomScalingFactor();
					});
				});

				window.myDoughnut.update();
			});

	var colorNames = Object.keys(window.chartColors);
	document.getElementById('addDataset').addEventListener('click', function() {
		var newDataset = {
			backgroundColor : [],
			data : [],
			label : 'New dataset ' + config.data.datasets.length,
		};

		for (var index = 0; index < config.data.labels.length; ++index) {
			newDataset.data.push(randomScalingFactor());

			var colorName = colorNames[index % colorNames.length];
			var newColor = window.chartColors[colorName];
			newDataset.backgroundColor.push(newColor);
		}

		config.data.datasets.push(newDataset);
		window.myDoughnut.update();
	});

	document
			.getElementById('addData')
			.addEventListener(
					'click',
					function() {
						if (config.data.datasets.length > 0) {
							config.data.labels.push('data #'
									+ config.data.labels.length);

							var colorName = colorNames[config.data.datasets[0].data.length
									% colorNames.length];
							var newColor = window.chartColors[colorName];

							config.data.datasets.forEach(function(dataset) {
								dataset.data.push(randomScalingFactor());
								dataset.backgroundColor.push(newColor);
							});

							window.myDoughnut.update();
						}
					});

	document.getElementById('removeDataset').addEventListener('click',
			function() {
				config.data.datasets.splice(0, 1);
				window.myDoughnut.update();
			});

	document.getElementById('removeData').addEventListener('click', function() {
		config.data.labels.splice(-1, 1); // remove the label first

		config.data.datasets.forEach(function(dataset) {
			dataset.data.pop();
			dataset.backgroundColor.pop();
		});

		window.myDoughnut.update();
	});

	document.getElementById('changeCircleSize').addEventListener('click',
			function() {
				if (window.myDoughnut.options.circumference === Math.PI) {
					window.myDoughnut.options.circumference = 2 * Math.PI;
					window.myDoughnut.options.rotation = -Math.PI / 2;
				} else {
					window.myDoughnut.options.circumference = Math.PI;
					window.myDoughnut.options.rotation = -Math.PI;
				}

				window.myDoughnut.update();
			});
</script>

</html>