<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
<%@ include file="javascript.jspf" %>
<script type="text/javascript">
	function checkz() {
	    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //"아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다."
	    var getName= RegExp(/^[가-힣]+$/);
	    var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
		
	 	 //아이디 공백 확인
	    if($("#tbId").val() == ""){
	      alert("아이디를 입력해주세요");
	      $("#tbId").focus();
	      return;
	    }
	    
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
	    
	 	//이름 공백확인
	    if ($("#tbName").val() == "") {
	     alert("이름을 입력해주세요");
	     $("#tbName").val("");
	     $("#tbName").focus();
	     return;
	   }
	 	
	 	 //이름 유효성 검사
	    if(!getName.test($("#tbName").val())){
	      alert("이메일 형식에 맞게 입력해주세요")
	      $("#tbName").val("");
	      $("#tbName").focus();
	      return;
	    }
	 	 
	    if($("#idCheck").val() == "N"){
	    	alert("아이디 중복확인을 해주세요.");
	    	$("#tbId").val()
	    	return;
	    }
	 
		$('#registerForm').submit();
	  
	}
	
	function fn_idCheck(){
		
	if($("#tbId").val() != ""){
			$.ajax({
				url : "idCheck.admin",
				type : "post",
				dataType : "json",
				data : {"adminId" : $("#tbId").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idCheck").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		} else {
			alert("아이디를 입력해주세요.")
			$("#tbId").focus();
		}
	}
	
	$(document).ready(function() {
		$("#tbId").change(function(){
			   $("#idCheck").attr("value","N");
			});
		
	});
</script>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
<div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Register</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="register.admin" id="registerForm">
                                <fieldset>
                                    <div class="form-group">
                                        <div class="input-group">
                                                <input class =  "form-control-admin" placeholder="Id" id="tbId" name="adminId" type="text" autofocus>
                                                <span class="input-group-btn">
                                                     <button class="btn btn-primary" type="button" id="idCheck" onclick="fn_idCheck()" value="N">중복</button>
                                                </span>
                                        </div>
                                        <input class="form-control-admin" placeholder="Email" name="adminEmail" id = "tbEmail" type="email" autofocus>
                                        <input class="form-control-admin" placeholder="Name" name="adminName" id = "tbName" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" value="S" name="adminGrade">
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="button" onclick="checkz()" class="btn btn-lg btn-success btn-block" value="Register">
                                    <input type="button" class="btn btn-lg btn-warning btn-block" value="Cancel" onclick="javascript:history.go(-1);">
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
</body>
</html>
