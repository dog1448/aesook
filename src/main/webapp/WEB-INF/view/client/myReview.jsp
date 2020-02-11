<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>

<head>
 <%@include file="head.jspf" %>
</head>

<body>

    <div class="colorlib-loader"></div>

    <div id="page">
        <%@include file="main_header.jspf" %>

        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>

        <div id="colorlib-about">
            <div class="container">
                <div class="row">
                    <div class="about-flex">
                        <div class="col-one-forth aside-stretch animate-box">
                            <div class="row">
                                <div class="col-md-12 about">
                                    <h2>MYPAGE</h2>
                                    <ul>
                                        <li><a href="booking.jsp">예약조회</a></li>
                                        <li><a href="myReview.jsp">나의 후기</a></li>
                                        <li><a href="modify_info.jsp">개인정보관리</a></li>
                                        <li><a href="brn.jsp">사업자등록</a></li>
                                        <li><a href="inserthotel.jsp">숙소 관리</a></li>
                                        <li><a href="withdrawal.jsp">회원탈퇴</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-three-forth animate-box">
                            <h2>나의 후기</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <table class="table table-striped"
                                    style="text-align: center; border: 1px solid #dddddd">
                                    <thead>
                                        <tr>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                번호</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                제목</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                작성자</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                별점</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>1</td>
                                            <td><a>EXAMPLE</a></td>
                                            <td>요피</td>
                                            <td>
                                                <div class="starRev">
                                                    <span class="starR on">별1</span>
                                                    <span class="starR on">별2</span>
                                                    <span class="starR on">별3</span>
                                                    <span class="starR on">별4</span>
                                                    <span class="starR on">별5</span>
                                                </div>
                                            </td>
                                            <td>2020-02-07</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <a href="#" class="btn btn-success btn-arrow-left">이전</a>
                                <a href="#" class="btn btn-success btn-arrow-left">다음</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<%@include file="footer.jspf" %>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>


</body>

</html>