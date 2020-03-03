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
											<li><a href="hotelsList.do?type=호텔&sido=서울&region=성북/강북/노원/도봉">성북/강북/노원/도봉</a></li>										
										</td>

										<td>
											<li><a href="hotelsList.do?type=호텔&sido=서울&region=강남/역삼/삼성">강남/역삼/삼성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=호텔&sido=서울&region=신사/청담/압구정">신사/청담/압구정</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=호텔&sido=서울&region=서초/교대/사당">서초/교대/사당</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=서울&region=잠실/송파/강동">잠실/송파/강동</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=서울&region=을지로/명동/중구">을지로/명동/중구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=서울&region=서울역/이태원/용산">서울역/이태원/용산</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=서울&region=종로/인사동">종로/인사동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=서울&region=동대문구">동대문구</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=서울&region=홍대/합정/마포/서대문">홍대/합정/마포/서대문</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=서울&region=여의도">여의도</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=서울&region=영등포역">영등포역</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=서울&region=구로/신도림/금천">구로/신도림/금천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=서울&region=김포공항/염창/강서">김포공항/염창/강서</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?sido=서울&region=건대입구/성수/왕십리">건대입구/성수/왕십리</a></li>
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
											<li><a href="hotelsList.do?sido=경기&region=안양/의왕/군포">안양/의왕/군포</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=경기&region=가평/청평/양평">가평/청평/양평</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경기&region=수원/화성">수원/화성</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=경기&region=고양/파주/김포">고양/파주/김포</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경기&region=의정부/포천/동두천">의정부/포천/동두천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=경기&region=용인/동탄">용인/동탄</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경기&region=오산/평택">오산/평택</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=경기&region=남양주/구리/성남/분당">남양주/구리/성남/분당</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경기&region=이천/광주/여주/하남">이천/광주/여주/하남</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=경기&region=부천/광명/시흥/안산">부천/광명/시흥/안산</a></li>
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
											<li><a href="hotelsList.do?sido=인천&region=청라/계양/부평">청라/계양/부평</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=인천&region=송도/소래포구">송도/소래포구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=인천&region=강화/영종">강화/영종</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=인천&region=구읍뱃터/월미도">구읍뱃터/월미도</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?sido=인천&region=주안/간석/인천시청">주안/간석/인천시청</a></li>
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
											<li><a href="hotelsList.do?sido=강원&region=홍천/횡성/원주">홍천/횡성/원주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=강원&region=속초/양양/고성">속초/양양/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=강원&region=춘천/인제/철원">춘천/인제/철원</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=강원&region=강릉">강릉</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=강원&region=평창/정선/영월">평창/정선/영월</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?sido=강원&region=동해/삼척/태백">동해/삼척/태백</a></li>
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
											<li><a href="hotelsList.do?sido=제주&region=함덕/김녕/세화">함덕/김녕/세화</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=제주&region=제주시/제주국제공항">제주시/제주국제공항</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=제주&region=서귀포시">서귀포시</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=제주&region=애월/한림/협재">애월/한림/협재</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=제주&region=중문">중문</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=제주&region=표선/성산">표선/성산</a></li>
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
											<li><a href="hotelsList.do?sido=부산&region=사상/강서/김해공항">사상/강서/김해공항</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=해운대/마린시티">해운대/마린시티</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=광안리/경성대">광안리/경성대</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=부산역">부산역</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=자갈치/남포동/영도">자갈치/남포동/영도</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=송도/다대포">송도/다대포</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=서면/연산/범일">서면/연산/범일</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=동래/온천/금정구">동래/온천/금정구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=벡스코/센텀시티">벡스코/센텀시티</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=부산&region=송정/기장">송정/기장</a></li>
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
											<li><a href="hotelsList.do?sido=경상&region=남해/사천/하동/진주">남해/사천/하동/진주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=경상&region=대구/구미/안동/문경">대구/구미/안동/문경</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경상&region=경주">경주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=경상&region=울산/양산">울산/양산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=경상&region=거제/통영">거제/통영</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=경상&region=포항/영덕/울진/청송">포항/영덕/울진/청송</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?sido=경상&region=창원/마산/진해/김해">창원/마산/진해/김해</a></li>
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
											<li><a href="hotelsList.do?sido=전북&region=군산/부안/고창">군산/부안/고창</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=전북&region=전주">전주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=광주&region=광주">광주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=전남&region=여수">여수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=전남&region=순천/광양/구례/목포/보성">순천/광양/구례/목포/보성</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=전남&region=남원/무주/완주/익산">남원/무주/완주/익산</a></li>
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
											<li><a href="hotelsList.do?sido=충북&region=충주/제천/단양">충주/제천/단양</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=대전&region=대전">대전</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=충북&region=천안/아산/도고">천안/아산/도고</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=충북&region=안면도/태안/서산/덕산">안면도/태안/서산/덕산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?sido=충남&region=보령/대천/부여/공주/금산">보령/대천/부여/공주/금산</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?sido=충남&region=청주/음성/진천">청주/음성/진천</a></li>
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
						<!-- 각 item이 하나의 숙소 링크 부분 -->
						<c:forEach var="list" items="${top10}">
							<div class="item">
								<div class="hotel-entry">
									<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img"
										style="background-image: url(resources/client/images/hotel-1.jpg);">																					
									</a>
									<div class="desc">
									<p class="star"><span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span> 545 Reviews</p>										
										<h3>
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}">${list.hotelsName}</a>
										</h3>
										<span class="place">${list.hotelsAddress1}</span>
										<p>${list.hotelsInfo}</p>
									</div>
								</div>
							</div>
						</c:forEach>	
						</div>
					</div>
				</div>
			</div>			
		</div>		
	</div>
	<%@ include file="footer.jspf"%>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>

</body>

</html>