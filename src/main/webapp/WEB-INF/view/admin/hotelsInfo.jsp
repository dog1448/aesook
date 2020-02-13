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
                            <h1 class="page-header">Hotel Info</h1>
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
                                        <div class="col-lg-7">
                                            <form role="form" action="#">

                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>Hotels_Code</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Name</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Type</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Member_Id</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Phone</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Zipcode</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Address1</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Address2</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Path</label>
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Info</label>
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Hotels_Introduce</label>
                                                    <textarea class="form-control" rows="3"></textarea>
                                                </div>
                                                </fieldset>

                                                <div class="col-lg-12"> 
                                                    <button type="submit" class="btn btn-default float-left">Modify</button>
                                                    <button type="button" class="btn btn-default float-left">Delete</button>
                                                    <button type="button" class="btn btn-default float-left">Cancel</button>
                                                    <button type="button" class="btn btn-warning float-left" id="disbt">disable</button>
                                                </div>
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
