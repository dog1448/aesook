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
						<h1 align="center">PENSION</h1>
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
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=강원">강원 전체</a></li>

										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=강릉">강릉</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=속초/고성/양양">속초/고성/양양</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=동해/삼척">동해/삼척</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=춘천">춘천(남이섬)</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=홍천">홍천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=횡성/원주">횡성/원주</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=평창">평창</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=정선/영월">정선/영월</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=강원&region=화천/철원/인제/양구">화천/철원/인제/양구</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=경기">경기 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=남이섬/자라섬/가평북부">남이섬/자라섬/가평북부</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=청평/남양주">가평남부(청평,수목원)/남양주</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=대부도/영흥도/선재도">대부도/영흥도/선재도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=양평/여주/광주/이천">양평/여주/광주/이천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=포천/파주/연천">포천/파주/연천/경기북부</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=경기&region=용인/안성/평택/화성">용인/안성/평택/화성(제부도)</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=인천&region=인천">인천 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=인천&region=강화">강화</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=인천&region=을왕">을왕리/섬(석모도 등)</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=경남">경남 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=거제">거제도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=남해/사천/진주">남해/사천/진주</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=통영/고성">통영/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=하동/산청/함양/거창">하동/산청/함양/거창</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경남&region=합천/밀양">합천/밀양/경남내륙</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=경북&region=경북">경북 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경북&region=경주">경주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경북&region=포항">포항</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=경북&region=울진/영덕/울릉">울진/영덕/울릉도</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=경북&region=문경/청도/성주">문경/청도/성주/경북내륙</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=전남&region=전남">전남 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전남&region=여수">여수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전남&region=순천/구례">순천/구례/전남내륙</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전남&region=무안/영광">무안/영광/전남해안</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=전남&region=보성/장흥/고흥/강진/영암">보성/장흥/고흥/강진/영암</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=전북&region=전북">전북 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전북&region=전주/완주/김제/익산">전주/완주/김제/익산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전북&region=부안/고창">부안(변산반도)/고창</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=전북&region=무주/진안/장수">무주/진안/장수</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=전북&region=남원/임실/정읍/군산">남원/임실/정읍/군산</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=제주&region=제주">제주 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=제주&region=제주/애월/한림/한경">제주/애월/한림/한경</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=제주&region=조천/구좌/우도">조천/구좌/우도</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=제주&region=서귀포/중문/대전/안덕">서귀포/중문/대전/안덕</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=펜션&sido=제주&region=남원/표선/성산">남원/표선/성산</a></li>
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
											<li><a href="hotelsList.do?type=펜션&sido=충남&region=충남">충남 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충남&region=태안">태안(안면도)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충남&region=보령/서천">보령/서천</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충남&region=서산/당진/공주">충남(서산,당진,공주 등)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충북&region=충북">충북 전체</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충북&region=단양">단양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충북&region=제천/충주">제천/충주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=펜션&sido=충북&region=괴산/보은">충북남부(괴산,보은 등)</a></li>
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
								<li><a href="hotelsList.do?type=펜션&sido=울산&region=울산">울산 전체</a></li>								
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								부산 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotelsList.do?type=펜션&sido=부산&region=부산">부산 전체</a></li>								
							</ul>
						</div>
						
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								서울 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotelsList.do?type=펜션&sido=서울&region=서울">서울 전체</a></li>								
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
							<!-- 각 item이 하나의 숙소 링크 부분 -->
							<c:forEach var="list" items="${top10}">
								<div class="item">
									<div class="hotel-entry">
										<c:if test="${list.hotelsImageStatus eq 'M' }">										
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="${list.hotelsImagePath}${list.hotelsImageName}" style="height: 280px; width: auto;">																					
											</a>											
										</c:if>
										<c:if test="${list.hotelsImageStatus ne 'M' }">
											<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}" class="hotel-img">
												<img src="resources/client/images/noImage.png" style="height: 280px; width: auto;">																	
											</a>
										</c:if>	
										<div class="desc">
											<p class="star">
												<span>
													<c:if test="${list.scoreAvg == 0}">
														<i class="icon-star-empty"></i>
													</c:if>
													<c:forEach var="i" begin="1" end="${list.scoreAvg}" step="1">
														<i class="icon-star-full"></i>
													</c:forEach>
												</span>
												${list.scoreCnt} Reviews
											</p>									
											<h3>
												<a href="accommodationsRoom.do?hotelsCode=${list.hotelsCode}">${list.hotelsName}</a>
											</h3>
											<span class="place">${list.hotelsAddress1}</span>
											<p>${list.hotelsPath}</p>
										</div>
									</div>
								</div>
							</c:forEach>						
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