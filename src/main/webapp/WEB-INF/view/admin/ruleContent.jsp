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
						<h1 class="page-header">Rule</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-7">
						<div class="panel panel-default">
							<div class="panel-heading">Modify the Rule</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-7">
										<form role="form" method="post">
											<input type="hidden" name="hotelsType" value="${rule.hotelsType }">
												
											<fieldset id="field" disabled>
												
												
												<div class="form-group">
													<label>${rule.hotelsType }의 예약 공지</label>
													<textarea class="form-control" rows="15" id="test1" name="bookingRule">${rule.bookingRule }</textarea>
												</div>
												<div class="form-group">
													<label>${rule.hotelsType }의 취소 규정</label>
													<textarea class="form-control" rows="15" id="test2" name="cancelRule">${rule.cancelRule }</textarea>
												</div>

											</fieldset>

											<div class="col-lg-12">
												<button type="submit" class="btn btn-default float-left modibt">Modify</button>
												<button type="button" class="btn btn-default float-left canclebt">Cancel</button>
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
	<%@ include file="javascript.jspf"%>
	<script>

			


			var cnt = 0;
            $(document).ready(function() {
            	var formObj = $("form[role='form']");
                var isDisabled = $("#field").attr("disabled");
                $('#test1').on('keyup', function() {



                    if($(this).val().length > 4000) {

                        $(this).val($(this).val().substring(0, 4000));

                    }
                });
                
                $('#test2').on('keyup', function() {


					
                    if($(this).val().length > 4000) {

                        $(this).val($(this).val().substring(0, 4000));

                    }
                });
                
                $(".modibt").on("click",function() {
                	if(cnt==0){
                		alert("Disable을 해주세요.");
                		return false;
                	}else if(cnt>0){
                    formObj.attr("action","updateRule.admin");
                    formObj.attr("method","post");
                    formObj.submit();
                	}
                });


                $(".canclebt").on("click",function () {
                    self.location = "/aesook/ruleBoard.admin"
                });
                
                
            });


            $('#disbt').click(function(isDisabled) {
            	
                    $("#field").attr("disabled", false); //활성화
                    cnt++;
            });
            
          
            
            
            
</script>
</body>
</html>