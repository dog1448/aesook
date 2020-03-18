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


    <div class="container" style="margin-bottom: 20%">
        <h2>Q&A</h2>
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
                        <td><c:out value="${boards.rnum}"/></td>
                        <c:set var="writer" value="${boards.boardWriter}"/>
                        <c:set var="id" value="${login.memberId}"/>
                        <c:set var="del" value="${boards.boardTitle}"/>
                        <c:set var="deltitle" value="삭제된 게시글입니다."/>
                        <c:choose>
                            <c:when test="${del eq deltitle}">
                                <td class="qna"><c:out value="삭제된 게시글 입니다."/></td>
                            </c:when>
                            <c:when test="${writer eq id}">
                                <td class="qna"><a href="boardQNARead.do?boardNo=${boards.boardSeq}">
                                    <c:out value="${boards.boardTitle}"/></a></td>
                            </c:when>
                            <c:otherwise>
                                <td class="qna"><c:out value="게시글 확인은 본인만 가능합니다."/></td>
                            </c:otherwise>
                        </c:choose>

                        <td id="writer"><c:out value="${boards.boardWriter}"/></td>
                        <td><fmt:formatDate value="${boards.boardDate}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <c:if test="${pageMaker.prev}">
                <a href="boardQNA.do${pageMaker.makeQuery(pageMaker.startPage -1)}"
                   class="btn btn-success btn-arrow-left">이전</a>
            </c:if>

            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="point">
                <li class="list-group-item" style="list-style: none; float: left; padding: 6px"><a
                        href="boardQNA.do${pageMaker.makeQuery(point)}">${point}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
                <a href="boardQNA.do${pageMaker.makeQuery(pageMaker.endPage +1)}"
                   class="btn btn-success btn-arrow-left">다음</a>
            </c:if>
            <c:if test="${login.memberId != null }">
            <a href="boardQNAWrite.do" class="btn btn-info pull-right">글쓰기</a>
            </c:if>

        </div>
    </div>

    <%@include file="footer.jspf" %>

</div>
<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    if ('${login.memberId}' === "") {
        $(document).ready(function () {
            $(".qna").text("비밀글입니다.")
        });
    }
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