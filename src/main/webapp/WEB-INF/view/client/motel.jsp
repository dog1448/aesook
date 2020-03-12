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
						<h1 align="center">MOTEL</h1>
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
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=강남/역삼/삼성/논현">강남/역삼/삼성/논현</a></li>

										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=서초/방배">서초/방배</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=잠실/신천">잠실/신천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=영등포/여의도">영등포/여의도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=신림/사당/동작">신림/사당/동작</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=천호/길동/둔촌">천호/길동/둔촌</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=화곡/까치산/양천/목동">화곡/까치산/양천/목동</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=구로/금천/오류/신도림">구로/금천/오류/신도림</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=노원/도봉/창동">노원/도봉/창동</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=서대문/마포">서대문/마포</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=갈현/불광/응암">연신내/불광/응암</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=종로/대학로">종로/대학로</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=동대문/신당/충무로">동대문/신당/충무로</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=회기/고려대/청량리/신설동">회기/고려대/청량리/신설동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=성북/월곡">성북/월곡</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=이태원/용산/명동/회현">이태원/용산/명동/회현</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=장안동/답십리">장안동/답십리</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=군자/구의">군자/구의</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=왕십리/성수/금호">왕십리/성수/금호</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=수유/미아">수유/미아</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=서울&region=상봉/중랑/면목">상봉/중랑/면목</a></li>
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
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=인계/권선/영통">인계/권선/영통</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=구운/세류">구운/세류</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=안양/평촌/인덕원/과천">안양/평촌/인덕원/과천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=성남/분당/위례">성남/분당/위례</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=용인/동탄/오산/병점">용인/동탄/오산/병점</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=하남/광주/여주/이천">하남/광주/여주/이천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=군포/의왕/금정/산본">군포/의왕/금정/산본</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=안산/시흥/광명">안산/시흥/광명</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=평택/화성/안성/부천">평택/화성/안성/부천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=일산/고양">일산/고양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=파주/김포">파주/김포</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=의정부/구리/남양주">의정부/구리/남양주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=포천/양주/동두천/연천">포천/양주/동두천/연천</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경기&region=양평/가평/청평">양평/가평/청평</a></li>
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
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=부평">부평</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=구월">구월</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=서구">서구</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=계양">계양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=주안">주안</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=송도/연수">송도/연수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=을왕">을왕</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=중구">중구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=강화">강화</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=간석">간석</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=남동구">남동구</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=인천&region=용현/숭의/도화/동구">용현/숭의/도화/동구</a></li>
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
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=춘천">춘천</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=원주">원주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=사천/주문진">사천/주문진</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=교동/옥계">교동/옥계</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=영월/정선">영월/정선</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=속초/양양/고성">속초/양양/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=동해/삼척/태백">동해/삼척/태백</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=평창">평창</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=홍천/횡성">홍천/횡성</a></li>
										</td>

										<td>
											<li><a href="hotelsList.do?type=모텔&sido=강원&region=화천/철원/인제/양구">화천/철원/인제/양구</a></li>
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
											<li><a href="hotelsList.do?type=모텔&sido=제주&region=제주시">제주시</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=제주&region=서귀포시">서귀포시</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=제주&region=애월/한림">애월/한림</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								대전 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대전&region=유성구">유성구</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대전&region=중구">중구(은행/대흥/선화)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대전&region=동구">동구(용전/복합터미널)</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대전&region=서구">서구(둔산/용문/월평)</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=대전&region=대덕구">대덕구(중리/신탄진)</a></li>
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
								충북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충북&region=흥덕구/서원구">흥덕구/서원구</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충북&region=상당구/청원구">상당구/청원구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충북&region=충주/수안보">충주/수안보</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충북&region=제천/진천/음성/단양">제천/진천/음성/단양</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=충북&region=보은/옥천/괴산/증평/영동">보은/옥천/괴산/증평/영동</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								충남 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=서북구">천안 서북구</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=동남구">천안 동남구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=아산">아산</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=공주/동학사">공주/동학사</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=계룡/금산/논산/청양">계룡/금산/논산/청양</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=예산/홍성">예산/홍성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=태안/안면/서산">태안/안면도/서산</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=당진">당진</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=보령">보령</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=충남&region=서천/부여">서천/부여</a></li>
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
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=해운대/센텀/재송">해운대/센텀시티/재송</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=송정/기장/정관">송정/기장/정관</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=서면/양정/초읍/시민공원">서면/양정/초읍/부산시민공원</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=남포동/중앙동/태종/송도/영도">남포동/중앙동/태종대/송도/영도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=범일동/부산진">범일동/부산진역</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=광안/수영">광안리/수영</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=남구/대연/용호동/문현">경성대/대연/용호동/문현</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=동래/사직/온천장/부산대/구서">동래/사직/온천장/부산대/구서</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=사상/엄궁/학장">사상(경전철)/엄궁/학장</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=덕천/화명/만덕/구포/북구">덕천/화명/만덕/구포/구표역</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=부산&region=하단/명지/괴정/다대/신호/지사">하단/명지/괴정/다대포/신호/지사</a></li>
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
								<li><a href="hotelsList.do?type=모텔&sido=울산&region=남구/중구">남구/중구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotelsList.do?type=모텔&sido=울산&region=동구/북구/울주군">동구/북구/울주군</a></li>
							</ul>
						</div>

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
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=상남동/용호동/의창구">창원 상남동/용호동/창원시청</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=명서동/봉곡동/팔용동/창원대로">창원 명서동/봉곡동/팔용동/창원종합버스터미널</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=마산/진해">마산/진해</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=김해">김해</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=양산/밀양">양산/밀양</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=진주">진주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=거제/통영/고성">거제/통영/고성</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=사천/남해">사천/남해</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=하동/산청/함양">하동/산청/함양</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경남&region=거창/함안/창녕/합천/의령">거창/함안/창녕/합천/의령</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								대구 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=동성로/달성로/연암로/수성구/교동/중구">동성로/달성로/대구시청/삼덕동/교동/종로</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=남구/북구">대구역/경북대</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=동구">동대구역/신천동/신암동</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=공항로/지저동/이노밸리로/신서동/각산동/숙천동/초례로/공항로/입석동/팔공산/진인동/도평로/도동/용수동">대구공항/혁신도시/동촌유원지/팔공산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=수성구/동대구로/황금동/들안로/두산동/동대구로/범어동/국채보상로">수성못/황금동/들안길/두산동/범어</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=평리동/내당동/비산동/고성로/원대동">평리동/내당동/비산동/원대동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=공원순환로/두류동/달구벌대로/내당동/성당동/공원순환로/두류동/대명동/앞산순환로/대봉로/이천동/대명동/경상길/고산/봉덕동/대명로">두류공원/광장코아/성당동/두류동/앞산공원/이천동/대명동/봉덕동/안지랑</a>
										</li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=구마로/본리동/달구벌대로/죽전동/장기동">본리동/죽전동/장기동</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=대구&region=계대동문로/이곡동/명덕로/대명동/대천동/성서공단남로/상인동/상원로/달성군">성서/계명대/성서공단/상인동/달성군</a></li>
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
								경북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=남구">포항/남구(시청/시외버스터미널/구룡포/쌍사/문덕/오천)</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=북구">포항/북구(영일대/죽도시장/여객터미널/송도)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=경주">경주</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=구미">구미</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=경산">경산</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=안동">안동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=영천/청도">영천/청도</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=김천/칠곡/성주">김천/칠곡/성주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=문경/상주/영주/예천/군위/의성/봉화">문경/상주/영주/예천/군위/의성/봉화</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=울진/영덕/청송">울진/영덕/청송</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotelsList.do?type=모텔&sido=경북&region=울릉">울릉도</a></li>
										</td>
									</tr>
								</table>
							</ul>

						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								광주 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="hotelsList.do?type=모텔&sido=광주&region=상무지구/유스퀘어/서구/치평동">상무지구/유스퀘어/서구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotelsList.do?type=모텔&sido=광주&region=첨단지구/월계동/광산구">첨단지구/광산구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotelsList.do?type=모텔&sido=광주&region=충장로/대인시장/대인동/동구/남구">충장로/대인시장/동구/남구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotelsList.do?type=모텔&sido=광주&region=광주역/역동/북구">광주역/북구</a></li>
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								전남/전북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=여수">여수</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=순천">순천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=광양">광양</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=목포/영암/신안">목포/영암/신안</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=나주/함평/영광/장성">나주/함평/영광/장성</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=담양/곡성/화순/구례">담양/곡성/화순/구례</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전남&region=해남/완도/진도/강진/장흥/보성/고흥">해남/완도/진도/강진/장흥/보성/고흥</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전북&region=전주/완주">전주/완주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전북&region=군산">군산</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전북&region=익산">익산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전북&region=남원/임실/순창/무주/진안/장수">남원/임실/순창/무주/진안/장수</a></li>
										</td>
										<td>
											<li><a href="hotelsList.do?type=모텔&sido=전북&region=정읍/부안/김제/고창">정읍/부안/김제/고창</a></li>
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
						<h2>인기 모텔</h2>
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