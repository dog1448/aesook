<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 뷰포트 -->
    <meta name="viewport" content="width=device-width" initial-scale="1">
    <!-- 스타일시트 참조  -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>jsp 게시판 웹사이트</title>
    <style type="text/css">
        a,
        a:hover {
            color: #000000;
            text-decoration: none;
        }
    </style>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="resources/client/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="resources/client/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="resources/client/css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="resources/client/css/magnific-popup.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="resources/client/css/flexslider.css">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="resources/client/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/client/css/owl.theme.default.min.css">

    <!-- Date Picker -->
    <link rel="stylesheet" href="resources/client/css/bootstrap-datepicker.css">
    <!-- Flaticons  -->
    <link rel="stylesheet" href="resources/client/fonts/flaticon/font/flaticon.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="resources/client/css/style.css">

    <!-- Modernizr JS -->
    <script src="resources/client/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<body>


    <!-- 네비게이션  -->
    <div id="page">
        <%@include file="main_header.jspf" %>
        <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
		<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
        
        <!-- 게시판 -->
        <div class="container">

            <div class="row">
                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                        <tr>
                            <th style="background-color: #eeeeee; text-align: center;">번호</th>
                            <th style="background-color: #eeeeee; text-align: center;">제목</th>
                            <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                            <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td>1</td>
                            <td><a href="chat.jsp">EXAMPLE</a></td>
                            <td>관리자</td>
                            <td>2020-02-07</td>
                        </tr>

                    </tbody>
                </table>
                <a href="#" class="btn btn-success btn-arrow-left">이전</a>

                <a href="#" class="btn btn-success btn-arrow-left">다음</a>
            </div>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <%@include file="footer.jspf" %>
    </div>

	 <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>

    <!-- 애니매이션 담당 JQUERY -->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!-- 부트스트랩 JS  -->
    <script src="resources/client/js/bootstrap.js"></script>
    <!-- jQuery -->
    <script src="resources/client/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="resources/client/js/jquery.easing.1.3.js"></script>

    <!-- Waypoints -->
    <script src="resources/client/js/jquery.waypoints.min.js"></script>
    <!-- Flexslider -->
    <script src="resources/client/js/jquery.flexslider-min.js"></script>
    <!-- Owl carousel -->
    <script src="resources/client/js/owl.carousel.min.js"></script>
    <!-- Magnific Popup -->
    <script src="resources/client/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/client/js/magnific-popup-options.js"></script>
    <!-- Date Picker -->
    <script src="resources/client/js/bootstrap-datepicker.js"></script>
    <!-- Stellar Parallax -->
    <script src="resources/client/js/jquery.stellar.min.js"></script>

    <!-- Main -->
    <script src="resources/client/js/main.js"></script>
</body>

</html>