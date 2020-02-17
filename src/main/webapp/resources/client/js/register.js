$("#memberId").change(function(){
	$("#id_check").attr("value","N");
});

$(document)
		.ready(
				function() {

					$("#submit")
							.on(
									"click",
									function() {
										var re = /^[a-zA-Z0-9]{6,12}$/ // 아이디와
										// 패스워드가
										// 적합한지
										// 검사할
										// 정규식
										var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;// 이메일이
										// 적합한지
										// 검사할
										// 정규식
										var re3 = /^\d{3}\d{3,4}\d{4}$/; // 휴대폰
										// 정규식

										var id = document
												.getElementById("memberId");
										var pw = document
												.getElementById("memberPass");
										var checkpw = document
												.getElementById("checkPass");
										var name = document
												.getElementById("memberName");
										var email = document
												.getElementById("memberEmail");
										var phone = document
												.getElementById("memberPhone");
										var checkbox = document.register.ckb1.checked;
										var idcheck = $("#id_check").val();

										if (!check(re, id,
												"아이디는 6~12자의 영문 대소문자와 숫자로만 입력하세요.")) {
											return false;
										}
										
										if(idcheck == "N"){
											alert("중복확인 버튼을 눌러주세요.");
											return false;
										}									
									

										if (!check(re, pw,
												"패스워드는 6~12자의 영문 대소문자와 숫자로만 입력하세요.")) {
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

										if (email.value == "") {
											alert("이메일을 입력해 주세요");
											email.focus();
											return false;
										}

										if (!check(re2, email,
												"적합하지 않은 이메일 형식입니다.")) {
											return false;
										}

										if (phone.value == "") {
											alert("휴대폰을 입력해 주세요");
											phone.focus();
											return false;
										}

										if (!check(re3, phone,
												"적합하지 않은 휴대폰 번호입니다.")) {
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
