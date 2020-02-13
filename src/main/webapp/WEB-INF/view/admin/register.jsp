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
                            <form role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control-admin" placeholder="UserId" name="userid" type="text" autofocus>
                                        <input class="form-control-admin" placeholder="Email" name="email" type="email" autofocus>
                                        <input class="form-control-admin" placeholder="Name" name="name" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control-admin" placeholder="Password" name="password" type="password" value="">
                                        <input class="form-control-admin" placeholder="Password Confirm" name="password" type="password" value="">
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <a href="index.admin" class="btn btn-lg btn-success btn-block">Register</a>
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
