<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jspf" %>
<title>Insert title here</title>

</head>
<body>
   <div class="colorlib-loader">  </div>

   <div id="page">
      <%@ include file="main_header.jspf" %>
	  <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
	
      <div id="colorlib-about">
         <div class="container">
            <div class="row">
               <div class="about-flex">
                  <!-- 사이드바 -->
                 <%@ include file="managementSidebar.jspf" %>
            
            	 <div class="col-three-forth animate-box">
                  <h2>대표 사진</h2>
                  <hr>
                    <!-- Button to Open the Modal -->
				  <div class="openbtn text-center">
				  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
				    Click to Open modal
				  </button>
				 </div>
				
				
                  
                  
                 </div> <!-- animate-box end -->
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