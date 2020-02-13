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
                        <div class="col-lg-7">
                            <h1 class="page-header">Modify EventBanner</h1>
                        </div>
                        <!-- /.col-lg-7 -->
                         <!-- 이벤트 배너 사진 수정 -->
                      <form role="form" action="eventPic.admin">
                         <div class="col-lg-7 fileupload">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Modify Event Image
                                </div>
                                <div class="panel-body">
                                            <div class="file-upload">
                                                <input type="file" name="event file1">&nbsp;
                                                <input type="file" name="event file2">&nbsp;
                                                <input type="file" name="event file3">
                                            </div>
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
                    
                </div>
                <!-- /.container-fluid -->
            </div>
</div>
<%@ include file="javascript.jspf" %>
</body>
</html>
