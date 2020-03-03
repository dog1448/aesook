<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf"%>
</head>
<body>
	<div id="wrapper">
		<%@ include file="nav.jspf"%>

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
							<div class="panel-heading">Basic Form Elements</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-7">
										<form role="form" action="updateBoard.admin" onclick="return modibtClick()" method="post">
											<input type="hidden" value="#gourp"> <input
												type="hidden" value="#step"> <input type="hidden"
												value="#depth">
											<fieldset id="field" disabled>
												<div class="form-group">
													<label>Board_Title</label>
													<textarea class="form-control" id="test" name="BoardTitle">${board.boardTitle }</textarea>
												</div>
												<div class="form-group">
													<label>Board_Content</label>
													<textarea class="form-control" rows="15" id="test2" name="BoardContent">${board.boardContent }</textarea>
												</div>
												<div class="form-group">
													<label>IP</label> <input class="form-control" disabled
														value=${board.boardIp } name="BoardIp">
												</div>
												<div class="form-group">
													<label>Board_Date</label>
													<textarea class="form-control" disabled name="BoardDate"><fmt:formatDate
															value="${board.boardDate}" /></textarea>
												</div>
												<div class="form-group">
													<label>Board_Type</label> <select class="form-control" name="BoardType">
														<option>Q</option>
														<option>F</option>
														<option>N</option>
													</select>
												</div>

											</fieldset>

											<div class="col-lg-12">
												<button type="submit" class="btn btn-default float-left">Modify</button>
												<button type="button" class="btn btn-default float-left">Delete</button>
												<button type="button" class="btn btn-default float-left"
													onclick="location='boardList.admin'">Cancel</button>
												<button type="button" class="btn btn-warning float-left"
													id="disbt">disable</button>
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
	<%@ include file="javascript.jspf"%>
	<script>

			


			var cnt = 0;
            $(document).ready(function() {
                var isDisabled = $("#field").attr("disabled");
                $('#test').on('keyup', function() {



                    if($(this).val().length > 50) {

                        $(this).val($(this).val().substring(0, 50));

                    }
                });
                
                $('#test2').on('keyup', function() {



                    if($(this).val().length > 5000) {

                        $(this).val($(this).val().substring(0, 5000));

                    }
                });
            });


            $('#disbt').click(function(isDisabled) {
            	
                    $("#field").attr("disabled", false); //활성화
                    cnt++;
            });
            
           function modibtClick(){
            	if(cnt==0){
            		alert("Disable을 해주세요.");
            		return false;
            	}else if(cnt>0){
            		return true;
            	}
            }
            
            
            
</script>
</body>
</html>