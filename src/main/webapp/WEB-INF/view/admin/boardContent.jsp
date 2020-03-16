<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%!



String getClientIP(HttpServletRequest request) {



  String ip = request.getHeader("X-FORWARDED-FOR"); 

     

  if (ip == null || ip.length() == 0) {

    ip= request.getHeader("Proxy-Client-IP");

  }



  if (ip == null || ip.length() == 0) {

    ip= request.getHeader("WL-Proxy-Client-IP");  

  }



  if (ip == null || ip.length() == 0) {

    ip= request.getRemoteAddr() ;

  }

     

  return ip;

}



%>
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
                        <div class="col-lg-12">
                            <h1 class="page-header">Board Content</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Modify the Board
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-10">
                                            <form role="form" action="insertBoard.admin" method="post" onsubmit="return checkz()">
                                               
                                                <div class="form-group">
                                                    <label>제목</label>
                                                    <input class="form-control" name="BoardTitle" id="BoardTitle" placeholder="제목 입력">
                                                </div>
                                                <div class="form-group">
                                                    <label>내용</label>
                                                    <textarea class="form-control" rows="15" name="BoardContent" id="BoardContent" placeholder="내용을 입력"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Board_Type</label>
                                                    <select class="form-control" name="BoardType">
                                                        <option>Q</option>
                                                        <option>F</option>
                                                        <option>N</option>
                                                    </select>
                                                </div>
                                                <input type="hidden" name="boardIp" value="<%=getClientIP(request)%>"> 
                                             	<label><%=getClientIP(request)%></label>

                                                <div class="col-lg-12"> 
                                                    <button type="submit" class="btn btn-default float-left">작성</button>
                                                    <button type="button" class="btn btn-default float-left" onclick="location='boardList.admin'">취소</button>
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
<script>
function checkz() {
  	
	//제목 공백 확인
    if($("#BoardTitle").val() == ""){
      alert("제목을 입력해 주세요");
      $("#BoardTitle").focus();
      return false;
    }
         
	//내용공백
    if($("#BoardContent").val() == ""){
      alert("내용을 입력해 주세요");
      $("#BoardContent").focus();
      return false;
    }
  	
	return true;
    
}
            
            
            
</script>
</body>
</html>

