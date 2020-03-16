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
				<div class="row"><div>&nbsp;</div>
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
										<form role="form" method="post">
											<input type="hidden" name="BoardSeq" value="${board.boardSeq }">
												
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
														value="${board.boardIp }" name="BoardIp">
												</div>
												<div class="form-group">
													<label>Board_Date</label>
													<textarea class="form-control" disabled name="BoardDate"><fmt:formatDate
															value="${board.boardDate}" /></textarea>
												</div>
												<div class="form-group">
													<label>Board_Type</label> <select class="form-control" name="BoardType">
														<option value="${board.boardType }" selected disabled hidden>${board.boardType }</option>
														<option>Q</option>
														<option>F</option>
														<option>N</option>
													</select>
												</div>

											</fieldset>

											<div class="col-lg-12">
												<button type="submit" class="btn btn-default float-left modibt">Modify</button>
												<button type="button" class="btn btn-default float-left deletebt">Delete</button>
												<button type="button" class="btn btn-default float-left canclebt">Cancel</button>
												<button type="button" class="btn btn-warning float-left" id="disbt">disable</button>
												<button type="submit" class="btn btn-warning float-left replybt">Reply</button>
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
            	var formObj = $("form[role='form']");
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
                
                $(".modibt").on("click",function() {
                	if(cnt==0){
                		alert("Disable을 해주세요.");
                		return false;
                	}else if(cnt>0){
                    formObj.attr("action","updateBoard.admin");
                    formObj.attr("method","post");
                    formObj.submit();
                	}
                });

                $(".replybt").on("click",function () {
                    formObj.attr("action","moveAdminReply.admin");
                    formObj.attr("method","get");
                    formObj.submit();
                })

                $(".deletebt").on("click",function() {
                    formObj.attr("action","deleteAdminBoard.admin");
                    formObj.submit();
                });

                $(".canclebt").on("click",function () {
                    self.location = "/aesook/boardList.admin"
                });
                
                
            });


            $('#disbt').click(function(isDisabled) {
            	
                    $("#field").attr("disabled", false); //활성화
                    cnt++;
            });
            
          
            
            
            
</script>
</body>
</html>