<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
 	<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Alarm</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Alarm - Table
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>보낸이</th>
                                                    <th>Title</th>
                                                    <th class="text-center">Date</th>
                                                    <th class="text-center">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="alarm" items="${alarmList}" varStatus="vs">
                                                <tr class="odd gradeX">
                                                    <td>${alarm.alarmSendId}</td>
                                                    <td><a data-toggle="modal" data-target="#modalPush${vs.index}">${alarm.alarmTitle}</a>
                                                     <!--Modal: modalPush-->
														<div class="modal fade" id="modalPush${vs.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
														  aria-hidden="true">
														  <div class="modal-dialog modal-notify modal-info" role="document">
														    <!--Content-->
														    <form action="alarm.admin" method="POST" id="modalForm">
														    <div class="modal-content text-center">
														      <!--Header-->
														      <div class="modal-header d-flex justify-content-center">
														        <p class="heading">${alarm.alarmTitle}</p>
														      </div>
														
														      <!--Body-->
														      <div class="modal-body ">
														        <img src="${alarm.brnImagePath}${alarm.brnImageName}" width="400px" height="200px">
														        <hr>
														        <p>${alarm.alarmContents}</p>
														      </div>
														      <input type="hidden" id="status" name="sta">
															  <input type="hidden" value="${alarm.alarmSendId}" name="alarmSendId">
															  <input type="hidden" value="${alarm.alarmRecieveId}" name="alarmRecieveId">
															  <input type="hidden" value="${alarm.alarmStatus}" name="alarmStatus">
															  <input type="hidden" value="${alarm.brnImageName}" name="brnImageName">
															  
														      <!--Footer-->
														      <div class="modal-footer flex-center">
														      <c:if test="${alarm.alarmStatus eq 'N'}">
														        <a type="button" onclick="success()" class="btn btn-outline btn-success">수락</a>
														        <a type="button" onclick="fail()" class="btn btn-outline btn-danger">거절</a>
														      </c:if>
														        <a type="button" class="btn btn-outline btn-info" data-dismiss="modal">취소</a>
														      </div>
														    </div>
														    </form>
														    
														    <!--/.Content-->
														  </div>
														</div>
														<!--Modal: modalPush-->
                                                    </td>
                                                    
                                                    <td class="text-center">${alarm.alarmDate}</td>
                                                    <c:if test="${alarm.alarmStatus eq 'N'}">
                                                    	<td class="text-center text-info"><label>NOT READ</label></td>                                                    
                                                    </c:if>
                                                    <c:if test="${alarm.alarmStatus eq 'Y'}">
                                                    	<td class="text-center text-warning"><label>READ</label></td>
                                                    </c:if>
                                                    <c:if test="${alarm.alarmStatus eq 'D'}">
                                                   		 <td class="text-center text-danger"><label>DELETE</label></td>
                                                    </c:if>
                                                    </tr>
               
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                   
                    
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
</div>
<%@ include file="javascript.jspf" %>
<script type="text/javascript">
function success() {
	$('#status').val(true);
	$('#modalForm').submit();
}
function fail() {
	$('#status').val(false);
	$('#modalForm').submit();
}
function notRead() {
	location.href="alarm.admin?status=N";
}
function read() {
	location.href="alarm.admin?status=Y";
}
function del() {
	location.href="alarm.admin?status=D";
}
$(document).ready(function() {
    var table = $('#dataTables-example').DataTable({
            responsive: true,
            scrollY: "100%",
            columnDefs: [
            { targets: 0, width:'10%' }, // 보낸이
            { targets: 1, width:'40%' }, // 제목
            { targets: 2, width:'20%' }, // 날짜
            { targets: 3, width:'10%' } // 상태
            ]
    });
    
    
     /* Board 정하기 */
    $('#dataTables-example_filter').prepend('<input class="btn btn-primary btn-sm btn-outline" onclick="del()" type="button" value="삭제된 쪽지">&nbsp;&nbsp;');
    $('#dataTables-example_filter').prepend('<input class="btn btn-primary btn-sm btn-outline" onclick="read()" type="button" value="읽은 쪽지">&nbsp;&nbsp;');
    $('#dataTables-example_filter').prepend('<input class="btn btn-primary btn-sm btn-outline" onclick="notRead()" type="button" value="안 읽은 쪽지">&nbsp;&nbsp;');
	
    

});
</script>
</body>
</html>