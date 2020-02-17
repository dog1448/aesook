<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<%@ include file="head.jspf" %>
	<!-- Google Map -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
		<script src="resources/client/js/google_map.js"></script>
</head>

<body>

	<div class="colorlib-loader"> </div>

	<div id="page">
		<%@ include file="main_header.jspf" %>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>
		<div>&nbsp;</div>

		<div class="container">
			<h3 class=" text-center">Messaging</h3>
			<div class="messaging">
				  <div class="inbox_msg">
					<div class="inbox_people">
					  <div class="headind_srch">
						<div class="recent_heading">
						  <h4>Recent</h4>
						</div>
						<div class="srch_bar">
						  <div class="stylish-input-group">
							<input type="text" class="search-bar"  placeholder="Search" >							
							<button type="button" class="btn-default"> <i class="fa fa-search" aria-hidden="true"></i> </button>							
						 </div>
						</div>
					  </div>
					  <div class="inbox_chat">
						<div class="chat_list active_chat">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
						<div class="chat_list">
						  <div class="chat_people">
							<div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
							<div class="chat_ib">
							  <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
							  <p>Test, which is a new approach to have all solutions 
								astrology under one roof.</p>
							</div>
						  </div>
						</div>
					  </div>
					</div>
					<div class="mesgs">
					  <div class="msg_history">
						<div class="incoming_msg">
						  <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						  <div class="received_msg">
							<div class="received_withd_msg">
							  <p>Test which is a new approach to have all
								solutions</p>
							  <span class="time_date"> 11:01 AM    |    June 9</span></div>
						  </div>
						</div>
						<div class="outgoing_msg">
						  <div class="sent_msg">
							<p>Test which is a new approach to have all
							  solutions</p>
							<span class="time_date"> 11:01 AM    |    June 9</span> </div>
						</div>
						<div class="incoming_msg">
						  <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						  <div class="received_msg">
							<div class="received_withd_msg">
							  <p>Test, which is a new approach to have</p>
							  <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
						  </div>
						</div>
						<div class="outgoing_msg">
						  <div class="sent_msg">
							<p>Apollo University, Delhi, India Test</p>
							<span class="time_date"> 11:01 AM    |    Today</span> </div>
						</div>
						<div class="incoming_msg">
						  <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						  <div class="received_msg">
							<div class="received_withd_msg">
							  <p>We work directly with our designers and suppliers,
								and sell direct to you, which means quality, exclusive
								products, at a price anyone can afford.</p>
							  <span class="time_date"> 11:01 AM    |    Today</span></div>
						  </div>
						</div>
					  </div>
					  <div class="type_msg">
						<div class="input_msg_write">
						  <input type="text" class="write_msg" placeholder="Type a message" />
						  <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
						</div>
					  </div>
					</div>
				  </div>
				
				  
				</div></div>

			<%@ include file="footer.jspf" %>
		</div>

		<div class="gototop js-top">
			<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
		</div>


</body>

</html>