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
    .last {
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
        height: 50px;
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

	.trC {
		height: 15px;
	}
</style>
<script type="text/javascript">
$(document).on('click', 'button[name=delete]', function() {
	
	var confirmVal = confirm('정말 삭제하시겠습니까?');
	if(confirmVal == false) {
		return false;
	}
	
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
		                  	<div  class="text-right">
					           <a href="modifyRoomSort.do" class="btn btn-info btn-outline text-right">방 타입 등록</a>
					         </div>
                  			</div>
							  <div class="panel-body">
								   <div class="row">
								    	<div class="col-md-12 column">
						            <table class="table table-bordered">
						                <thead>
						                    <tr>
						                        <th>방 이름</th>
						                        <th>방 종류</th>
						                        <th class="last">변경/삭제</th>
						                    </tr>
						                </thead>
						                <c:forEach var="room" items="${roomList}">
						                <div>
							                <form method="post" action="modifyDeleteRoom.do">
							                <tbody>
							                    <tr>
							                        <td>${room.roomName}
							                        	<input type="hidden" name="roomName" value="${room.roomName}">
							                        </td>
							                        <td>${room.roomSort}
							                        	<input type="hidden" name="roomSort" value="${room.roomSort}">
							                        </td>
							                        <td class="text-center">
							                           <button name="delete" class="btn-danger"><i class="icon icon-trash"></i></button>
							                        </td>
							                    </tr>
							                </tbody>
							                <input type="hidden" name="hotelsCode" value="${hotelsCode}">
							                </form>
						                </div>
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
	<c:forEach var="sort" items="${roomSortList}">
		var optionList = ""
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

function checkz() {
	
	var roomNameList = new Array();
	var flag = true;
	
	$('.roomName').each(function (index, item) {
		var test = $(item).val();
		roomNameList.push(test);
		if(test == ""){
			flag = false;
			alert("방 이름을 입력하세요.");					
			return;
		}	
	});
	if(!flag){
		return flag;
	}
	
	<c:forEach var="sort" items="${roomList}">
		roomNameList.push("${sort.roomName}");
	</c:forEach>
	
	for (var i = 0; i < roomNameList.length; i++) {
		for (var j = i+1; j < roomNameList.length; j++) {
			if (roomNameList[i] == roomNameList[j]){
				alert("같은 이름의 방이 있습니다.");
				return;
			}
		}
	}
	
	$('#roomForm').submit();
}
</script>
<!-- Modal Room Type -->
<div class="modal fade" id="modifyInsertRoomSort" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
		<form method="post" action="modifyInsertRoom.do" id ="roomForm">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">같은 이름은 등록이 불가능합니다.</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
			  <div class="panel-body">
			    <div class="row">
						<table class="table table-bordered table-hover" id="tab_logic" border="1">
							<thead>
								<tr>
									<th>방 이름</th>
									<th>방 종류</th>
								</tr>
							</thead>
							<tbody >
								<tr id='addr0' class="trC">
									<td>
									<input type="text" name='roomList[0].roomName'  placeholder='RoomName' class="form-control roomName"/>
									</td>
									<td>
									<select name='roomList[0].roomSort' class="form-control">
									<c:forEach var="sort" items="${roomSortList}">
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
		<input type="hidden" value="${hotelsCode}" name="hotelsCode">
		<input type="hidden" value="${roomSortList}" name="roomSortList">
      <!--Footer-->
      <div class="modal-footer">
        <input type="button" onclick="checkz()" class="btn btn-info btn-outline" value="등록하기">
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<!-- Modal: RoomType -->
</body>
</html>