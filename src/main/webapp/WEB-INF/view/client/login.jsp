<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<c:if test="${check eq 'noNameEmail'}">
	<script type="text/javascript">
		alert("이름 또는 이메일이 일치하지 않습니다.");
	</script>
</c:if>
<c:if test="${check eq 'findId'}">
	<script type="text/javascript">
		alert("ID가 이메일로 발송되었습니다.");
	</script>
</c:if>
<c:if test="${noLogin eq true}">
	<script type="text/javascript">
		alert("로그인이 필요한 서비스입니다.");
	</script>
</c:if>
<c:if test="${check eq 'noId'}">
	<script type="text/javascript">
		alert("해당되는 아이디가 없습니다.");
	</script>
</c:if>
<c:if test="${check eq 'noPass'}">
	<script type="text/javascript">
		alert("비밀번호가 틀립니다.");
	</script>
</c:if>
<c:if test="${check eq 'findPass'}">
	<script type="text/javascript">
		alert("비밀번호가 메일로 발송되었습니다.");
	</script>
</c:if>
<script>
	function checkz() {
	  	
		//아이디 공백 확인
	    if($("#tbId").val() == ""){
	      alert("아이디를 입력해주세요");
	      $("#tbId").focus();
	      return;
	    }
	         
		//아이디 공백 확인
	    if($("#tbPass").val() == ""){
	      alert("비밀번호를 입력해주세요");
	      $("#tbPass").focus();
	      return;
	    }
	  	
	    $('#loginForm').submit();
	}
</script>
	<title>Login V13</title>
	<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
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
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type='text/javascript'>
	  //<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('9a420c9144db716e2307e39a3ca05cf4');
	    function loginWithKakao() {
	      // 로그인 창을 띄웁니다.
	      Kakao.Auth.login({
	        success: function(authObj) {
	          alert(JSON.stringify(authObj));
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    };
	  //]]>
	</script>

</head>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('resources/client/images/bg-02.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="login.do" method="post" id="loginForm">
					&nbsp;&nbsp;&nbsp;<a href="home.do"><img src="resources/client/images/home.png"></a>
					<span class="login100-form-title p-b-59">
						로그인
					</span>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">아이디</span>
						<input class="input100" type="text" name="memberId" id="tbId" placeholder="Username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input">
						<span class="label-input100">비밀번호</span>
						<input class="input100" type="Password" name="memberPass" id="tbPass" placeholder="*************">
						<span class="focus-input100"></span>
					</div>				

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="button" onclick="checkz()">로그인</button>														
						</div>

						<a href="register.do" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							회원가입
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
					<div class="input100"></div>
					<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
					<div>
						<a href="findId.do">아이디 찾기</a> / <a href="findPass.do">비밀번호 찾기</a>			
					</div>
				</form>
					<div class="input100"></div>
					
					<div class="input100">
						<a id="custom-login-btn" href="javascript:loginWithKakao()">
							<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
						</a>
					</div>
					<div class="input100">네이버아이디로 로그인</div>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="resources/client/vendor/jquery/jquery-3.2.1.min.js"></script>
	

</body>
</html>