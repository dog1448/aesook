<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="head.jspf" %>
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
						<!-- sideBar -->
						<%@ include file="myPageSidebar.jspf" %>
						<div class="col-three-forth animate-box">	
						<!--리뷰 작성-->
										<div id="colorlib-contact">
											<div class="container">
												<div class="row">
													<div class="col-md-10 col-md-offset-1 animate-box">	
														<div class="row form-group">
															<div class="col-md-12">
																<label for="subject">별점</label>
																<div class="starRev">
																	<span class="starR on">별1</span>
																	<span class="starR on">별2</span>
																	<span class="starR on">별3</span>
																	<span class="starR on">별4</span>
																	<span class="starR on">별5</span>
																</div>
															</div>
														</div>

														<div class="row form-group">
															<div class="col-md-12">
																<label for="subject">제목</label>
																<input type="text" id="subject" class="form-control" 
																placeholder="">
															</div>
														</div>

														<div class="row form-group">
															<div class="col-md-12">
																<label for="message">내용</label>
																<textarea name="message" id="message" cols="30"
																	rows="10" class="form-control"
																	placeholder=""></textarea>
															</div>
														</div>
														<div class="form-group text-center">
															<input type="submit" value="작성" class="btn btn-info">
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 리뷰 끝-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="footer.jspf" %>		

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

	
	</body>
</html>

