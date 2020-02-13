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
                            <h1 class="page-header">Data List</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Hotels Table
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>Booking_Code</th>
                                                    <th>Hotels_Name</th>
                                                    <th>Member_Id</th>
                                                    <th>Booking_Date</th>
                                                    <th>Booking_Total_Price</th>
                                                    <th>Booking_Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="odd gradeX">
                                                    <td>Trident</td>
                                                    <td>Internet Explorer 4.0</td>
                                                    <td>Win 95+</td>
                                                    <td class="center">4</td>
                                                    <td class="center">X</td>
                                                    <td class="center">B</td>
                                                </tr>
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
                        { targets: 0, width:'10%' }, // Booking_Code
                        { targets: 1, width:'25%' }, // Hotels_Name
                        { targets: 2, width:'20%' }, // Member_Id
                        { targets: 3, width:'25%' }, // Booking_Date
                        { targets: 4, width:'17%' }, // Booking_Total_Price
                        { targets: 5, width:'3%'} // Booking_Status
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
