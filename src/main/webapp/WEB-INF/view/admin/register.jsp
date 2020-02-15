<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
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
                            <form role="form" method="post" action="insertRegister.admin">
                                <fieldset>
                                    <div class="form-group">
                                        <div class="input-group">
                                                <input class =  "form-control-admin" placeholder="Id" name="adminId" type="text" autofocus>
                                                <span class="input-group-btn">
                                                     <button class="btn btn-primary" type="button">중복</button>
                                                </span>
                                        </div>
                                        <input class="form-control-admin" placeholder="Email" name="adminEmail" type="email" autofocus>
                                        <input class="form-control-admin" placeholder="Name" name="adminName" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" value="S" name="adminGrade">
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="submit" class="btn btn-lg btn-success btn-block" value="Register">
                                    <input type="button" class="btn btn-lg btn-warning btn-block" value="Cancel" onclick="javascript:history.go(-1);">
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
