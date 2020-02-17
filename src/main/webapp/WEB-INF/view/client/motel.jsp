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
						<h1 align="center">모텔</h1>
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
											<li><a href="hotels.jsp">강남/역삼/삼성/논현</a></li>

										</td>

										<td>
											<li><a href="hotels.jsp">서초/신사/방배</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">잠실/신천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">영등포/여의도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">신림/서울대/사당/동작</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">천호/길동/둔춘</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">화곡/까치산/양천/목동</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">구로/금천/오류/신도림</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">태릉/노원/도봉/창동</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">신촌/홍대/합정</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">연신내/불광/응암</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">종로/대학로</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동대문/동묘/신당/충무로/약수</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">회기/고려대/청량리/신설동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">성신여대/성북/월곡</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">이태원/용산/서울역/명동/회현</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">장안동/답십리</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">건대/군자/구의</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">왕십리/성수/금호</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">수유/미아</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">상봉/중랑/면목</a></li>
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
											<li><a href="hotels.jsp">수원 인계/권선/영통</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">수원역/구운/장안/세류</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">안양/평촌/인덕원/과천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">성남/분당/위례</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">용인/동탄/오산/병점</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">하남/광주/여주/이천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">군포/의왕/금정/산본</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">안산/시흥/광명</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">평택/송탄/화성/안성/부천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">일산/고양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">파주/김포</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">의정부/구리/남양주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">포천/양주/동두천/연천</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">양평/가평/청평</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">제부도/대부도</a></li>
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
											<li><a href="hotels.jsp">부평</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">구월</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서구</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">계양</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">주안</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">송도/연수</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">인천공항/을왕리</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">중구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">강화/웅진</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">동암/간석</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">남동구</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">용현/숭의/도화/동구</a></li>
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
											<li><a href="hotels.jsp">춘천/강촌</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">원주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">경포대/사천/주문진</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">강릉역/교동/옥계/정동진</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">영월/정선</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">속초/양양/고성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동해/삼척/태백</a></li>
										</td>

										<td>
											<li><a href="hotels.jsp">평창</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">홍천/횡성</a></li>
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
								제주 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">제주시</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서귀포시</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">하귀/애월/한림/협재</a></li>
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
											<li><a href="hotels.jsp">유성구</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">중구(은행/대흥/선화)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동구(용전/복합터미널)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서구(둔산/용문/월평)</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">대덕구(중리/신탄진)</a></li>
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
											<li><a href="hotels.jsp">청주 흥덕구/서원구(청주 터미널)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">청주 상당구/청원구(청주국제공항)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">충주/수안보</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">제천/진천/음성/단양</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">보은/옥천/괴산/증평/영동</a></li>
										</td>
									</tr>
								</table>
							</ul>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								충남/세종 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">천안 서북구</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">천안 동남구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">아산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">공주/동학사/세종</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">계룡/금산/논산/청양</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">예산/홍성</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">태안/안면도/서산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">당진</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">보령/대전</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">서천/부여</a></li>
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
											<li><a href="hotels.jsp">해운대/센텀시티/재송</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">송정/기장/정관</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">서면/양정/초읍/부산시민공원</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">남포동/중앙동/태종대/송도/영도</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">부산역/범일동/부산진역</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">광안리/수영</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">경성대/대연/용호동/문현</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">동래/사직/온천장/부산대/구서</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">사상(경전철)/엄궁/학장</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">덕천/화명/만덕/구포/구포(구포역/KTX역)</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">하단/명지/괴정/다대포/신호/지사/김해공항</a></li>
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
								<li><a href="hotels.jsp">남구/중구(삼산/성남/무거/신정)</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotels.jsp">동구/북구/울주군(일산/진장/진하/KTX역/영남알프스</a></li>
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
											<li><a href="hotels.jsp">창원 상남동/용호동/중앙동/창원시청</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">창원
													명서동/봉곡동/팔용동/북면온천/창원종합버스터미널</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">마산/진해</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">김해/장유</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">양산/밀양</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">진주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">거제/통영/고성</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">사천/남해</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">하동/산청/함양</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">거창/함안/창녕/합천/의령</a></li>
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
											<li><a href="hotels.jsp">동성로/서문시장/대구시청/삼덕동/교동/종로</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">대구역/칠성시장/경북대/엑스코/칠곡지구/태전동/금호지구</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">동대구역/고속버스터미널/신천동/신암동</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">대구공항/혁신도시/동촌유원지/팔공산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">수성못/황금동/들안길/두산동/범어</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">북부정류장/이현공단/평리동/내당동/비산동/원대동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">이월드/두류공원/광장코아/성당동/두류동/앞산공원/이천동/대명동/봉덕동/안지랑</a>
										</li>
										</td>
										<td>
											<li><a href="hotels.jsp">서부정류장/본리동/죽전동/장기동</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">성서/계명대/성서공단/상인동/달성군/가창/현풍/논공</a></li>
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
											<li><a href="hotels.jsp">포항/남구(시청/시외버스터미널/구룡포/쌍사/문덕/오천)</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">포항/북구(영일대/죽도시장/여객터미널/송도)</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">경주</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">구미</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">경산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">안동</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">영천/청도</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">김천/칠곡/성주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">문경/상주/영주/예천/군위/의성/봉화</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">울진/영덕/청송</a></li>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<li><a href="hotels.jsp">울릉도</a></li>
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
								<li><a href="hotels.jsp">상무지구/금호지구/유스퀘어/서구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotels.jsp">첨단지구/하단지구/송정역/광산구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotels.jsp">충장로/대인시장/국립아시아문화전당/동구/남구</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="hotels.jsp">광주역/기아챔피언스필드/전대사거리/북구</a></li>
							</ul>
						</div>

						<div class="btn-group" role="group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								전주/전남/전북 <span class="caret"></span>
							</button>

							<ul class="dropdown-menu">
								<table class="table">
									<tr>
										<td>
											<li><a href="hotels.jsp">여수</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">순천</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">광양</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">목포/무안/영암/신안</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">나주/함평/영광/장성</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">담양/곡성/화순/구례</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">해남/완도/진도/강진/장흥/보성/고흥</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">전주/완주</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">군산</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">익산</a></li>
										</td>
									</tr>
									<tr>
										<td>
											<li><a href="hotels.jsp">남원/임실/순창/무주/진안/장수</a></li>
										</td>
										<td>
											<li><a href="hotels.jsp">정읍/부안/김제/고창</a></li>
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