<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
 <%@include file="head.jspf" %>
 <script>
	function checkz() {
	    var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //"아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다."
	    var getName= RegExp(/^[가-힣]+$/);
	    var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
	    var getPhone = RegExp(/^\d{3}-\d{3,4}-\d{4}$/);		
		   
	    //이메일 공백 확인
	    if($("#email").val() == ""){
	      alert("이메일을 입력해주세요");
	      $("#email").focus();
	      return;
	    }
	         
	    //이메일 유효성 검사
	    if(!getMail.test($("#email").val())){
	      alert("이메일형식에 맞게 입력해주세요")
	      $("#email").val("");
	      $("#email").focus();
	      return;
	    }
	    
	    //현재비밀번호 똑같은지
	    if($("#currentPass").val() != ($("#pastPass").val())){ 
	    alert("현재비밀번호가 틀립니다");
	    $("#currentPass").val("");
	    $("#currentPass").focus();
	    return;
	   }

	    //비밀번호
	    if(!getCheck.test($("#password").val())) {
	    alert("비밀번호는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
	    $("#password").val("");
	    $("#password").focus();
	    return;
	    }

	    //아이디랑 비밀번호랑 같은지
	    if ($("#id").val()==($("#password").val())) {
	    alert("비밀번호가 ID와 똑같습니다");
	    $("#password").val("");
	    $("#repassword").val("");
	    $("#password").focus();
	    return;
	  }

	    //비밀번호 똑같은지
	    if($("#password").val() != ($("#repassword").val())){ 
	    alert("비밀번호와 비밀번호확인이 다릅니다");
	    $("#password").val("");
	    $("#repassword").val("");
	    $("#repassword").focus();
	    return;
	   }
	    
	    //휴대폰 유효성 검사
	    if(!getPhone.test($("#phone").val())){
	      alert("휴대폰 형식에 맞게 입력해주세요")
	      $("#phone").val("");
	      $("#phone").focus();
	      return;
	    }

		$('#modifyForm').submit();
		alert("개인정보가 성공적으로 변경되었습니다.")
	  
	}
</script>
</head>

<body>

    <div class="colorlib-loader">  </div>

    <div id="page">
       	<%@include file="main_header.jspf" %>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>

        <div id="colorlib-about">
            <div class="container">
                <div class="row">
                    <div class="about-flex">
                        <%@ include file="myPageSidebar.jspf" %>
                        <div class="col-three-forth animate-box">
                            <h2>개인정보관리</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 animate-box">					
									<form action="modifyInfo.do" method="post" id="modifyForm">	
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">아이디 : </label>
	                                            <input type="text" id="id" class="form-control" value="${login.memberId}" disabled>
	                                            <input type="hidden" name="memberId" value="${login.memberId}">
	                                        </div>
	                                    </div>
	                                    
	                                    
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">이메일 : </label>
	                                            <input type="email" name="memberEmail" id="email" class="form-control" value="${login.memberEmail}">
	                                        </div>
	                                    </div>
	                                    
	                                     <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">이름 : </label>
	                                            <input type="text" id="name" class="form-control" value="${login.memberName}" disabled>
	                                            <input type="hidden" name="memberName" value="${login.memberName}">
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">현재 비밀번호 : </label>
	                                            <input type="password" id="currentPass" class="form-control">
	                                            <input type="hidden" value="${login.memberPass}" id="pastPass"> 
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">비밀번호 : </label>
	                                            <input type="password" id="password" class="form-control" name="memberPass">
	                                        </div>
	                                    </div>
	
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">비밀번호 확인 : </label>
	                                            <input type="password" id="repassword" class="form-control">
	                                        </div>
	                                    </div>
	
	                                    <div class="row form-group">
	                                        <div class="col-md-12">
	                                            <label for="subject">휴대폰 : </label>
	                                            <input type="text" name="memberPhone" id="phone" class="form-control" value="${login.memberPhone}">
	                                        </div>
	                                    </div>
	
	                                    <div class="form-group text-center">
	                                        <button type="button" class="btn btn-success" onclick="checkz()">변경</button>
	                                    </div> 
                                    </form>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<%@include file="footer.jspf" %>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>

</body>

</html>