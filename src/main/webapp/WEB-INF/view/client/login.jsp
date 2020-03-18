<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<c:if test="${message ne null}">
	<script type="text/javascript">
		var message = "${message}";
		alert(message);
	</script>
</c:if>

<script>
	function checkz() {

		//아이디 공백 확인
		if ($("#tbId").val() == "") {
			alert("아이디를 입력해주세요");
			$("#tbId").focus();
			return;
		}

		//아이디 공백 확인
		if ($("#tbPass").val() == "") {
			alert("비밀번호를 입력해주세요");
			$("#tbPass").focus();
			return;
		}
		$('#loginForm').submit();
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
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


</head>
<body style="background-color: #999999;">

	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" id="loginImage" style="background-image: ">
				<!-- 
				<c:if test="${not empty adminImageVO}">
				<img alt="" src="${adminImageVO.adminImagePath}${adminImageVO.adminImageName}" style="width: 100%; height: auto;">
				</c:if>
				<c:if test="${empty adminImageVO}">
				<img id="loginImage" src="resources/client/images/noImage.png" style="width: 100%; height: auto;">
				</c:if>
				 -->
			</div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="login.do"
					method="post" id="loginForm">
					&nbsp;&nbsp;&nbsp;<a href="home.do"><img
						src="resources/client/images/home.png"></a> <span
						class="login100-form-title p-b-59"> 로그인 </span>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">아이디</span> <input class="input100"
							type="text" name="memberId" id="tbId" placeholder="Username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">비밀번호</span> <input class="input100"
							type="Password" name="memberPass" id="tbPass"
							placeholder="*************"> <span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button"
								onclick="checkz()">로그인</button>
						</div>

						<a href="register.do"
							class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30"> 회원가입
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
					<div class="input100"></div>
					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<div>&nbsp;</div>
					<div>
						<a href="findId.do">아이디 찾기</a> / <a href="findPass.do">비밀번호 찾기</a>
					</div>
				</form>
				<div class="input100"></div>
				
				<!-- 카카오 로그인 -->
				<div class="input100" style="text-align: center">
					<a id="custom-login-btn"
						href="https://kauth.kakao.com/oauth/authorize?client_id=7a50784ea29bd06070b903a4562bf1b1&redirect_uri=http://ec2-54-180-125-121.ap-northeast-2.compute.amazonaws.com/loginKakao.do&response_type=code">
						<img width="300"  height="50" src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"/>
					</a>
				</div>
				<div>&nbsp;</div>
				<!-- 네이버 로그인 -->
				<div class="input100" style="text-align: center">
					<a id="custom-login-btn" href="${url}"> 
						<img height="50" width="300" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" />
					</a>
				</div>
			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="resources/client/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('099fe2e10a4fe77fb4de8c5a1e4d91d5');
		function loginWithKakao() {
			// 로그인 창을 띄웁니다.
			Kakao.Auth.login({
				success : function(authObj) {
					alert(JSON.stringify(authObj));
				},
				fail : function(err) {
					alert(JSON.stringify(err));
				}
			});
		};
		//]]>	
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
		var imagePath = "${adminImageVO.adminImagePath}"+"${adminImageVO.adminImageName}";
		if (imagePath == "") {
			imagePath = "resources/client/images/noImage.png";
		} 
		var str = "background-image: url('"+ imagePath +"')";
		
		$('#loginImage').attr("style", str);
	});
	</script>
</body>
</html>