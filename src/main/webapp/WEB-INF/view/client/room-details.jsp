<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                                <img src="resources/client/images/room-details.jpg" alt="">
                            </div>
                            <div class="ts-item">
                                <img src="resources/client/images/room-details.jpg" alt="">
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
                            <h2>방이름</h2>
                            <div>
                                <a href="hotel-room.jsp">숙소명</a>
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
                                <h2>159$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p class="f-para">Motorhome or Trailer that is the question for you. Here are some of
                                    the
                                    advantages and disadvantages of both, so you will be confident when purchasing an
                                    RV.
                                    When comparing Rvs, a motorhome or a travel trailer, should you buy a motorhome or
                                    fifth
                                    wheeler? The advantages and disadvantages of both are studied so that you can make
                                    your
                                    choice wisely when purchasing an RV. Possessing a motorhome or fifth wheel is an
                                    achievement of a lifetime. It can be similar to sojourning with your residence as
                                    you
                                    search the various sites of our great land, America.</p>
                                <p>The two commonly known recreational vehicle classes are the motorized and towable.
                                    Towable rvs are the travel trailers and the fifth wheel. The rv travel trailer or
                                    fifth
                                    wheel has the attraction of getting towed by a pickup or a car, thus giving the
                                    adaptability of possessing transportation for you when you are parked at your
                                    campsite.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="room-booking">
                            <h3>Your Reservation</h3>
                            <form action="#">
                                <div class="check-date">
                                    <label for="date-in">체크인:</label>
                                    <input type="text" class="date-input" id="date-in">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="check-date">
                                    <label for="date-out">체크아웃:</label>
                                    <input type="text" class="date-input" id="date-out">
                                    <i class="icon_calendar"></i>
                                </div>
                                <div class="select-option">
                                    <label for="guest">인원:</label>
                                    <select id="guest">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                    </select>
                                </div>
                                <button type="submit"><a href="payment.jsp">예약하기</a></button>
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