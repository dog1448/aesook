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
							<div class="container">
								<div class="row">
									<div class="col-xs-12" style="width: 60%;">
										<ul class="nav nav-pills nav-justified thumbnail">
											<li class="active"><a href="statistics.do">
													<h4 class="list-group-item-heading">월별 수입</h4>
											</a></li>
											<li><a href="statisticsRoom.do">
													<h4 class="list-group-item-heading">객실별 예약률</h4>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
							<input class="input100" type="hidden" name="memberId"
								id="memberId" value="${login.memberId}">
							<div>&nbsp;</div>
							<div class="input-group">
								<div class="pull-right">
									<button class="btn btn-success" id="search"
										style="height: 30px; margin-left: 10%; font-size: 10px;">검색</button>
								</div>
								<div class="pull-right">
									<input type="text" id="year" class="form-control yearpicker"
										style="height: 30px; width: 90%; margin-left: 10%; text-align: center;">
								</div>
								<div class="pull-right">
									<label for="date" style="font-size: 18px;">연도 검색</label>
								</div>
							</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div>&nbsp;</div>
							<div class="row">
								<div class="col-md">
									<div id="container" style="width: 100%;">
										<canvas id="canvas"></canvas>
									</div>
								</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div>&nbsp;</div>
								<div class="col-md">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h3 class="panel-title"></h3>
										</div>
										<table class="table table-hover" id="dev-table">
											<thead>
												<tr>
													<th>월</th>
													<th>수입</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="date0"></td>
													<td class="price0"></td>
												</tr>
												<tr>
													<td class="date1"></td>
													<td class="price1"></td>
												</tr>
												<tr>
													<td class="date2"></td>
													<td class="price2"></td>
												</tr>
												<tr>
													<td class="date3"></td>
													<td class="price3"></td>
												</tr>
												<tr>
													<td class="date4"></td>
													<td class="price4"></td>
												</tr>
												<tr>
													<td class="date5"></td>
													<td class="price5"></td>
												</tr>
												<tr>
													<td class="date6"></td>
													<td class="price6"></td>
												</tr>
												<tr>
													<td class="date7"></td>
													<td class="price7"></td>
												</tr>
												<tr>
													<td class="date8"></td>
													<td class="price8"></td>
												</tr>
												<tr>
													<td class="date9"></td>
													<td class="price9"></td>
												</tr>
												<tr>
													<td class="date10"></td>
													<td class="price10"></td>
												</tr>
												<tr>
													<td class="date11"></td>
													<td class="price11"></td>
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

	</div>
	<%@include file="footer.jspf"%>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>


<script>
$(document).ready(
		function() {
			$.ajax({
				url : "getMonthlyTotalPrice.do",
				type : "post",
				dataType : "json",
				async : false,
				data : {
					"year" : $("#year").val(),
					"memberId" : $("#memberId").val()
				},
				success : function(data) {
					// ArrayList loop
					for (var i = 0; i < data.length; i++) {
						// HashMap
						var map = data[i];
						// HashMap loop
						for ( var key in map) {
							if (key == 'booking_date') {
								chartLabels.push(map[key]);
								console.log("컬럼 : " + key + " value : "
										+ map[key]);
							}
							if (key == 'booking_total_price') {
								chartData.push(map[key]);
								console.log("col : " + key + " value : "
										+ map[key]);
							}

						}

					}

				}
			})
			max = Math.max.apply(null, chartData);
			max = max + 500000;
			console.log(max);
			config = {
					type : 'bar',
					data : {
						labels : chartLabels,
						datasets : [ {
							label : '수입',
							backgroundColor : color(window.chartColors.blue).alpha(0.5)
									.rgbString(),
							borderColor : window.chartColors.blue,
							borderWidth : 1,
							data : chartData
						} ]
					},
					options : {
						tooltips: {
					          callbacks: {
					                label: function(tooltipItem, data) {
					                    var value = data.datasets[0].data[tooltipItem.index];
					                    if(parseInt(value) >= 1000){
					                               return '￦' + value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					                            } else {
					                               return '￦' + value;
					                            }
					                }
					          } // end callbacks:
					    },
						scales: {
							yAxes: [{
								ticks: {							
									suggestedMax : max,					
									fontSize : 15,
									beginAtZero: true,
									userCallback : function(value, index, values) {
										value = value.toString();
										value = value.split(/(?=(?:...)*$)/);
										value = value.join(',');
										return value;
									}
								}								   
							}]
						},
						legend : {
							position : 'top'
						},
						title : {
							display : true,
							text : '월간 수입 (단위 : 원)'
						}

					}
				};
			createChart();
			$('.panel-title').text($("#year").val() + '년도 월별 수입');
			for (var i = 0; i < 12; i++) {
				$('.date' + i).text(chartLabels[i]);
				$('.price' + i).text(numberWithCommas(chartData[i]) + ' 원');
			}
			
		});

	var chartLabels = [];
	var chartData = [];
	var max;
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	var color = Chart.helpers.color;
	$('.yearpicker').datepicker({
		minViewMode : 'years',
		format : 'yyyy',
		'autoclose' : true
	});

	$('.yearpicker').datepicker('setDate', 'today');

	var config;

	function createChart() {
		var ctx = document.getElementById('canvas').getContext('2d');
		window.myBar = new Chart(ctx, config);

	};

	
	$(document).on(
			"click",
			"#search",
			function() {
				chartLabels.length = 0;
				chartData.length = 0;
				if ($("#year").val() == "") {
					alert("연도를 선택해주세요.")
					return;
				}

				$.ajax({
					url : "getMonthlyTotalPrice.do",
					type : "post",
					dataType : "json",
					async : false,
					data : {
						"year" : $("#year").val(),
						"memberId" : $("#memberId").val()
					},
					success : function(data) {
						// ArrayList loop	
						for (var i = 0; i < data.length; i++) {
							// HashMap
							var map = data[i];
							// HashMap loop
							for ( var key in map) {
								if (key == 'booking_date') {
									chartLabels.push(map[key])
									console.log("컬럼 : " + key + " value : "
											+ map[key]);
								}

								if (key == 'booking_total_price') {
									chartData.push(map[key])
									console.log("col : " + key + " value : "
											+ map[key]);
								}

							}

						}

					}
				})
				var dataset = config.data.datasets;
				for (var i = 0; i < dataset.length; i++) {
					console.log(dataset);
					//데이터 갯수 만큼 반복
					var data = dataset[i].data;
					for (var j = 0; j < data.length; j++) {
						data[j] = chartData[j];
					}
				}
				window.myBar.update();
				$('.panel-title').text($("#year").val() + '년도 월별 수입');
				for (var i = 0; i < 12; i++) {
					$('.date' + i).text(chartLabels[i]);
					$('.price' + i).text(numberWithCommas(chartData[i]) + ' 원');
				}
			});
</script>

</html>