<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE HTML>
<html>
<head>
<%@include file="head.jspf" %>
	
</head>

<body>
   <div class="colorlib-loader">  </div>
   <div id="page">
      <nav class="colorlib-nav" role="navigation"></nav>

      <div id="colorlib-about">
         <div class="container">
            <div class="row">
               <div class="about-flex">
                 <!-- 사이드바 -->
                 <%@ include file="managementSidebar.jspf" %>
                  <div class="col-three-forth animate-box">                    

                        <h2>객실 등록 및 수정</h2>
                        <hr>       
						<form method="post" action="insertRoomSort.do">
													
	                        <div class="form-group">
	                           <div class="col-sm-6">
	                              <label>방 이름</label>
	                              <input type="text" class="form-control" placeholder="방 이름 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>기준 인원</label>
	                              <input type="text" class="form-control" placeholder="인원 수 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>최대 인원</label>
	                              <input type="text" class="form-control" placeholder="인원 수 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>방 개수</label>
	                              <input type="text" class="form-control" placeholder="인원 수 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>평일 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>공휴일 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>인원 추가당 요금</label>
	                              <input type="text" class="form-control" placeholder="요금 입력">
	                           </div>
	                           <div class="col-sm-6">
	                              <label>방 상세설명</label>
	                              <input type="text" class="form-control" placeholder="설명 입력">
	                           </div>
	                        </div>
	                        <div>&nbsp;</div>
	                        <hr>                        
	                        <div>
	                           <button type="submit" class="btn btn-info">등록</button>
	                           <button type="button" class="btn btn-success">수정</button>	                                                   
	                        </div>                        
                     </form>
                     
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