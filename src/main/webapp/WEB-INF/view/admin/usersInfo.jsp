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
  <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">User Info</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Basic Form Elements
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <form role="form" action="#">
                                                
                                                <div class="form-group">
                                                    <label>Member_No</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>ID</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input class="form-control">
                                                </div>
                                                </fieldset>
                                                <div class="form-group">
                                                    <label>Status</label>
                                                    <select class="form-control">
                                                        <option>G</option>
                                                        <option>M</option>
                                                        <option>B</option>
                                                        <option>D</option>
                                                    </select>
                                                </div>
                                                <button type="submit" class="btn btn-default btn-outline">Modify</button>&nbsp;&nbsp;
                                                <button type="button" class="btn btn-default btn-outline">Delete</button>&nbsp;&nbsp;
                                                <button type="button" class="btn btn-default btn-outline">Cancel</button>&nbsp;&nbsp;
                                                <button type="button" class="btn btn-warning btn-outline" id="disbt">Disable</button>
                                            </form>
                                        </div>
                                        <!-- /.col-lg-6 (nested) -->
                                    </div>
                                    <!-- /.row (nested) -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
</div>
<%@ include file="javascript.jspf" %>
<script>
            $(document).ready(function() {
                var isDisabled = $("#field").attr("disabled");
            });


            $('#disbt').click(function(isDisabled) {
                    $("#field").attr("disabled", false); //활성화
            });
</script>
</body>
</html>
