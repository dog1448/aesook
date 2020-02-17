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
						<h1 align="center">펜션</h1>
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
								강원 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">강원 전체</a></li>

										</td>

										<td>
											<li><a href="hotels.jsp">강릉</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">속초/고성/양양</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">동해/삼척</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">춘천(남이섬)</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">홍천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">횡성/원주</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">평창</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">정선/영월</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">화천/철원/인제/양구</a></li>
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
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">경기 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">남이섬/자라섬/가평북부</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">가평남부(청평,수목원)/남양주</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">대부도/영흥도/선재도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">양평/여주/광주/이천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">포천/파주/연천/경기북부</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">용인/안성/평택/화성(제부도)</a></li>
										</td>
									
									</tr>									
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								인천 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">인천 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">강화도</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">을왕리/섬(석모도 등)</a></li>
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
								경남 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">경남 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">거제도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">남해/사천/진주</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">통영/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">하동/산청/함양/거창</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">합천/밀양/경남내륙</a></li>
										</td>
									</tr>									
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								경북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">경북 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">경주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">포항</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">울진/영덕/울릉도</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">문경/청도/성주/경부내륙</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								전남 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">전남 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">여수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">순천/구례/전남내륙</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">무안/영광/전남해안</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">보성/장흥/고흥/강진/영암</a></li>
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
								전북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">전북 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">전주/완주/김제/익산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">부안(변산반도)/고창</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">무주/진안/장수</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">남원/임실/정읍/군산</a></li>
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
											<li><a href="hotels.jsp">제주/애월/한림/한경</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">조천/구좌/우도</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서귀포/중문/대전/안덕</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">남원/표선/성산</a></li>
										</td>										
									</tr>									
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								충청 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">충남 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">태안(안면도)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">보령/서천</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">충남(서산,당진,공주 등)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">충북 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">단양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">제천/충주</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">충북남주(괴산,보은 등)</a></li>
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
								울산 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotels.jsp">울산 전체</a></li>								
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								부산 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotels.jsp">부산 전체</a></li>								
							</ul>
						</div>
						
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								서울 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotels.jsp">서울 전체</a></li>								
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
						<h2>인기 펜션</h2>
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