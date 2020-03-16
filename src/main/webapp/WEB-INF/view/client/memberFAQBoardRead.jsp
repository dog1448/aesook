
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
            <caption> FAQ  </caption>
            </thead>
            <tbody>
                <input type="hidden" name="boardWriter" id="boardWriter" value="${login.memberId}">
                <tr>
                    <th>제목: </th>
                    <td><h3>${board.boardTitle}</h3></td>
                </tr>
                <tr>
                    <th>작성자: </th>
                    <td><h3>${board.boardWriter}</h3></td>
                </tr>
                <tr>
                    <th>내용: </th>
                    <td><div class="text-body" style="height: 700px">${board.boardContent}</div></td>
                </tr>
                <div class ="box">
                    <form role="form" method="post">
                        <input type="hidden" name="boardNo" value="${board.rnum}">
                        <input type="hidden" name="boardSeq" value="${board.boardSeq}">
                    </form>
                    <button type="button" class="btn btn-default listBtn"><i class="fa fa-list"></i>목록</button>
                    <div class ="pull-right">
                        <!--
                        <button type="submit" class="btn btn-warning modBtn"><i class="fa fa-edit"></i>수정</button>
                        <button type="submit" class="btn btn-danger delBtn"><i class="fa fa-trash"></i>삭제</button>
                        -->
                    </div>
                </div>
            </tbody>
        </table>
    </div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        var formObj = $("form[role='form']");
        console.log(formObj);


        $(".listBtn").on("click",function () {
            self.location = "/aesook/boardFAQ.do"
        });

    });
</script>



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