<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:if test="${noLogin eq true}">
	<script type="text/javascript">
		alert("로그인이 되어있지 않습니다.");
	</script>
</c:if>
<c:if test="${check eq 'noId'}">
	<script type="text/javascript">
		alert("아이디가 없습니다.");
	</script>
</c:if>
<c:if test="${check eq 'noPass'}">
	<script type="text/javascript">
		alert("비밀번호가 틀립니다.");
	</script>
</c:if>
<c:if test="${check eq 'sendEmail'}">
	<script type="text/javascript">
		alert("비밀번호가 메일로 발송되었습니다.");
	</script>
</c:if>
<%@ include file="head.jspf" %>
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
</head>
<body>
<div id="wrapper">

       <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please Sign In</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="login.admin" method="post" id="loginForm">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control-admin" placeholder="UserId" name="adminId" type="text" id="tbId" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control-admin" placeholder="Password" name="adminPass" id="tbPass" type="password">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                    <button type="button" onclick="checkz()" class="btn btn-lg btn-success btn-block">Login</button>
                                    <a href="findPassword.admin" class="btn btn-lg btn-warning btn-block">Find Password</a>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
<%@ include file="javascript.jspf" %>
</body>
</html>
