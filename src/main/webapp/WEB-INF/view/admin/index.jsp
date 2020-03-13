<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="head.jspf" %>
</head>
<body>
<div id="wrapper">
    <%@ include file="nav.jspf" %>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">HOME</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${userCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Total Users</span>
                                <span class="pull-right"></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <!-- <i class="fa fa-tasks fa-4x"></i> -->
                                    <img src="resources/admin/images/hotel.png">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${hotelCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Hotel</span>
                                <span class="pull-right"></span>

                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/admin/images/motel.png">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${motelCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Motel</span>
                                <span class="pull-right"></span>

                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/admin/images/guesthouse.png">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${guestCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Guest House</span>
                                <span class="pull-right"></span>

                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/admin/images/pan.png">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${pensionCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Pension</span>
                                <span class="pull-right"></span>

                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/admin/images/rizo.png">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${resortCnt}</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Resort / Condo</span>
                                <span class="pull-right"></span>

                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <!--일단 여기까지 했어-->
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> 월별 예약 건수
                            <div class="pull-right">
                            	<button class="btn btn-success" id="search1" style="height: 20px; margin-left: 10%; font-size:10px;">조회</button>
                            </div>
                           	<div class="pull-right">                            	
                              	<input type="text" id="year1" class="form-control yearpicker1" style="height: 20px; width: 90%; margin-left: 10%; text-align: center;">                              
                            </div>
                            <div class="pull-right">
                            	<label for="date">연도 검색</label>
                            </div>  
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div>
                                <canvas id="lineChart"></canvas>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> 월별 매출
                            <div class="pull-right">
                            	<button class="btn btn-success" id="search2" style="height: 20px; margin-left: 10%; font-size:10px;">조회</button>
                            </div>
                            <div class="pull-right">                            	
                              	<input type="text" id="year2" class="form-control yearpicker2" style="height: 20px; width: 90%; margin-left: 10%; text-align: center;">                              
                            </div>
                            <div class="pull-right">
                            	<label for="date">연도 검색</label>
                            </div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">


                                <!-- /.col-lg-4 (nested) -->

                                    <div>
                                        <canvas id="dollarChart"></canvas>
                                    </div>

                                <!-- /.col-lg-8 (nested) -->

                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>

                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Server Monitering
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <canvas id="myChart" width="400" height="400"></canvas>
                            </div>
                            <!-- /.list-group -->
                            <button class="btn btn-default btn-block" id="refresh">새로고침</button>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> 숙소별 예약률
                        </div>
                        <div class="panel-body">
                            <div>
                                <canvas id="pieChart"></canvas>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>



                        <!-- /.panel-footer -->
                    </div>
                    <!-- /.panel .chat-panel -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->


</div>
<%@ include file="javascript.jspf" %>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<script type="text/javascript">
	$('.yearpicker1').datepicker({
		minViewMode : 'years',
		format : 'yyyy',
		'autoclose': true
	});
	$('.yearpicker1').datepicker('setDate', 'today');
	var chartLabels1 = [];
	var chartData1 = [];
	var config1 = {
	        // The type of chart we want to create
	        type: 'line',

	        // The data for our dataset
	        data: {
	            labels: chartLabels1,
	            datasets: [{
	                label: '예약수 (단위 : 개)',
	                backgroundColor: 'rgb(255, 204, 204)',
	                borderColor: 'rgb(255, 99, 132)',
	                data: chartData1
	            }]
	        },
	        options: {}
	    }
	function createChart1() {
		 var ctx1 = document.getElementById('lineChart').getContext('2d');
		 window.myChart1 = new Chart(ctx1, config1);
	}
	$(document).ready(function() {
		$.ajax({
			url : "getMonthlyTotalBooking.admin",
			type : "post",
			dataType : "json",
			async : false,
			data : {
				"year" : $("#year1").val()				
			},
			success : function(data) {
				// ArrayList loop
				for (var i = 0; i < data.length; i++) {
					// HashMap
					var map = data[i];
					// HashMap loop
					for ( var key in map) {
						if (key == 'booking_date') {									
							chartLabels1.push(map[key]);
							console.log("컬럼 : " + key + " value : "
									+ map[key]);
						}
						if (key == 'booking_count') {
							chartData1.push(map[key]);
							console.log("col : " + key + " value : "
									+ map[key]);
						}

					}

				}

			}
		})

		createChart1();		
	});
	
	$(document).on("click","#search1",function() {
		chartLabels1.length = 0;
		chartData1.length = 0;
		if ($("#year1").val() == "") {
			alert("연도를 선택해주세요.")
			return;
		}

		$.ajax({
			url : "getMonthlyTotalBooking.admin",
			type : "post",
			dataType : "json",
			async : false,
			data : {
				"year" : $("#year1").val()				
			},
			success : function(data) {
				// ArrayList loop	
				for (var i = 0; i < data.length; i++) {
					// HashMap
					var map = data[i];
					// HashMap loop
					for ( var key in map) {
						if (key == 'booking_date') {
							chartLabels1.push(map[key])
							console.log("컬럼 : " + key + " value : "
									+ map[key]);
						}
						
						if (key == 'booking_count') {
							chartData1.push(map[key])
							console.log("col : " + key + " value : "
									+ map[key]);
						}

					}

				}

			}
		})
		var dataset = config1.data.datasets;
		for(var i=0; i<dataset.length; i++){
			console.log(dataset);
			//데이터 갯수 만큼 반복
			var data = dataset[i].data;
			for(var j=0 ; j < data.length ; j++){
				data[j] = chartData1[j];
			}
		}
		window.myChart1.update();
		
	});
   
</script>

<script>
	var chart2 = new Array();
    var config2 = {    		
            type: 'bar',
            data: {
                labels: ['CPU', 'Memory'],
                datasets: [
                {  
                	label: ['(단위 : %)'],                	
                    data: chart2,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        };
    
    function createChart2() {
    	 var ctx = document.getElementById('myChart').getContext('2d');
    	 window.myChart2 = new Chart(ctx, config2);    	    
	}
    $(document).ready(function() {
		$.ajax({
			url : "monitering.admin",
			type : "post",
			dataType : "json",
			async : false,			
			success : function(data) {
				for ( var key in data) {
					if (key == 'cpu') {									
						chart2[0] = data[key];
						console.log("컬럼 : " + key + " value : "
								+ data[key]);
					}
				
					if (key == 'Memory') {
						chart2[1] = data[key];
						console.log("col : " + key + " value : "
								+ data[key]);
					}

				}
			}
		})

		createChart2();		
	});
   
    $(document).on("click","#refresh",function() {
    	$.ajax({
			url : "monitering.admin",
			type : "post",
			dataType : "json",
			async : false,			
			success : function(data) {
				for ( var key in data) {
					if (key == 'cpu') {									
						chart2[0] = data[key];
						console.log("컬럼 : " + key + " value : "
								+ data[key]);
					}
				
					if (key == 'Memory') {
						chart2[1] = data[key];
						console.log("col : " + key + " value : "
								+ data[key]);
					}

				}
			}
		})
		
		window.myChart2.update();
		
	});
</script>

<script type="text/javascript">
	$('.yearpicker2').datepicker({
		minViewMode : 'years',
		format : 'yyyy',
		'autoclose': true
	});
	$('.yearpicker2').datepicker('setDate', 'today');
	var chartLabels = [];
	var chartData = [];
	var config = {
	        // The type of chart we want to create
	        type: 'line',

	        // The data for our dataset
	        data: {
	            labels: chartLabels,
	            datasets: [{
	                label: '수입 (단위 : 원)',

	                borderColor: '#7CFF55',
	                data: chartData
	            }]
	        },
	        options: {}
	    };
	function createChart() {
		 var ctx = document.getElementById('dollarChart').getContext('2d');
		 window.myChart = new Chart(ctx, config);
	}
	$(document).ready(function() {
		$.ajax({
			url : "getMonthlyTotalPrice.admin",
			type : "post",
			dataType : "json",
			async : false,
			data : {
				"year" : $("#year2").val()				
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

		createChart();		
	});
	
	$(document).on("click","#search2",function() {
		chartLabels.length = 0;
		chartData.length = 0;
		if ($("#year2").val() == "") {
			alert("연도를 선택해주세요.")
			return;
		}

		$.ajax({
			url : "getMonthlyTotalPrice.admin",
			type : "post",
			dataType : "json",
			async : false,
			data : {
				"year" : $("#year2").val()				
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
		for(var i=0; i<dataset.length; i++){
			console.log(dataset);
			//데이터 갯수 만큼 반복
			var data = dataset[i].data;
			for(var j=0 ; j < data.length ; j++){
				data[j] = chartData[j];
			}
		}
		window.myChart.update();
		
	});
   
</script>

<script type="text/javascript">
	var allReservationCnt = ${allReservationCnt};
	var motelReservationRate =Math.round(${motelReservationCnt}/allReservationCnt*100);
	var hotelReservationRate =Math.round(${hotelReservationCnt}/allReservationCnt*100);
	var guesthouseReservationRate =Math.round(${guesthouseReservationCnt}/allReservationCnt*100);
	var pensionReservationRate =Math.round(${pensionReservationCnt}/allReservationCnt*100);
	var resortReservationRate =Math.round(${resortReservationCnt}/allReservationCnt*100);
	
    var ctx = document.getElementById('pieChart').getContext('2d');

    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'pie',

        // The data for our dataset
        data: {

            datasets: [{
                borderColor: '#ffff',
                weight:100,
                data: [motelReservationRate,hotelReservationRate,guesthouseReservationRate,pensionReservationRate,resortReservationRate],

                backgroundColor:[
                    'rgba(255, 99, 132, 1)'
                    ,'rgba(255, 206, 86, 1)'
                    ,'rgba(54, 162, 235, 1)'
                    ,'green'
                    ,'purple'
                    ]
            }],
            labels: ['모텔%','호텔%','게스트하우스%','펜션%','리조트%']
        },

        // Configuration options go here
        options: {}
    });
</script>

</body>
</html>
