<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V13</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="resources/client/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/client/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/client/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/client/css/main.css">
<!--===============================================================================================-->


</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('resources/client/images/img_bg_5.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				
				<form class="login100-form validate-form" action="register.do" method="post" name="register">
					&nbsp;&nbsp;&nbsp;<a href="home.jsp"><img src="resources/client/images/home.png"></a>
					<span class="login100-form-title p-b-59">
						회원가입
					</span>	
				
					<div class="wrap-input100 validate-input">						
						<span class="label-input100">아이디</span>				
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" id="id_check" class="btn btn-success" onclick="checkId();" value="N">중복확인</button>														
						<input class="input100" type="text" name="memberId" id="memberId" placeholder="Username...">																
						<span class="focus-input100"></span>												
					</div>					
					<div class="wrap-input100 validate-input">
						<span class="label-input100">비밀번호</span>
						<input class="input100" type="Password" name="memberPass" id="memberPass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<span class="label-input100">비밀번호 확인</span>
						<input class="input100" type="Password" name="checkPass" id="checkPass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>	
					
					<div class="wrap-input100 validate-input">
						<span class="label-input100">이름</span>
						<input class="input100" type="text" name="memberName" id="memberName" placeholder="Name...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">이메일</span>
						<input class="input100" type="text" name="memberEmail" id="memberEmail" placeholder="Email addess...">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">휴대폰</span>
						<input class="input100" type="text" name="memberPhone" id="memberPhone" placeholder="Phone number...">
						<span class="focus-input100"></span>
					</div>
					<input type="hidden" name="memberStatus" value="R">
					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									회원 약관에 동의합니다.
									<a href="#" class="txt2 hov1">
										(약관보기)
									</a>
								</span>
							</label>
						</div>						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit" id="submit">회원가입</button>
						</div>

						<a href="login.do" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							로그인
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
	
	<script src="resources/client/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/client/js/register.js"></script>
	
	
</body>
</html>