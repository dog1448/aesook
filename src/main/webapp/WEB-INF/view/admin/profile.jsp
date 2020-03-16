<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
<script>
	function checkz() {
	    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //"아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다."
	    var getName= RegExp(/^[가-힣]+$/);
	    var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
		
		   //이메일 공백 확인
	    if($("#tbEmail").val() == ""){
	      alert("이메일을 입력해주세요");
	      $("#tbEmail").focus();
	      return;
	    }
	         
	    //이메일 유효성 검사
	    if(!getMail.test($("#tbEmail").val())){
	      alert("이메일형식에 맞게 입력해주세요")
	      $("#tbEmail").val("");
	      $("#tbEmail").focus();
	      return;
	    }
	    
	    //현재비밀번호 똑같은지
	    if($("#currentPass").val() != ($("#userPass").val())){ 
	    alert("현재비밀번호가 틀립니다");
	    $("#currentPass").val("");
	    $("#currentPass").focus();
	    return;
	   }

	    //비밀번호
	    if(!getCheck.test($("#tbPass").val())) {
	    alert("비밀번호는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
	    $("#tbPass").val("");
	    $("#tbPass").focus();
	    return;
	    }

	    //아이디랑 비밀번호랑 같은지
	    if ($("#tbId").val()==($("#tbPass").val())) {
	    alert("비밀번호가 ID와 똑같습니다");
	    $("#tbPass").val("");
	    $("#cPass").val("");
	    $("#tbPass").focus();
	    return;
	  }

	    //비밀번호 똑같은지
	    if($("#tbPass").val() != ($("#cPass").val())){ 
	    alert("비빌번호와 비밀번호확인이 다릅니다");
	    $("#tbPass").val("");
	    $("#cPass").val("");
	    $("#tbPass").focus();
	    return;
	   }

		$('#profileForm').submit();
	  
	}
</script>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>

<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row"><div>&nbsp;</div>
                        <div class="col-lg-5">
                            <h1 class="page-header">Modify Profile</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-5 text-center">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Your Profile
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-lg-offset-3">
                                            <form role="form" action="profile.admin" method="post" id="profileForm">
                                                <div class="form-group">
                                                    <label>ID</label>
                                                    <input class="form-control" type="text" value="${user.adminId}" id="tbId" disabled>
                                                    <input type="hidden" value="${user.adminId}" name="adminId">
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input class="form-control" type="email" name="adminEmail" value="${user.adminEmail}" id="tbEmail" >
                                                </div>
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input class="form-control" type="text" name="adminName" value="${user.adminName}" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Current Password</label>
                                                    <input class="form-control" type="password" id="currentPass">
                                                    <input type="hidden" value="${user.adminPass}" id="userPass">
                                                </div>
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <input class="form-control" type="password" id="tbPass" name="adminPass">
                                                </div>
                                                <div class="form-group">
                                                    <label>Confirm Password</label>
                                                    <input class="form-control" type="password" id="cPass">
                                                </div>
                                                <button type="button" class="btn btn-default" onclick="checkz()" id="submitbtn">Modify</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <button type="button" class="btn btn-default" onclick="javascript:histroy.go(-1)">Cancel</button>
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

</div>
<%@ include file="javascript.jspf" %>

</body>
</html>
