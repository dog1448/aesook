<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
<script type="text/javascript">
	function checkz() {
		 //제목 공백 확인
	    if($("#TermsTitle").val() == ""){
	      alert("제목을 입력해주세요");
	      $("#TermsTitle").focus();
	      return;
	    }
	    if($("#TermsContent").val() == ""){
	      alert("내용을 입력해주세요");
	      $("#TermsContent").focus();
	      return;
	    }
	    
	    $('#modifyTerms').submit();
	    
	}
</script>
 <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                    <div>&nbsp;</div>
                        <div class="col-lg-12">
                            <h1 class="page-header">Terms Content</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Modify the Terms
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-10">
                                            <form role="form" action="updateTerms.admin" method="post" id="modifyTerms">
                                            <input type="hidden" name="termsNo" value="${terms.termsNo }">
                                            <input type="hidden" name="termsUsage" value="${terms.termsUsage }">
                                                <div class="form-group">
                                                    <label>제목</label>
                                                    <input class="form-control" name="termsTitle" id="termsTitle" value="${terms.termsTitle}">
                                                </div>
                                                <div class="form-group">
                                                    <label>내용</label>
                                                    <textarea class="form-control" rows="15" name="termsContent" id="termsContent">${terms.termsContent}</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>약관 용도</label><br>
                                                     : ${terms.termsUsage}
                                                </div>
                                                <div class="col-lg-12"> 
                                                     <button type="button" onclick="checkz()" class="btn btn-default float-left">Modify</button>
                                                    <button type="button" class="btn btn-default" onclick="javascript:history.go(-1)">Cancel</button>
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
<%@ include file="javascript.jspf" %>
</body>
</html>