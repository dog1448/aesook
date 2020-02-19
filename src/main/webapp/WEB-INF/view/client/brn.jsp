<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
   <%@ include file="head.jspf" %>
</head>

<body>

    <div class="colorlib-loader">  </div>

    <div id="page">
        
        <%@ include file="main_header.jspf" %>
        
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>

        <div id="colorlib-about">
            <div class="container">
                <div class="row">
                    <div class="about-flex">
                        <%@ include file="myPageSidebar.jspf" %>
                        <div class="col-three-forth animate-box">
                            <h2>사업자등록</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 animate-box">										
                                   
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">사업자번호 : </label>
                                            <input type="text" id="brn" class="form-control"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="submit" value="등록" class="btn btn-success">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <%@ include file="footer.jspf" %>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>
   

</body>

</html>