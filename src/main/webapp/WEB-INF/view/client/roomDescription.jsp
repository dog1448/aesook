<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Sona Template">
    <meta name="keywords" content="Sona, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/client/css/bootstrap2.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/owl.carousel2.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/magnific-popup2.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/style2.css" type="text/css">
    <link rel="stylesheet" href="resources/client/css/bootstrap.css">
    <link rel="stylesheet" href="resources/client/css/style.css">
</head>

<body>
    <div id="page">
        <%@ include file="main_header.jspf" %>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        
          <!-- Testimonial Section Begin -->
        <section class="testimonial-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="testimonial-slider owl-carousel">
                            <div class="ts-item">
                                <img src="resources/client/images/room-1.jpg" alt="">
                            </div>
                            <div class="ts-item">
                                <img src="resources/client/images/room-2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section End -->

        <!-- Breadcrumb Section Begin -->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>${memberRoomVO.roomSort}</h2>
                            <div>
                                <h4>${memberhotelsVO.hotelsName}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->



        <!-- Room Details Section Begin -->
        <section class="room-details-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="room-details-item">
                            <div class="rd-text">                                
                                <h2>${memberRoomVO.roomStandardPrice} ￦<span>&nbsp;&nbsp;&nbsp;숙박</span></h2>
                                <table>
                                    <tbody>                                   		
                                        <tr>
                                            <td class="r-o">기준: </td>
                                            <td>${memberRoomVO.roomStandardCnt} 명</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">최대: </td>
                                            <td>${memberRoomVO.roomMaxCnt} 명</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">추가요금: </td>
                                            <td>${memberRoomVO.roomAddPrice} ￦</td>
                                        </tr> 
                                        <tr>
                                            <td class="r-o">객실설명: </td>
                                            <td>${memberRoomVO.roomRoomInfo}</td>
                                        </tr>   
                                    </tbody>
                                </table>                              
                               
                               	<h2>예약공지</h2>
                                <p class="f-para">예약공지 내용(애숙이 방침 쓰기)</p>
                                
                                <h2>취소규정</h2>
                                <p>취소규정(애숙이 방침)</p>
                            </div>                           
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="room-booking">
                            <h3>Your Reservation</h3>
                            <form action="#">
                                <div class="check-date">
                                    <label for="date-in">체크인:</label>
                                    <input type="text" class="date-input" id="date-in" name="bookingCheckIn">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="check-date">
                                    <label for="date-out">체크아웃:</label>
                                    <input type="text" class="date-input" id="date-out" name="bookingCheckOut">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="select-option">
                                    <label for="guest">인원:</label>
                                    <select id="guest" name="bookingCnt">
                                        <option value="">1</option>                                       
                                    </select>
                                </div>
                                <div>
									<label for="email">예약자 이름</label>
									<input type="text" id="email" class="form-control" placeholder="이름을 입력하세요">
								</div>
								<div>&nbsp;</div>
								<div>
									<label for="email">예약자 전화번호</label>
									<input type="text" id="email" class="form-control" placeholder="-를 붙여 입력하세요.">
								</div>                               
                                <button type="submit">예약하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->

        <%@ include file="footer.jspf" %>

    <!-- Js Plugins -->
    <script src="resources/client/js/jquery-3.3.1.min.js"></script>
    <script src="resources/client/js/bootstrap2.min.js"></script>
    <script src="resources/client/js/jquery.magnific-popup2.min.js"></script>
    <script src="resources/client/js/jquery.nice-select.min.js"></script>
    <script src="resources/client/js/jquery-ui.min.js"></script>
    <script src="resources/client/js/jquery.slicknav.js"></script>
    <script src="resources/client/js/owl.carousel2.min.js"></script>
    <script src="resources/client/js/main2.js"></script>

    <!-- Flexslider -->
    <script src="resources/client/js/jquery.flexslider-min.js"></script>
    <!-- Owl carousel -->
    <script src="resources/client/js/owl.carousel.min.js"></script>
    <!-- Magnific Popup -->
    <script src="resources/client/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/client/js/magnific-popup-options.js"></script>
    <!-- Date Picker -->
    <script src="resources/client/js/bootstrap-datepicker.js"></script>
    <!-- Stellar Parallax -->
    <script src="resources/client/js/jquery.stellar.min.js"></script>

    <!-- Main -->
    <script src="resources/client/js/main.js"></script>
</body>

</html>