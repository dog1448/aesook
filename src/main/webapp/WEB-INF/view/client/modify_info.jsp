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
                                        <li><a href="booking.jsp">������ȸ</a></li>
                                        <li><a href="myReview.jsp">���� �ı�</a></li>
                                        <li><a href="modify_info.jsp">������������</a></li>
                                        <li><a href="brn.jsp">����ڵ��</a></li>
                                        <li><a href="inserthotel.jsp">���� ����</a></li>
                                        <li><a href="withdrawal.jsp">ȸ��Ż��</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-three-forth animate-box">
                            <h2>������������</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 animate-box">					
										
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">��й�ȣ : </label>
                                            <input type="password" id="password" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">��й�ȣ Ȯ�� : </label>
                                            <input type="password" id="repassword" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">�޴��� : </label>
                                            <input type="text" id="telphone" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">�̸��� : </label>
                                            <input type="text" id="email" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="submit" value="����" class="btn btn-success">
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