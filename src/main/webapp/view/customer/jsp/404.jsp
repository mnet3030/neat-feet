<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>404</title>
	<link href="${pageContext.request.contextPath}/view/customer/html/css/notifi.css" rel="stylesheet" type="text/css" media="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		var appContext = "${pageContext.request.contextPath}";
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/customer/html/css/shop.css" type="text/css" media="screen" property="" />
	<link href="${pageContext.request.contextPath}/view/customer/html/css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath}/view/customer/html/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
	<!-- banner -->
	<c:if test="${requestScope.loggedIn == true}">
		<a href="${pageContext.request.contextPath}/profile" class="helloNonHome" style="color:white;">Hello, ${requestScope.user.name}</a>
	</c:if>
	<div class="banner_top innerpage" id="home">
		<div class="wrapper_top_w3layouts">
			<div class="header_agileits">
				<div class="logo inner_page_log">
					<h1><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><span>Neat</span> <i>Feet</i></a></h1>
				</div>
				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="${pageContext.request.contextPath}/home">Home</a><i></i></li>
							<c:if test="${requestScope.mainCategories != null}">
								<c:forEach items="${requestScope.mainCategories}" var="mainCategory">
									<li>
										<a href = "${pageContext.request.contextPath}/result?cat=${mainCategory.id}">${mainCategory.description}</a>
									</li>
								</c:forEach>
							</c:if>
							<li><a href="${pageContext.request.contextPath}/about">About</a></li>
							<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
							<c:if test="${requestScope.loggedIn == true}">
								<li><a href="${pageContext.request.contextPath}/profile">Edit Profile</a></li>
								<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
							</c:if>

						</ul>
					</nav>
				</div>

				<!--Added By Mahmoud Shereif*/-->
				<div class="search_w3ls_agileinfo">
					<div class="cd-main-header">
						<ul class="cd-header-buttons3">
							<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
						</ul>
					</div>
				</div>

				<div class="search_w3ls_agileinfo">
					<div class="cd-main-header">
						<ul class="cd-header-buttons4">

							<c:if test="${loggedin != null}">
								<a href="${pageContext.request.contextPath}/showProfile">
									<button  class = "userIcon" ><span class="glyphicon glyphicon-user userIconColor" aria-hidden="true"></span></button>
								</a>
							</c:if>
							<c:if test="${loggedin == null}">
								<a href="${pageContext.request.contextPath}/login">
									<button  class = "userIcon"><span class="glyphicon glyphicon-user userIconColor" aria-hidden="true"></span></button>
								</a>
							</c:if>
						</ul>
					</div>
				</div>

				<!-- cart details -->

				<div class="search_w3ls_agileinfo">
					<div class="cd-main-header">
						<ul class="cd-header-buttons1">
							<a href="checkout" class="notification">
								<button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
								<span class="badge"><c:out value="${sessionScope.sizeCart}"></c:out></span>
							</a>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- //cart details -->

		<!-- search -->
		<div class="search_w3ls_agileinfo">
			<div class="cd-main-header">
				<ul class="cd-header-buttons2">
					<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
				</ul>
			</div>
			<form action="#" method="post" id="main-search-form">
				<div id="cd-search" class="cd-search">
					<input name="search" type="text" id="search" placeholder="Click enter after typing..." required>
					<button type="submit" style="visibility: hidden" id="mainSearchBtn"/>
				</div>
			</form>
		</div>
		<!-- //search -->

		<div class="clearfix"></div>
		<!-- /banner_inner -->
		<div class="services-breadcrumb_w3ls_agileinfo">
			<div class="inner_breadcrumb_agileits_w3">
				<ul class="short">
					<li><a href="${pageContext.request.contextPath}/home">Home</a><i>|</i></li>
					<c:if test="${requestScope.mainCategories != null}">
						<c:forEach items="${requestScope.mainCategories}" var="mainCategory">
							<li>
								<a href = "${pageContext.request.contextPath}/result?cat=${mainCategory.id}">${mainCategory.description}</a><i>|</i>
							</li>
						</c:forEach>
					</c:if>

					<!--<li>Shop</li>-->
				</ul>
			</div>
		</div>
		<!-- //banner_inner -->
	</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="error_page">
				<h4>404</h4>
				<p>This link dead link</p>
				<form action="#" method="post">
					<input class="serch" type="search" name="serch" placeholder="Search here" required="">
					<button class="btn1"><i class="fa fa-search" aria-hidden="true"></i></button>
					<div class="clearfix"> </div>
				</form>
				<ul class="social-nav model-3d-0 footer-social social two">
					<li>
						<a href="#" class="facebook">
							<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="twitter">
							<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="instagram">
							<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
						</a>
					</li>

				</ul>
				<a class="b-home" href="${pageContext.request.contextPath}/home">Back to Home</a>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer_agileinfo_w3">
		<div class="footer_inner_info_w3ls_agileits">
			<div class="col-md-3 footer-left">
				<h2><a href="index.html"><span>N</span>eat Feat </a></h2>
				<p>Best online Store.</p>
				<ul class="social-nav model-3d-0 footer-social social two">
					<li>
						<a href="#" class="facebook">
							<div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="twitter">
							<div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="instagram">
							<div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="pinterest">
							<div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
							<div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
						</a>
					</li>
				</ul>
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="col-md-4 sign-gd">
						<h4>Our <span>Information</span> </h4>
						<ul>
							<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/about">About</a></li>
							<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
						</ul>
					</div>

					<div class="col-md-5 sign-gd-two">
						<h4>Store <span>Information</span></h4>
						<div class="address">
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Phone Number</h6>
									<p>+20 111 753 8430</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Email Address</h6>
									<p>Email :<a href="mailto:example@email.com"> mail@neatfeat.com</a></p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Location</h6>
									<p>Smart Viallage , EGY.

									</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">
						<h4>Flickr <span>Posts</span></h4>
						<ul>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>

			<p class="copy-right-w3ls-agileits">&copy 2018 ITI | Design by <a href="http://w3layouts.com/">Java Track</a></p>
		</div>
	</div>
	</div>
	<!-- //footer -->
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="${pageContext.request.contextPath}/view/customer/html/js/minicart.js"></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- /nav -->
	<script src="${pageContext.request.contextPath}/view/customer/html/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/view/customer/html/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/view/customer/html/js/demo1.js"></script>
	<!-- //nav -->
	<!-- script for responsive tabs -->
	<script src="${pageContext.request.contextPath}/view/customer/html/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>


	<!--search-bar-->
	<script src="${pageContext.request.contextPath}/view/customer/html/js/search.js"></script>
	<!--//search-bar-->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/bootstrap-3.1.1.min.js"></script>


</body>

</html>