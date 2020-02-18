<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<%@ include file="head.jspf" %>
	<!-- Google Map -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
		<script src="resources/client/js/google_map.js"></script>
</head>

<body>

	<div class="colorlib-loader">  </div>

	<div id="page">
		<%@ include file="main_header.jspf" %>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div class="container">
            <table class="table table-bordered">
                <thead>
                    <caption>쪽지 보기</caption>
                </thead>
                <tbody>
                                    
                        <tr>
                            <th style="width: 200px;">보낸사람 </th>
                            <td>정재훈</td>
                        </tr>
                        <tr>
                            <th>작성일 </th>
                            <td>2020-02-18</td>
                        </tr> 
                        <tr>
                            <th>제목 </th>
                            <td><label class="form-control" ></label></td>
                        </tr>                       
                        <tr>
                            <th>내용 </th>
                            <td><label class="form-control" style="height: 20vmax;"></label></td>
                        </tr>
                        <tr>
                            <td colspan="2">                              
                                <a class="btn btn-default" href="messageWrite.do"> 답장 </a>
                                <button class="btn btn-default"> 삭제 </button>
                                <a class="btn btn-default" onclick="javascript:location.href='list'">목록</a>
                            </td>
                        </tr>                   
                    
                </tbody>
            </table>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
			<%@ include file="footer.jspf" %>
		</div>

		<div class="gototop js-top">
			<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
		</div>


</body>

</html>