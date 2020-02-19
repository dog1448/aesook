<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
    <%@include file="head.jspf" %>
</head>

<body>

    <div class="colorlib-loader">   </div>

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
                        <%@ include file="myPageSidebar.jspf" %>
                        <div class="col-three-forth animate-box">
                            <h2>회원탈퇴</h2>
                            <div>&nbsp;</div>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1 animate-box">                              
                                    <form action="doWithdrawal.do" method="POST" onsubmit="return passwordCheck()" >
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <label for="subject">비밀번호 : </label>
                                            <input type="password" id="password" class="form-control"
                                                placeholder="password">
                                            <input type="hidden" id=memberpass value="${login.memberPass }">
                                        </div>
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="submit" value="탈퇴" class="btn btn-success">
                                    </div>
                                   </form>
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
<script>
   function passwordCheck() {
       if($("#password").val() != ($("#memberPass").val())){ 
             alert("비밀번호가 틀립니다");
             $("#password").val("");
             $("#password").focus();
             return false;
            }else{
               
               var result = confirm('정말 탈퇴 하시겠습니까?');
               if(result){
                  return true;
               }else{
                  $("#password").val("");
                   $("#password").focus();
                  return false;
                  }
               
            }
   }


</script>
</html>