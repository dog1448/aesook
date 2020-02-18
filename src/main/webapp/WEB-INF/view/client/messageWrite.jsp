<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<%@ include file="head.jspf"%>
<!-- Google Map -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="resources/client/js/google_map.js"></script>
</head>

<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<%@ include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div class="container">
            <table class="table table-bordered">
                <thead>
                    <caption> 쪽지 쓰기 </caption>
                </thead>
                <tbody>
                    <form action="#" method="post" encType="multiplart/form-data">
                        <tr>
                            <th style="width: 200px;">받는 사람 </th>
                            <td>정재훈</td>
                        </tr>                                 
                       	<tr>
                            <th>제목 </th>
                            <td><input cols="10" placeholder="제목을 입력하세요." class="form-control"></input></td>
                        </tr>                     
                       	
                        <tr>
                            <th>내용 </th>
                            <td><textarea cols="10" placeholder="내용을 입력하세요."
                                    class="form-control" style="height: 20vmax;"></textarea></td>
                        </tr>                     

                        <tr>
                            <td colspan="2">                            
                                <button class="btn btn-default" onclick="sendData()" type="submit"> 보내기 </button>                                
                            </td>
                        </tr>
                    </form>
                </tbody>
            </table>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        
		<%@ include file="footer.jspf"%>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>


</body>

</html>