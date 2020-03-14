<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/client/css/image.css">
<link href="resources/client/css/step.css" rel="stylesheet">
<%@include file="head.jspf"%>
<style type="text/css">
.table-wrapper {
		width: 700px;
		margin: 30px auto;
        background: #fff;
        padding: 20px;	
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
    }
    .table-title .add-new {
        float: right;
		height: 30px;
		font-weight: bold;
		font-size: 12px;
		text-shadow: none;
		min-width: 100px;
		border-radius: 50px;
		line-height: 13px;
    }
	.table-title .add-new i {
		margin-right: 4px;
	}
    table.table {
        table-layout: fixed;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table th:last-child {
        width: 100px;
    }
    table.table td a {
		cursor: pointer;
        display: inline-block;
        margin: 0 5px;
		min-width: 24px;
    }    
	table.table td a.add {
        color: #27C46B;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table td a.add i {
        font-size: 24px;
    	margin-right: -1px;
        position: relative;
        top: 3px;
    }    
    table.table .form-control {
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
    }
	table.table .form-control.error {
		border-color: #f50000;
	}
	table.table td .add {
		display: none;
	}
	

</style>
<script type="text/javascript">
$(document).on('click', 'button[name=delete]', function() {
	
	var confirmVal = confirm('정말 삭제하시겠습니까?');
	if(confirmVal == false) {
		return;
	}
	
	var test = $(this).parents('form');
	test.submit();
})
</script>
</head>
<body>
<%@ include file="main_header.jspf" %>
	  <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation"></nav>

		<div id="colorlib-about">
			<div class="container">
				<div class="row">
					<div class="about-flex">
						<!-- 사이드바 -->
						<%@ include file="managementSidebar.jspf"%>
						<div class="col-three-forth animate-box">
						<div>
		                  	<h2><strong>MODIFY THE ROOM</strong></h2>
		                    <hr> 
                  			</div>
							  <div class="panel-body">
								   <div class="row">
								    	<div class="col-md-12 column">
						            <table class="table table-bordered">
						                <thead>
						                    <tr>
						                        <th>방 이름</th>
						                        <th>방 종류</th>
						                        <th>변경/삭제</th>
						                    </tr>
						                </thead>
						                <c:forEach var="room" items="${roomList}">
						                <form method="post" action="deleteRoom.do">
						                <tbody>
						                    <tr>
						                        <td>${room.roomName}
						                        	<input type="hidden" name="roomName" value="${room.roomName}">
						                        </td>
						                        <td>${room.roomSort}
						                        	<input type="hidden" name="roomSort" value="${room.roomSort}">
						                        </td>
						                        <td class="text-center">
						                           <button type="button" name="delete" class="btn-danger"><i class="icon icon-trash"></i></button>
						                        </td>
						                    </tr>
						                </tbody>
						                <input type="hidden" name="hotelsCode" value="${hotelsCode}">
						                </form>
						                </c:forEach>
						            </table>
										</div><!-- col-md-12 column -->
									</div><!-- row -->
								</div><!-- panel-body -->
							<hr>
	                        <div class="text-left">
	                           <button type="button" data-toggle="modal" data-target="#modifyInsertRoomSort"  class="btn btn-info btn-outline" onclick="">추가</button>
	                        </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jspf"%>
	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

<!-- modifyInsertRoomSort Modal -->
<script type="text/javascript">
$(document).ready(function(){
	var roomSortList = new Array();
	var optionList = ""
	<c:forEach var="sort" items="${sessionScope.RoomType}">
		roomSortList.push("${sort.roomSort}");
	</c:forEach>
	for (var i = 0; i < roomSortList.length; i++) {
		optionList += "<option>"+roomSortList[i]+"</option>"
	}	
	
    var i=1;
   $("#add_row").click(function(){
    $('#addr'+i).html("<td><input name='roomList["+i+"].roomName' type='text' placeholder='RoomName' class='form-control input-md roomName'/></td><td><select name='roomList["+i+"].roomSort' class='form-control'>"+optionList+"</select>");

    $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
    i++; 
});
   $("#delete_row").click(function(){
       if(i>1){
		 $("#addr"+(i-1)).html('');
		 i--;
		 }
	 });

});
</script>
<!-- Modal Room Type -->
<div class="modal fade" id="modifyInsertRoomSort" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
		<form method="post" action="insertRoom.do" id ="roomForm">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">최소한의 1개의 방이 있어야 방 종류가 생성가능합니다.</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
			  <div class="panel-body">
			    <div class="row">
			    	<div class="col-md-12 column">
						<table class="table table-bordered table-hover" id="tab_logic" border="1">
							<thead>
								<tr>
									<th>방 이름</th>
									<th>방 종류</th>
								</tr>
							</thead>
							<tbody>
								<tr id='addr0'>
									<td>
									<input type="text" name='roomList[0].roomName'  placeholder='RoomName' class="form-control roomName"/>
									</td>
									<td>
									<select name='roomList[0].roomSort' class="form-control">
									<c:forEach var="sort" items="${sessionScope.RoomType}">
										<option>${sort.roomSort}</option>
									</c:forEach>
									</select>
									</td>
								</tr>
			                    <tr id='addr1'></tr>
							</tbody>
						</table>
			                <a id="add_row" class="btn btn-info btn-outline"> 추가</a>
			                <a id="delete_row" class="btn btn-danger btn-outline pull-right"></span> 삭제</a>
							</div>
							</div>
              </div>
      </div>
		<input type="hidden" value="${hotelsCode}" name="hotelsCode">
      <!--Footer-->
      <div class="modal-footer">
        <input type="button" onclick="insertModifySort()" class="btn btn-info btn-outline" value="등록하기">
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<!-- Modal: RoomType -->
</body>
</html>