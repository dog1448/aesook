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

.info {
	margin-bottom:15px;

}
.dt-buttons {
	margin-bottom:15px;
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
										<thead>
                                                <tr>
                                                    <th>방 이름</th>
                                                    <th>방 종류</th>
                                                    <th>ID</th>
                                                    <th>인원수</th>
                                                    <th>체크 인</th>
                                                    <th>체크 아웃</th>
                                                    <th>예약자</th>
                                                    <th>예약자 번호</th>
                                                    <th>예약날짜</th>
                                                    <th>취소날짜</th>
                                                    <th>총 액</th>
                                                    <th>예약 상태</th>
                                                    
                                                </tr>
                                        </thead>
                                         <tbody>
											<c:if test="${empty bookingHotelsList}">
												<p class="price"><span>조회되는 예약 내역이 없습니다.</span></p>
											</c:if> 
											<c:if test="${!empty bookingHotelsList}">
                                         	<c:forEach var="booking" items="${bookingHotelsList}" varStatus="vs">
                                                <tr>
                                                    <td>${booking.roomName}</td>
                                                    <td>${booking.roomSort}</td>
                                                    <td>${booking.memberId}</td>
                                                    <td>${booking.bookingCnt}</td>
                                                    <td>${booking.bookingCheckIn}</td>
                                                    <td>${booking.bookingCheckOut}</td>
                                                    <td>${booking.bookingName}</td>
                                                    <td>${booking.bookingPhone}</td>
                                                    <td>${booking.bookingDate}</td>
                                                    <td>
	                                                    <c:if test="${booking.bookingCancelDate eq null}">
	                                                    	해당 사항 없음
	                                                    </c:if>
	                                                    <c:if test="${booking.bookingCancelDate ne null}">
	                                                    	${booking.bookingCancelDate}
	                                                    </c:if>
                                                    </td>
                                                    <td> <fmt:formatNumber type="number" maxFractionDigits="3"
                                                     value="${booking.bookingTotalPrice}"/>￦</td>
                                                     <td class="text-center">
                                                    <c:if test='${booking.bookingStatus eq "C"}'>
                                                    	<label style="color:red;">취소</label>
                                                    </c:if>
                                                    <c:if test='${booking.bookingStatus ne "C"}'>
                                                    	<label style="color:blue;">결제완료</label>
                                                    </c:if>
                                                    &nbsp;<a type="button" class="btn-warning" 
                                                    data-toggle="modal" data-target="#modalPush${vs.index}"><i class="icon icon-zoom-in"></i></a>
                                                    </td>
                                                </tr>
                                                 <!--Modal: modalPush-->
														<div class="modal fade" id="modalPush${vs.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
														  aria-hidden="true">
														  <div class="modal-dialog modal-notify modal-info" role="document">
														    <!--Content-->
														    <div class="modal-content text-center">
														      <!--Header-->
														      <div class="modal-header d-flex justify-content-center">
														      	<br>
														        <h3 class="heading">예 약 정 보</h3>
														      </div>
														      <!--Body-->
														      <div class="modal-body">
														      <fieldset disabled="disabled">
														      	<div class="text-left col-md-6 info">
													                <label>방 이름 *</label>
													                <input value="${booking.roomName}" type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>방 타입  *</label>
													                <input value="${booking.roomSort}"  type="text" class="form-control" >
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>ID *</label>
													                <input value="${booking.memberId}"  type="text" class="form-control" >
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>인원수 *</label>
													                <input value="${booking.bookingCnt}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>체크 인  *</label> 
													                <input value="${booking.bookingCheckIn}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>체크 아웃 *</label>
													                <input value="${booking.bookingCheckOut}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>예약자 *</label>
													                <input value="${booking.bookingName}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>예약자 번호 *</label>
													                <input value="${booking.bookingPhone}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>예약날짜 *</label>
													                <input value="${booking.bookingDate}"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>취소날짜 *</label>
													                <c:if test="${booking.bookingCancelDate ne null}">
													                	<input value="${booking.bookingCancelDate}"  type="text" class="form-control">
													                </c:if>
													                <c:if test="${booking.bookingCancelDate eq null}">
													                	<input value="해당 사항 없음"  type="text" class="form-control">
													                </c:if>
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>총 액 *</label>
													                <input value="<fmt:formatNumber type="number" maxFractionDigits="3"
                                                    					 value="${booking.bookingTotalPrice}"/>￦"  type="text" class="form-control">
														      	</div>
														      	<div class="text-left col-md-6 info">
													                <label>결재상태 *</label>
													                <c:if test='${booking.bookingStatus eq "C"}'>
														                <input value="취소"  type="text" class="form-control">
				                                                    </c:if>
				                                                    <c:if test='${booking.bookingStatus ne "C"}'>
													                	<input value="결제완료"  type="text" class="form-control">
				                                                    </c:if>
														      	</div>
														      	</fieldset>
														   		<div class="text-right">
														        <a type="button" class="btn btn-outline btn-info" data-dismiss="modal">닫기</a>
														       </div>
														      </div>
														    </div>
														    <!--/.Content-->
														  </div>
														</div>
														<!--Modal: modalPush-->
                                           </c:forEach>
                                           </c:if>
                                           </tbody>
									</table>
									</div>
								</div>
							</div>
					<div class="modal-footer">
				        <button type="button" class="btn btn-default btn-outline"
				         onclick="javascript:history.go(-1);">뒤로가기</button>
				    </div>
						</div>
					</div>
				</div>
			</div>
		<%@ include file="footer.jspf" %>		

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	<hr>

	
	</body>
<script src="resources/admin/js/dataTables/jquery.dataTables.min.js"></script>
<script src="resources/admin/js/dataTables/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var table = $('#dataTables-example').DataTable({
            responsive: true,
            scrollY: "100%",
            "searching": false,
            columnDefs: [
                { targets: 0, width:'10%' },
                { targets: 1, width:'10%' }, 
                { targets: 2, width:'10%' },
                { targets: 3, visible : false}, 
                { targets: 4, width:'10%' }, 
                { targets: 5, width:'10%'}, 
                { targets: 6, visible : false}, 
                { targets: 7, visible : false},
                { targets: 8, width:'10%'},
                { targets: 9, visible : false},
                { targets: 10, width:'10%'},
                { targets: 11, width:'10%'},
                ],
            dom: 'Blfrtip',
            buttons: [{
                extend: 'csvHtml5',
                text: 'CSV',
                footer: true,
                className: 'exportBtn'
            },
            {
                extend: 'excelHtml5',
                text: 'EXCEL',
                footer: true,
                className: 'exportBtn'
            }
            ]
            
    });

});
</script>
</html>

