<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>
	function checkz() {
	  	
		//ID 공백 확인
	    if($("#tbId").val() == ""){
	      alert("ID를 입력해주세요");
	      $("#tbId").focus();
	      return;
	    }
		
		//이름 공백 확인
	    if($("#tbName").val() == ""){
	      alert("이름을 입력해주세요");
	      $("#tbName").focus();
	      return;
	    }
	         
		//이메일 공백 확인
	    if($("#tbEmail").val() == ""){
	      alert("이메일을 입력해주세요");
	      $("#tbEmail").focus();
	      return;
	    }
	  	
	    $('#findPassForm').submit();
	}
</script>
<title>Login V13</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/client/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/client/css/util.css">
<link rel="stylesheet" type="text/css"
	href="resources/client/css/main.css">


</head>
<body style="background-color: #999999;">

	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more"
				style="background-image: url('resources/client/images/bg-02.jpg');"></div>
			
			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="findPass.do" method="post" id="findPassForm" >
					&nbsp;&nbsp;&nbsp;<a href="home.do"><img
						src="resources/client/images/home.png"></a> <span
						class="login100-form-title p-b-59"> 비밀번호 찾기 </span>
					
					<div class="wrap-input100 validate-input">
						<span class="label-input100">ID</span> <input class="input100"
							type="text" id="tbId" name="memberId" placeholder="ID..."> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">이름</span> <input class="input100"
							type="text" id="tbName" name="memberName" placeholder="Name..."> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">이메일</span> <input class="input100"
							type="text" id="tbEmail" name="memberEmail" placeholder="Email..."> <span
							class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button" onclick="checkz()">비밀번호 찾기</button>
						</div>
						
						<a href="login.do" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							취소
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>	
				</form>
			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="resources/client/vendor/jquery/jquery-3.2.1.min.js"></script>


</body>
</html>