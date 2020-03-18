
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Write something else you want</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

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

<style type="text/css">
.white {
	background-color: white;
	border: none !important;
	
}
pre {
	white-space: pre-wrap;
}
.well
{
   padding: 35px;
   padding-left: 30px;
   box-shadow: 0 0 10px #666666;
   margin: 4% auto 0;
   width: 100%;
   background-color: white;
}

body
{
	background-color:  white;
}

.input-group-addon
{
	color: grey;
}
textarea {
	font-size: 15px;
}


</style>
</head>

<body>

<div id="page">
    <%@include file="main_header.jspf" %>
    <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
    <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
    <div class="container">
    	<div class="container-fluid">
		<div class="row">
					<div class="well-header">
						<h2 class="text-left text-success"><strong>FAQ</strong></h2>
						<hr>
					</div>
					<div class="row">
						<div class="col-md-9 col-sm-9 col-xs-9">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="glyphicon glyphicon-tag"></i>
									</div>
									<input type="text" disabled="disabled" value="${board.boardTitle}" class="form-control">
									
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<input type="text" value="${board.boardWriter}" class="form-control" disabled="disabled">
									
								</div>
							</div>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">
										<textarea disabled="disabled" rows="40" style="width: 100%; hight:auto; resize: none">${board.boardContent}</textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row widget text-right">
						<button type="button" onclick="javascript:history.go(-1);" class="btn btn-warning btn-outline"> 목록보기 </button>
					</div>
					<hr>
						</div>
					</div>
				</div>
		  <%@include file="footer.jspf" %>
		</div>
	<div class="gototop js-top">
	<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
</div>
<!-- jQuery -->
<script src="resources/client/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="resources/client/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="resources/client/js/bootstrap.min.js"></script>
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