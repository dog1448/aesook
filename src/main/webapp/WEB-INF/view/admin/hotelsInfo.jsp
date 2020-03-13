<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <div class="row"><div>&nbsp;</div>
                        <div class="col-lg-12">
                            <h1 class="page-header">Hotel Info</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Basic Form Elements
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <form role="form" action="updateHotel.admin" method="post" onsubmit="return modibtClick()">

                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>Hotels_Code</label>
                                                    <input class="form-control" value="${hotel.hotelsCode }" disabled>
                                                	<input type="hidden" value="${hotel.hotelsCode }" name="hotelsCode">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Name</label>
                                                    <input name="hotelsName" class="form-control" value="${hotel.hotelsName }">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Type</label>
                                                    <input name="hotelsType" class="form-control" value="${hotel.hotelsType }">
                                                </div>
                                                <div class="form-group">
                                                    <label>Member_Id</label>
                                                    <input name="memberNo" class="form-control" value="${hotel.memberNo }" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Phone</label>
                                                    <input name="hotelsPhone" class="form-control" value="${hotel.hotelsPhone }">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Zipcode</label>
                                                    <input name="hotelsZipcode" class="form-control" value="${hotel.hotelsZipcode }">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Address1</label>
                                                    <input name="hotelsAddress1" class="form-control" value="${hotel.hotelsAddress1 }">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Address2</label>
                                                    <input name="hotelsAddress2" class="form-control" value="${hotel.hotelsAddress2}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Path</label>
                                                    <textarea name="hotelsPath" class="form-control" rows="3" >${hotel.hotelsPath }</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Info</label>
                                                    <textarea name="hotelsInfo" class="form-control" rows="3">${hotel.hotelsInfo }</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Introduce</label>
                                                    <textarea name="hotelsIntroduce" class="form-control" rows="3">${hotel.hotelsIntroduce }</textarea>
                                                </div>
                                                </fieldset>

                                                <div class="col-lg-12"> 
                                                    <button type="submit" class="btn btn-default float-left" id="modibt">Modify</button>
                                                    <button type="button" class="btn btn-default float-left">Delete</button>
                                                    <button type="button" class="btn btn-default float-left" onclick="location='hotelsTable.admin'">Cancel</button>
                                                    <button type="button" class="btn btn-warning float-left" id="disbt">disable</button>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-lg-6 (nested) -->
                                    </div>
                                    <!-- /.row (nested) -->
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
<script>
			var cnt = 0;
            $(document).ready(function() {
                var isDisabled = $("#field").attr("disabled");
         
            });


            $('#disbt').click(function(isDisabled) {
            	
                    $("#field").attr("disabled", false); //활성화
                    cnt++;
            });
            
           function modibtClick(){
            	if(cnt==0){
            		alert("수정을 해주세요.");
            		return false;
            	}else if(cnt>0){
            		return true;
            	}
            }
            
            
            
</script>
</body>
</html>
