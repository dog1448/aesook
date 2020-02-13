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
                <form role="form" action="modifymain.admin">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-7">
                            <h1 class="page-header">Preview Main Image</h1>
                        </div>
                        <!-- /.col-lg-12 -->

                        <div class="col-lg-7 fileupload">
                            <div class="panel panel-default panel-image">
                                <div class="panel-heading">
                                    Selected Logo Image
                                </div>
                                    <div class="panel-body">
                                        <input class="form-control-image" placeholder="LogoFileName" name="logoFileName" type="text" >
                                                    
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                            </div>
                            <!-- /.col-lg-7 -->
                            <div class="col-lg-7 fileupload">
                                <div class="panel panel-default panel-image">
                                    <div class="panel-heading">
                                        Selected Main Images
                                    </div>
                                    <div class="panel-body">
                                        <input class="form-control-image" placeholder="MainFileName1" name="mainFileName1" type="text" >
                                        <input class="form-control-image" placeholder="MainFileName2" name="mainFileName2" type="text" >
                                        <input class="form-control-image" placeholder="MainFileName3" name="mainFileName3" type="text" >      
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                            </div>
                            <!-- /.col-lg-7 -->
                            <div class="col-lg-7 text-center"> 
                                <button type="button" class="btn btn-default">Confirm</button>&nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="submit" class="btn btn-default">Modify</button>
                            </div>   
                   </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
                </form>
            </div>
            <!-- /#page-wrapper -->

</div>
<%@ include file="javascript.jspf" %>
</body>
</html>
