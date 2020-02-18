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
                            <h1 class="page-header">Board Content</h1>
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
                                                <input type="hidden" value="#gourp">
                                                <input type="hidden" value="#step">
                                                <input type="hidden" value="#depth">
                                                <fieldset id="field" disabled>
                                                <div class="form-group">
                                                    <label>Board_Seq</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Board_Title</label>
                                                    <input class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Board_Content</label>
                                                    <textarea class="form-control" rows="15"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>ReadCount</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>IP</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Board_Date</label>
                                                    <input class="form-control" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label>Board_Type</label>
                                                    <select class="form-control">
                                                        <option>Q</option>
                                                        <option>F</option>
                                                        <option>N</option>
                                                    </select>
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
