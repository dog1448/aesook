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
                            <h2>���� �ı�</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <table class="table table-striped"
                                    style="text-align: center; border: 1px solid #dddddd">
                                    <thead>
                                        <tr>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                ��ȣ</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                ����</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                �ۼ���</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                ����</th>
                                            <th style="background-color: #eeeeee; text-align: center;">
                                                �ۼ���</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>1</td>
                                            <td><a>EXAMPLE</a></td>
                                            <td>����</td>
                                            <td>
                                                <div class="starRev">
                                                    <span class="starR on">��1</span>
                                                    <span class="starR on">��2</span>
                                                    <span class="starR on">��3</span>
                                                    <span class="starR on">��4</span>
                                                    <span class="starR on">��5</span>
                                                </div>
                                            </td>
                                            <td>2020-02-07</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <a href="#" class="btn btn-success btn-arrow-left">����</a>
                                <a href="#" class="btn btn-success btn-arrow-left">����</a>
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