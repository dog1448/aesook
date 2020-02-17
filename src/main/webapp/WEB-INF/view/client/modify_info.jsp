<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
 <%@include file="head.jspf" %>
</head>

<body>

    <div class="colorlib-loader">  </div>

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
                            <h2>개인정보관리</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 animate-box">					
										
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">비밀번호 : </label>
                                            <input type="password" id="password" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">비밀번호 확인 : </label>
                                            <input type="password" id="repassword" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">휴대폰 : </label>
                                            <input type="text" id="telphone" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">이메일 : </label>
                                            <input type="text" id="email" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="submit" value="변경" class="btn btn-success">
                                    </div>                                    
                                </div>
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