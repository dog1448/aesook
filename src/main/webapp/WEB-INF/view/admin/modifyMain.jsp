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
                        <div class="col-lg-7">
                            <h1 class="page-header">Modify MainPage</h1>
                        </div>
                        <!-- /.col-lg-7 -->
                    </div>
                    <!-- /.row -->
                    <form role="form" action="mainPic.html">
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Modify Logo Image
                                </div>
                                <div class="panel-body">
                                    <div class="file-upload">
                                        <input type="file" name="logo file">&nbsp;
                                    </div>
                                    <!-- /.row (nested) -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-7 -->
                         <!-- 메인 배경 사진 수정 -->
                         <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Modify Main Image
                                </div>
                                <div class="panel-body">
                                            <div class="file-upload">
                                                <input type="file" name="main file1">&nbsp;
                                                <input type="file" name="main file2">&nbsp;
                                                <input type="file" name="main file">
                                            </div>
                                    <!-- /.row (nested) -->
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-7 -->
                        <div class="col-lg-7 text-center">
                            <button type="submit" class="file-upload-btn" type="button">Upload Image
                        </button>
                        </div>
                    </form>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
</div>
<%@ include file="javascript.jspf" %>
</body>
</html>
