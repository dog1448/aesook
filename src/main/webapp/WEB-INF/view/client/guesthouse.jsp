<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
<!DOCTYPE HTML>
<html>
<!--head-->
<head>
<%@ include file="head.jspf"%>
</head>

<body>
	<div id="page">
		<%@ include file="main_header.jspf"%>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div class="container">
			<div class="row">
				<div class="col">
					<div>
						<h1 align="center">게스트 하우스</h1>
						<h3>지역선택</h3>
					</div>
					<hr style="border: 0; height: 1px; background: black;">
				</div>

				<div class="col-6">

					<div class="btn-group btn-group-justified" role="group"
						aria-label="...">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								서울 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">서울 전체</a></li>

										</td>

										<td>
											<li><a href="hotels.jsp">종로/삼청동/북촌/인사동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동대문/대학로/노원</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">홍대/신촌</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">명동/남산/남대문</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">강남/잠실/건대/뚝섬</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서울역/용산/이태원</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">영등포/여의도/노량진/김포공항/신림</a></li>
										</td>
									</tr>																	
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								경기 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">								
								<li><a href="hotels.jsp">경기 전체</a></li>				
								
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								인천 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">								
								<li><a href="hotels.jsp">인천 전체</a></li>								
							</ul>
						</div>
					</div>

					<div class="btn-group btn-group-justified" role="group"
						aria-label="...">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								충북/충남/대전 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">								
								<li><a href="hotels.jsp">충북/충남/대전 전체</a></li>								
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								강원 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">강원 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">강릉/동해/삼척/태백정선/영월/평창</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">속초/양양/고성</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">춘천</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								전북/전남/전주 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">전북/전주/전남 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">전주/완주/남원/진안</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">군산/익산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">여수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">순천/담양/구례/곡성/광양</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">목포/완도/해남/강진/진도</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
					</div>

					<div class="btn-group btn-group-justified" role="group"
						aria-label="...">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								광주 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">								
								<li><a href="hotels.jsp">광주 전체</a></li>								
							</ul>
						</div>
						
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								대구 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">								
								<li><a href="hotels.jsp">대구 전체</a></li>								
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								경북/경주 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">경북/경주 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">경주</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">포항/안동/봉화/기타</a></li>
										</td>										
									</tr>									
								</table>
							</ul>
						</div>						
					</div>

					<div class="btn-group btn-group-justified" role="group"
						aria-label="...">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								경남/울산 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotels.jsp">통영/거제/남해/울산/기타</a></li>								
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								부산 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">부산 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">해운대/기장</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">남포동/자갈치</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">부산역/송도/감천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">광안리</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서면</a></li>
										</td>
									</tr>									
								</table>
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								제주 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">제주 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">제주공항(삼양해수욕장 방면)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">제주공항(이호테우해변 방면)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">함덕(사려니숲길,산굼부리)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">월정/세화(월정리해변,비자림)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">성산(우도,섭지코지)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">표선/남원(제주민속촌,물영아리오름)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서귀포(중문관광단지,천지연폭포)</a></li>
										</td>
									</tr>
										<td>
											<li><a href="hotels.jsp">산방산(모슬포항,마라도)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">협재(차귀도,풍차해안도로)</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">애월(곽지해변,새별오름)</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
					</div>					
				</div>

				<div class="col"></div>
			</div>

			<div class="row">
				<div class="col"></div>
				<div class="col-5"></div>
				<div class="col"></div>
			</div>

		</div>


		<div id="colorlib-hotel">
			<div class="container">
				<div class="row">
					<div
						class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<h2>인기 게스트 하우스</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 animate-box">
						<div class="owl-carousel">
							<div class="item">
								<div class="hotel-entry">
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">
										<p class="price">
											<span>$120</span><small> /night</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="#">Hotel Edison</a>
										</h3>
										<span class="place">New York, USA</span>
										<p>A small river named Duden flows by their place and
											supplies it with the necessary regelialia.</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="hotel-entry">
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-2.jpg);">
										<p class="price">
											<span>$120</span><small> /night</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="#">Hotel Edison</a>
										</h3>
										<span class="place">New York, USA</span>
										<p>A small river named Duden flows by their place and
											supplies it with the necessary regelialia.</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="hotel-entry">
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-3.jpg);">
										<p class="price">
											<span>$120</span><small> /night</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="#">Hotel Edison</a>
										</h3>
										<span class="place">New York, USA</span>
										<p>A small river named Duden flows by their place and
											supplies it with the necessary regelialia.</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="hotel-entry">
									<a href="hotels.jsp" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-4.jpg);">
										<p class="price">
											<span>$120</span><small> /night</small>
										</p>
									</a>
									<div class="desc">
										<p class="star">
											<span><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i></span>
											545 Reviews
										</p>
										<h3>
											<a href="#">Hotel Edison</a>
										</h3>
										<span class="place">New York, USA</span>
										<p>A small river named Duden flows by their place and
											supplies it with the necessary regelialia.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<%@ include file="footer.jspf"%>

	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>

</html>