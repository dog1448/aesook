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
						<h1 align="center">호텔</h1>
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
											<li><a href="hotels.jsp">강남/역삼/삼성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">신사/청담/압구정</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">서초/교대/사당</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">잠실/송파/강동</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">을지로/명동/중구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서울역/이태원/용산</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">종로/인사동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동대문구</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">홍대/합정/마포/서대문</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">여의도</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">영등포역</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">구로/신도림/금천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">김포공항/염창/강서</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">건대입구/성수/왕십리</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">성북/강북/노원/도봉</a></li>
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
											<li><a href="hotels.jsp">가평/청평/양평</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">수원/화성</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">고양/파주/김포</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">의정부/포천/동두천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">용인/동탄</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">오산/평택</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">남양주/구리/성남/분당</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">이천/광주/여주/하남</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">부천/광명/시흥/안산</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">안양/의왕/군포</a></li>
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
											<li><a href="hotels.jsp">송도/소래포구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">인천국제공항/강화/을왕리/영종</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">구읍뱃터/월미도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">주안/간석/인천시청</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">청라/계양/부평</a></li>
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
								강원 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">강원 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">속초/양양/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">춘천/인제/철원</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">강릉</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">평창/정선/영월</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">동해/삼척/태백</a></li>
										</td>
									</tr>
									<tr>										
										<td colspan="2">
											<li><a href="hotels.jsp">홍천/횡성/원주</a></li>
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
											<li><a href="hotels.jsp">제주시/제주국제공항</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서귀포시</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">애월/한림/협재</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">중문</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">표선/성산</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">함덕/김녕/세화</a></li>
										</td>
									</tr>
								</table>
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
											<li><a href="hotels.jsp">해운대/마린시티</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">광안리/경성대</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">부산역</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">자갈치/남포동/영도</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">송도/다대포</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서면/연산/범일</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">동래/온천/금정구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">벡스코/센텀시티</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">송정/기장</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">사상/강서/김해공항</a></li>
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
								경상 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">경상 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">대구/구미/안동/문경</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">경주</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">울산/양산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">거제/통영</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">포항/영덕/울진/청송</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">창원/마산/진해/김해</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">남해/사천/하동/진주</a></li>
										</td>
									</tr>									
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								전라 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">전라 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">전주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">광주/나주</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">여수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">순천/광양/구례/목포/보성</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">남원/무주/완주/익산</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">군산/부안/고창</a></li>
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
											<li><a href="hotels.jsp">충청 전체</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">대전/세종</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">천안/아산/도고</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">안면도/태안/서산/덕산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">보령/대천/부여/공주/금산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">청주/음성/진천</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">충주/제천/단양</a></li>
										</td>										
									</tr>								
								</table>
							</ul>
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
						<h2>인기 호텔</h2>
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