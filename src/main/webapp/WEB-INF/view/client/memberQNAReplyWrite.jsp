
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

</head>

<body>

<div id="page">
    <%@include file="main_header.jspf" %>
    <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
    <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
    <div class="container">
        <table class="table table-bordered">
            <thead>
            <caption> 글쓰기  </caption>
            </thead>
            <tbody>
            <form action="boardQNAReply.do" method="post">
                <input type="hidden" name="boardWriter" id="boardWriter" value="${login.memberId}">
                <tr>
                    <th>제목: </th>
                    <td><input type="text" placeholder="제목을 입력하세요. " id="boardTitle" name="boardTitle" class="form-control" value="[답글] : " /></td>
                </tr>
                <tr>
                    <th>내용: </th>
                    <td><textarea type="text" cols="10" placeholder="내용을 입력하세요. " id="boardContent" name="boardContent" class="form-control" style="height: 500px;" rows="30"></textarea></td>
                </tr>

                <input type="hidden" name="boardType" id="boardType" value="Q">
                <input type="hidden" name="boardIP" id="boardIP" value="123.123">
                <input type="hidden" name="boardGroup" value="${reply.boardSeq}">
                <input type="hidden" name="boardStep" value="${reply.boardSeq}">



                <!--
                <tr>
                    <th>첨부파일: </th>
                    <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control" />
                    </td>
                </tr>
                -->

                <tr>
                    <td colspan="2">
                        <!--
            <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
            <input type="button" value="reset" class="pull-left"/>
            <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.jsp'"/>
            -->

                        <!--<a class="btn btn-default" onclick="sendData()"> 등록 </a>-->
                        <input class="btn btn-default" id="submit" type="submit" value="등록">
                        <a class="btn btn-default" type="reset"> 초기화 </a>
                        <a class="btn btn-default" onclick="javascript:history.go(-1)">목록</a>
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