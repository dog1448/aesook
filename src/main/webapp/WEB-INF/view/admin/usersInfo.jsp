<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                            <h1 class="page-header">User Info</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    User Elements
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <form role="form" action="updateUsersInfo.admin" method="post" id="modifyUserInfo">

                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>ID</label>
                                                    <input class="form-control" type="text" value="${usersInfo.memberId}" id="memberId" disabled>
                                                    <input type="hidden" value="${usersInfo.memberId}" name="memberId">
                                                </div>
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input class="form-control" type="text" value="${usersInfo.memberName}" name="memberName" id="memberName">
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input class="form-control" type="text" value="${usersInfo.memberEmail}" name="memberEmail" id="memberEmail">
                                                </div>
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input class="form-control" type="text" value="${usersInfo.memberPhone}" name="memberPhone" id="memberPhone">
                                                </div>
                                                <div class="form-group">
                                                    <label>Status</label>
                                                    <select class="form-control" id="statusSelectBox" name = "memberStatus">
                                                        <option value="G">G</option>
                                                        <option value="H">H</option>
                                                        <option value="B">B</option>
                                                        <option value="D">D</option>
                                                        <option value="R">R</option>
                                                    </select>
                                                </div>
                                                </fieldset>

                                                <div class="col-lg-12"> 
                                                    <button type="button" onclick="modify()" class="btn btn-default float-left" id="modibt">Modify</button>
                                                    <button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">Cancel</button>
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
		     var isDisabled = false;
			$(document).ready(function() {
                $('#statusSelectBox').val('${usersInfo.memberStatus}').prop('selected', true); 
            });

            $('#disbt').click(function() {
            	isDisabled = true;
                $("#field").attr("disabled", false); //활성화
            });        
			
            function modify() {
				if (isDisabled == false) {
					  alert("disable을 선행하세요");
					  return;
				}
				$('#modifyUserInfo').submit();         	
			}
            
        </script>
</body>
</html>

