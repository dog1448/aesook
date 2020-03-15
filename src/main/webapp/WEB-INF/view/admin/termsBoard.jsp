<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <div class="row"><div>&nbsp;</div>
                        <div class="col-lg-4">
                            <h1 class="page-header">Terms List</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Terms Table
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>Terms Usage</th>
                                                    <th>Terms Title</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                           <c:forEach var="termsList" items="${termsList}">
                                                <tr class="odd gradeX">
                                                	<td><c:out value="${termsList.termsUsage}"/></td>
                                                    <td><a href="termsContent.admin?termsNo=${termsList.termsNo}">
                                                    <c:out value="${termsList.termsTitle}"/></a></td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
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
<!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
           
        </script>
</body>
</html>
