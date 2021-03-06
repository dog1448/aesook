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
                    <div class="row"><div>&nbsp;</div>
                        <div class="col-lg-10">
                            <h1 class="page-header">Data List</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Users Table
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>                                                  
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Phone</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            
                                            <tbody>
                                            <c:forEach var="usersList" items="${usersList}">
                                                <tr class="odd gradeX">
                                                	<td><a href="usersInfo.admin?memberId=${usersList.memberId}">${usersList.memberId}</a></td>                                                	     
                                                    <td>${usersList.memberName}</td>
                                                    <td class="center">${usersList.memberEmail}</td>
                                                    <td class="center">${usersList.memberPhone}</td>
                                                    <td class="center">${usersList.memberStatus}</td>
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
            $(document).ready(function() {
                var table = $('#dataTables-example').DataTable({
                        responsive: true,
                        scrollY: "100%",
                        columnDefs: [
                        { targets: 0, width: "15%" }, // ID 
                        { targets: 1, width: "15%" }, // NAme
                        { targets: 2, width: "15%" }, // Email
                        { targets: 3, width: "25%" }, // Phone
                        { targets: 4, width: "20%" }, // Status
                        ]
                });

                /* Column별 검색기능 추가 */
                $('#dataTables-example_filter').prepend('<select id="select"></select>&nbsp;&nbsp;');
                $('#dataTables-example > thead > tr').children().each(function (indexInArray, valueOfElement) { 
                    $('#select').append('<option>'+valueOfElement.innerHTML+'</option>');
                });

                // select searching
                $('.dataTables_filter input').unbind().bind('keyup', function () {
                var colIndex = document.querySelector('#select').selectedIndex;
                table.column(colIndex).search(this.value).draw();
                 });
            });
        </script>

</body>
</html>
