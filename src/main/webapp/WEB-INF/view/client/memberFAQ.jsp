<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 뷰포트 -->
    <meta name="viewport" content="width=device-width" initial-scale="1">

    <title>jsp 게시판 웹사이트 </title>
    <style type="text/css">
        a, a:hover {
            color: #000000;
            text-decoration: none;
        }
    </style>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <link
            href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
            rel="stylesheet">

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
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>
    <div>&nbsp;</div>



    <div class="container">
        <h2>FAQ</h2>
        <div class="row">
            <table class="table table-striped"
                   style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <th style="background-color: #eeeeee; text-align: center;">번호</th>
                    <th style="background-color: #eeeeee; text-align: center;">제목</th>
                    <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                    <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${boards}" var="boards">
                    <tr>
                        <td class="qna"><c:out value="${boards.rnum}"/></td>
                        <td class="qna"><a href="boardFAQRead.do?boardNo=${boards.rnum}">
                            <c:out value="${boards.boardTitle}"/></a></td>
                        <td class="qna"><c:out value="${boards.boardWriter}"/></td>
                        <td class="qna"><fmt:formatDate value="${boards.boardDate}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <c:if test="${pageMaker.prev}">
                <a href="boardFAQ.do${pageMaker.makeQuery(pageMaker.startPage -1)}" class="btn btn-success btn-arrow-left">이전</a>
            </c:if>

            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="point">
                <li class="list-group-item" style="list-style: none; float: left; padding: 6px"><a href="boardFAQ.do${pageMaker.makeQuery(point)}">${point}</a> </li>
            </c:forEach>

            <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
                <a href="boardFAQ.do${pageMaker.makeQuery(pageMaker.endPage +1)}" class="btn btn-success btn-arrow-left">다음</a>
            </c:if>


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



<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">

	var totalData = 1000;    // 총 데이터 수
	var dataPerPage = 20;    // 한 페이지에 나타낼 데이터 수
	var pageCount = 10;        // 한 화면에 나타낼 페이지 수

	function paging(totalData, dataPerPage, pageCount, currentPage){

		console.log("currentPage : " + currentPage);

		var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수
		var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹

		console.log("pageGroup : " + pageGroup);

		var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
		if(last > totalPage)
			last = totalPage;
		var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
		var next = last+1;
		var prev = first-1;

		console.log("last : " + last);
		console.log("first : " + first);
		console.log("next : " + next);
		console.log("prev : " + prev);

		var $pingingView = $("#paging");

		var html = "/MemberBoard.do";

		if(prev > 0)
			html += "<a href=# id='prev'><</a> ";

		for(var i=first; i <= last; i++){
			html += "<a href='#' id=" + i + ">" + i + "</a> ";
		}

		if(last < totalPage)
			html += "<a href=# id='next'>></a>";

		$("#paging").html(html);    // 페이지 목록 생성
		$("#paging a").css("color", "black");
		$("#paging a#" + currentPage).css({"text-decoration":"none",
			"color":"red",
			"font-weight":"bold"});    // 현재 페이지 표시

		$("#paging a").click(function(){

			var $item = $(this);
			var $id = $item.attr("id");
			var selectedPage = $item.text();

			if($id == "next")    selectedPage = next;
			if($id == "prev")    selectedPage = prev;

			paging(totalData, dataPerPage, pageCount, selectedPage);
		});

	}

	$("document").ready(function(){
		paging(totalData, dataPerPage, pageCount, 1);
	});
</script>





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