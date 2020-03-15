<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<c:if test="${message ne null}">
	<script type="text/javascript">
	var message = "${message}";
	alert(message);
	</script>
</c:if>
	<head>
	<%@ include file="head.jspf" %>
	<link href="resources/admin/css/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="resources/admin/css/dataTables/dataTables.responsive.css" rel="stylesheet">
<style type="text/css">
    
#dataTables-example th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}



    </style>
	</head>
	<body>
		
	<div class="colorlib-loader">  </div>

	<div id="page">
		 <%@ include file="main_header.jspf" %>
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>


			<div id="colorlib-contact">
			<div class="container">
				<div class="row">
							<h2>예약 조회</h2>	
							<hr>
							<div>&nbsp;</div>				
							<div class="row">								
								<div class="col-md-12">	
									<div class="room-wrap">
									<table  class="table table-striped table-bordered table-hover" id="dataTables-example">
							<!-- 	<c:if test="${empty bookingList}">
										<p class="price"><span>조회되는 예약 내역이 없습니다.</span></p>
									</c:if> -->
										<thead>
                                                <tr>
                                                    <th>방 이름</th>
                                                    <th>방 종류</th>
                                                    <th>ID</th>
                                                    <th>체크 인</th>
                                                    <th>체크 아웃</th>
                                                    <th>예약 날짜</th>
                                                    <th>총 액</th>
                                                    <th>예약 상태</th>
                                                </tr>
                                        </thead>
                                         <tbody>
                                                <tr>
                                                    <td>Booking_Code</td>
                                                    <td>Hotels_Code</td>
                                                    <td>Member_Id</td>
                                                    <td>Booking_Date</td>
                                                    <td>Booking_Total_Price</td>
                                                    <td>Booking_Status</td>
                                                    <td>Booking_Status</td>
                                                    <td>Booking_Status</td>
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
		<%@ include file="footer.jspf" %>		

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

	
	</body>
	        <script src="resources/admin/js/dataTables/jquery.dataTables.min.js"></script>
        <script src="resources/admin/js/dataTables/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var table = $('#dataTables-example').DataTable({
            responsive: true,
            scrollY: "100%",
            columnDefs: [
                { targets: 0, width:'10%' }, // Booking_Code
                { targets: 1, width:'10%' }, // Hotels_Name
                { targets: 2, width:'10%' }, // Member_Id
                { targets: 3, width:'10%' }, // Booking_Date
                { targets: 4, width:'10%' }, // Booking_Total_Price
                { targets: 5, width:'10%'}, // Booking_Status
                { targets: 6, width:'10%'}, // Booking_Status
                { targets: 7, width:'10%'} // Booking_Status
                ]
            
    });

});
</script>
</html>

