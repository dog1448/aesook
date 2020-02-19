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
					&nbsp;&nbsp;&nbsp;<a href="home.do"><img src="resources/client/images/home.png"></a>
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
							<div class="login100-form-bgbtn"> </div>
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
	<script type="text/javascript">
	$("#memberId").change(function(){
		$("#id_check").attr("value","N");
	});

	$(document).ready(function() {
						$("#submit").on("click", function() {
											var re = /^[a-zA-Z0-9]{6,12}$/ // 아이디와 패스워드 정규식	
											var re2 = /^[가-힣]{2,4}$/;//이름 정규식
											var re3 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;// 이메일이 적합한지 검사할 정규식								
											var re4 = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})?[0-9]{3,4}?[0-9]{4}$/; // 휴대폰 정규식										
											

											var id = document.getElementById("memberId");
											var pw = document.getElementById("memberPass");
											var checkpw = document.getElementById("checkPass");
											var name = document.getElementById("memberName");
											var email = document.getElementById("memberEmail");
											var phone = document.getElementById("memberPhone");
											var checkbox = document.register.ckb1.checked;
											var idcheck = $("#id_check").val();

											if (!check(re, id,"아이디는 6~12자의 영문 대소문자와 숫자로만 입력하세요.")) {
												return false;
											}
											
											if(idcheck == "N"){
												alert("중복확인 버튼을 눌러주세요.");
												return false;
											}								

											if (!check(re, pw,"패스워드는 6~12자의 영문 대소문자와 숫자로만 입력하세요.")) {
												return false;
											}
											
											if(pw.value == id.value){
												alert("아이디와 비밀번호가 같습니다.다시 입력하세요.");
												pw.value = "";
												pw.focus();
												return false;
											}

											if (pw.value != checkpw.value) {
												alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
												checkpw.value = "";
												checkpw.focus();
												return false;
											}

											if (name.value == "") {
												alert("이름을 입력해 주세요");
												name.focus();
												return false;
											}
											
											if (!check(re2, name,"이름을 한글로 입력하세요.")) {
												return false;
											}

											if (email.value == "") {
												alert("이메일을 입력해 주세요");
												email.focus();
												return false;
											}

											if (!check(re3, email,"적합하지 않은 이메일 형식입니다.")) {
												return false;
											}

											if (phone.value == "") {
												alert("휴대폰을 입력해 주세요");
												phone.focus();
												return false;
											}

											if (!check(re4, phone,"적합하지 않은 휴대폰 번호입니다.")) {
												return false;
											}
											if (!checkbox) {
												alert("약관의 동의해주세요.");
												return false;
											}

											alert("회원 가입 대기 중입니다. 이메일 인증을 완료해주세요.");
										});
	})								
					
	function check(re, what, message) {
		if (re.test(what.value)) {
			return true;
		}
		alert(message);
		what.value = "";
		what.focus();
		// return false;
	}

	function checkId() {
		var id = document.getElementById("memberId");
		var re = /^[a-zA-Z0-9]{6,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
		$.ajax({
			url : "registerIdChk.do",
			type : "post",
			dataType : "json",
			data : {
				"memberId" : $("#memberId").val()
			},
			success : function(data) {
				if (data == 1) {
					alert("중복된 아이디입니다.");
				} else if (data == 0) {
					if (!check(re, id, "아이디는 6~12자의 영문 대소문자와 숫자로만 입력하세요.")) {
						
					}else {
						$("#id_check").attr("value","Y");
						alert("사용가능한 아이디입니다.");
					}

				} 
			}
		})

	}

	</script>
	
	
</body>
</html>