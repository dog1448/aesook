<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>

<head>
	<%@include file="head.jspf" %>
</head>

<body>
	<!-- 룸 게시판 -->
	<div class="colorlib-loader"> </div>
	<div id="page">
		<%@include file="main_header.jspf" %>
		
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<!--main-->
		<div class="colorlib-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-12">
								<div class="wrap-division">
									<div class="col-md-12 col-md-offset-0 heading2 animate-box">
										<h2>숙소명</h2>																
									</div>
									<div class="row">
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$45</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-2.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$75</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$45</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$45</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$45</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
										<a href="room-details.jsp">
											<div class="col-md-12 animate-box">
												<div class="room-wrap">
													<div class="row">
														<div class="col-md-6 col-sm-6">
															<div class="room-img"
																style="background-image: url(resources/client/images/room-1.jpg);"></div>
														</div>
														<div class="col-md-6 col-sm-6">
															<div class="desc">
																<h2>방 이름</h2>
																<p class="price"><span>$45</span> <small>/ night</small>
																</p>
																<p>방 설명</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</a>
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
										<!-- 게시판 -->
										<div class="container">

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
					</div>

					<!-- SIDEBAR-->
					<div class="col-md-3">
						<div class="sidebar-wrap">
							<div class="side search-wrap animate-box">
								<h3 class="sidebar-heading">방 검색</h3>
								<form method="post" class="colorlib-form">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label for="date">체크인:</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i>
													<input type="text" id="date" class="form-control date"
														placeholder="Check-in date">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label for="date">체크아웃:</label>
												<div class="form-field">
													<i class="icon icon-calendar2"></i>
													<input type="text" id="date" class="form-control date"
														placeholder="Check-out date">
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label for="guests">인원</label>
												<div class="form-field">
													<i class="icon icon-arrow-down3"></i>
													<select name="people" id="people" class="form-control">
														<option value="#">1</option>
														<option value="#">2</option>
														<option value="#">3</option>
														<option value="#">4</option>
														<option value="#">5+</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<input type="submit" name="submit" id="submit" value="검색"
												class="btn btn-primary btn-block">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div>&nbsp;</div>
		<!-- 구글 맵 ??-->
		<div id="map" class="colorlib-map"></div>

		<%@include file="footer.jspf" %>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>

</html>