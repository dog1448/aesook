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
                    <div class="row">
                    <div>&nbsp;</div>
                        <div class="col-lg-10">
                            <h1 class="page-header">Board List</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Board Table
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                  	<th>board_No</th>
                                                    <th>Name</th>
                                                    <th>Board_Title</th>
                                                    <th>Readcount</th>
                                                    <th>Date</th>
                                                    <th>IP</th>
                                                    <th id="typeVal">Type</th>
                                                    <th>Content</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                           <c:forEach var="boardList" items="${boardList}">
                                                <tr class="odd gradeX">
                                                   
                                                    <td>${boardList.rnum}</td>
                                                    <td>${boardList.boardWriter}</td>
                                                    <td><a href="boardModify.admin?boardSeq=${boardList.boardSeq}">${boardList.boardTitle }</a></td>
                                                    <td class="text-center">${boardList.boardReadcount }</td>
                                                    <td class="text-center"><fmt:formatDate value="${boardList.boardDate}" pattern="yy/MM/dd"/></td>
                                                    <td class="center">${boardList.boardIp }</td>
                                                    <td class="text-center">${boardList.boardType}</td>
                                                    <td>show me the</td>
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
                        "ordering" : false,
                        scrollY: "100%",
                        columnDefs: [
                        { targets: 0, width:'5%' }, // Board_No
                        { targets: 1, width:'15%' }, // Member_Id
                        { targets: 2, width:'35%' }, // Board_Title
                        { targets: 3, width:'5%' }, // Readcount
                        { targets: 4, width:'10%' }, // Date
                        { targets: 5, width:'10%'}, // IP
                        { targets: 6, visible: false }, // Type
                        { targets: 7, visible: false } // Content   
                    ]
                        
                });
                
                
                 /* Board 정하기 */
                $('#dataTables-example_filter').prepend('<select id="select2"></select>&nbsp;&nbsp;');
                $('#dataTables-example_filter').prepend('Board-Type : <select id="select"></select>&nbsp;/&nbsp;');
                $('#select').append('<option value="Q" selected="selected">QnA</option><option value="F">FAQ</option><option value="N">Notice</option>');
                var col = $('#select option:selected').val();
                table.column('#typeVal').search(col).draw();

                $('#select').on('change', function() {
                    var col = $('#select option:selected').val();
                    table.column('#typeVal').search(col).draw();
                });
                
                /*colum 검색*/
                $('#dataTables-example > thead > tr').children().each(function (indexInArray, valueOfElement) { 
                    $('#select2').append('<option>'+valueOfElement.innerHTML+'</option>');
                });
                
                 // select searching
                $('.dataTables_filter input').unbind().bind('keyup', function () {
                var colIndex = document.querySelector('#select2').selectedIndex;
                table.column(colIndex).search(this.value).draw();
                 });

            });
        </script>
</body>
</html>
