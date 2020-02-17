<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:if test="${check eq 'noId'}">
	<script type="text/javascript">
		alert("해당되는 아이디가 없습니다.");
	</script>
</c:if>
<c:if test="${check eq 'noEmail'}">
	<script type="text/javascript">
		alert("이메일이 틀립니다.");
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
	    if($("#tbEmail").val() == ""){
	      alert("이메일를 입력해주세요");
	      $("#tbEmail").focus();
	      return;
	    }
	  	
	    $('#findForm').submit();
	}
	
</script>
<%@ include file="head.jspf" %>
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
                        	<c:if test="${findEmail eq false}">
                            <form role="form" action="findPassword.admin" method="post" id="findForm">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control-admin" placeholder="UserId" name="adminId" type="text" id="tbId" autofocus>
                                    </div>
                                    <button type="button" onclick="checkz()" class="btn btn-lg btn-success btn-block">Next</button>
                                    <a href="login.admin" class="btn btn-lg btn-warning btn-block">Cancel</a>
                                </fieldset>
                            </form>
                            </c:if>
                            <c:if test="${findEmail eq true }">
                            <form role="form" action="findSendEmail.admin" method="post" id="findForm">
                            	<fieldset>
	                                  <div class="form-group">
	                                      <input class="form-control-admin" placeholder="UserEmail" name="myEmail" id="tbEmail" type="text">
	                                  	  <input type="hidden" value="${user.adminId}" name="adminId"/>
	                                  	  <input type="hidden" value="${user.adminEmail}" name="adminEmail"/>
	                                  </div>
                                   	  <button type="button" onclick="checkz()"  class="btn btn-lg btn-success btn-block">Send</button>
                                      <a href="login.admin" class="btn btn-lg btn-warning btn-block">Cancel</a>
                                 </fieldset>
                            </form>
                            </c:if>                 
                        </div>
                    </div>
                </div>
            </div>
        </div>

</div>
<%@ include file="javascript.jspf" %>
</body>
</html>
