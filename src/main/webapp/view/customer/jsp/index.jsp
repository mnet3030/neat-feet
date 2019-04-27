<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="htmlFullPath" value="${pageContext.request.contextPath}/view/customer/html" scope="page" />

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Home</title>
	<!-- custom-theme -->
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
	<link href="${htmlFullPath}/css/notifi.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${htmlFullPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${htmlFullPath}/css/shop.css" type="text/css" media="screen" property="" />
	<link href="${htmlFullPath}/css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${htmlFullPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		  rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</head>

<body style="background-color: #EAEDED">
<!-- banner -->
<div class="banner_top" id="home">
	<div class="wrapper_top_w3layouts">

		<div class="header_agileits">
			<div class="logo">
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
					<c:if test="${requestScope.loggedIn == true}">
						<a href="${pageContext.request.contextPath}/profile" class="hello" style="color:white;">Hello, ${requestScope.user.name}</a>
					</c:if>
					<ul class="cd-header-buttons4">

						<c:if test="${requestScope.loggedIn == true}">
							<a href="${pageContext.request.contextPath}/profile">
								<button  class = "userIcon"><span class="glyphicon glyphicon-user userIconColorLogged" aria-hidden="true"></span></button>
							</a>
						</c:if>
						<c:if test="${requestScope.loggedIn == false}">
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
		</div>
		<!-- /slider -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">

					<li>
						<div class="banner-top2">
							<div class="banner-info-wthree">
								<h3>Nike</h3>
								<p>See how good they feel.</p>

							</div>

						</div>
					</li>
					<li>
						<div class="banner-top3">
							<div class="banner-info-wthree">
								<h3>Heels</h3>
								<p>For All Walks of Life.</p>

							</div>

						</div>
					</li>
					<li>
						<div class="banner-top">
							<div class="banner-info-wthree">
								<h3>Sneakers</h3>
								<p>See how good they feel.</p>

							</div>

						</div>
					</li>
					<li>
						<div class="banner-top1">
							<div class="banner-info-wthree">
								<h3>Adidas</h3>
								<p>For All Walks of Life.</p>

							</div>

						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //slider -->
		<ul class="top_icons">
			<li><a href="#"><span class="fa fa-facebook" aria-hidden="true"></span></a></li>
			<li><a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a></li>
			<li><a href="#"><span class="fa fa-linkedin" aria-hidden="true"></span></a></li>
			<li><a href="#"><span class="fa fa-google-plus" aria-hidden="true"></span></a></li>

		</ul>
	</div>
</div>

<div style="margin:0px auto;">

	<!-- Insert to your webpage where you want to display the carousel -->

	<div class="amazingcarousel-container">
		<div class="amazingcarousel" style="display:none;position:relative;width:100%;max-width:1320px;margin:0px auto 0px;">
			<div class="amazingcarousel-list-container">
				<h4>Most popular products</h4>
				<br/>
				<ul class="amazingcarousel-list">
					<c:forEach items="${requestScope.mostVisitedMap}" var="most" >
						<li class="amazingcarousel-item">
							<div class="amazingcarousel-item-container">
								<a href="${pageContext.request.contextPath}/product?id=${most.key.id}">
									<div class="amazingcarousel-image"><img src="${pageContext.request.contextPath}/ProductImages/${most.key.id}.png" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.png'" alt="3" /></div>
									<div class="amazingcarousel-title"><c:out value="${most.key.description}" /> </div>
								</a>
							</div>
						</li>
					</c:forEach>

				</ul>
				<div class="amazingcarousel-prev"></div>
				<div class="amazingcarousel-next"></div>
			</div>
			<div class="amazingcarousel-nav"></div>
		</div>
	</div>
	<!-- End of body section HTML codes -->

</div>

<div style="margin:0px auto;">

	<!-- Insert to your webpage where you want to display the carousel -->

	<div class="amazingcarousel-container">
		<div class="amazingcarousel" style="display:none;position:relative;width:100%;max-width:1320px;margin:0px auto 0px;">
			<div class="amazingcarousel-list-container">
				<h4>Best sold products</h4>
				<br/>
				<ul class="amazingcarousel-list">
					<c:forEach items="${requestScope.bestSoldMap}" var="theBest" >
						<li class="amazingcarousel-item">
							<div class="amazingcarousel-item-container">
								<a href="${pageContext.request.contextPath}/product?id=${theBest.key.id}">
									<div class="amazingcarousel-image"><img src="${pageContext.request.contextPath}/ProductImages/${theBest.key.id}.png" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.png'" alt="3" /></div>
									<div class="amazingcarousel-title"><c:out value="${theBest.key.getDescription()}" /> </div>
								</a>
							</div>
						</li>
					</c:forEach>
				</ul>
				<div class="amazingcarousel-prev"></div>
				<div class="amazingcarousel-next"></div>
			</div>
			<div class="amazingcarousel-nav"></div>
		</div>
	</div>
	<!-- End of body section HTML codes -->

</div>
<c:forEach items="${requestScope.categoryProducts}" var="category" >
	<div style="margin:0px auto;">

		<!-- Insert to your webpage where you want to display the carousel -->

		<div class="amazingcarousel-container">
			<div class="amazingcarousel" style="display:none;position:relative;width:100%;max-width:1320px;margin:0px auto 0px;">
				<div class="amazingcarousel-list-container">
					<h4>${category.key}</h4>
					<br/>
					<ul class="amazingcarousel-list">
						<c:forEach items="${category.value}" var="productsMap">
							<li class="amazingcarousel-item">
								<div class="amazingcarousel-item-container">
									<a href="${pageContext.request.contextPath}/product?id=${productsMap.id}">
										<div class="amazingcarousel-image"><img src="${pageContext.request.contextPath}/ProductImages/${productsMap.id}.png"  onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.png'" alt="${productsMap.description}"/></div>
										<div class="amazingcarousel-title"><c:out value="${productsMap.description}" /></div>
									</a>
								</div>
							</li>
						</c:forEach>
					</ul>
					<div class="amazingcarousel-prev"></div>
					<div class="amazingcarousel-next"></div>
				</div>
				<div class="amazingcarousel-nav"></div>
			</div>
		</div>
		<!-- End of body section HTML codes -->

	</div>
</c:forEach>
<!-- End of body section HTML codes -->

<!-- /Properties -->
<div class="mid_slider_w3lsagile">
	<div class="col-md-3 mid_slider_text">
		<h5>Some More Shoes</h5>
	</div>
	<div class="col-md-9 mid_slider_info">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g5.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g6.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="row">
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
						<div class="col-md-3 col-sm-3 col-xs-3 slidering">
							<div class="thumbnail"><img src="${pageContext.request.contextPath}/view/customer/html/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="fa fa-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="fa fa-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			<!-- The Modal -->

		</div>
	</div>

	<div class="clearfix"> </div>
</div>



<!--//banner -->



<!-- /newsletter-->

<!-- //newsletter-->
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
						<li><a href="https://www.linkedin.com/in/amrelkady/" target="_blank"><img src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
						<li><a href="single.html" target="_blank"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
						<li><a href="https://www.linkedin.com/in/aliahmahmoud/" target="_blank"><img src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
						<li><a href="https://www.linkedin.com/in/amer-salah-4032a9102/" target="_blank"><img src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
						<li><a href="https://www.linkedin.com/in/nouran-habib-b5aa7911b/" target="_blank"><img src="${pageContext.request.contextPath}/view/customer/html/images/t5.jpg" alt=" " class="img-responsive" /></a></li>

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
<!-- /nav -->
<script src="${pageContext.request.contextPath}/view/customer/html/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/demo1.js"></script>
<!-- //nav -->
<!-- cart-js -->
<!--<script src="${pageContext.request.contextPath}/view/customer/html/js/minicart.js"></script>-->

<!--search-bar-->

<script src="${pageContext.request.contextPath}/view/customer/html/js/search.js"></script>
<!--//search-bar-->
<script src="${pageContext.request.contextPath}/view/customer/html/js/responsiveslides.min.js"></script>
<script>
	$(function () {
		$("#slider4").responsiveSlides({
			auto: true,
			pager: true,
			nav: true,
			speed: 1000,
			namespace: "callbacks",
			before: function () {
				$('.events').append("<li>before event fired.</li>");
			},
			after: function () {
				$('.events').append("<li>after event fired.</li>");
			}
		});
	});
</script>
<!-- js for portfolio lightbox -->
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
		<c:if test="${requestScope.fromLogin != null}">
			const Toast = swal.mixin({
				toast: true,
				position: 'top',
				showConfirmButton: false,
				timer: 3000
			});

			Toast.fire({
				type: 'success',
				title: 'Signed in successfully'
			});
		</c:if>


	});
</script>
<!-- //end-smoth-scrolling -->

<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/bootstrap-3.1.1.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/addToCart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/result.js"></script>

<!--<script src="${pageContext.request.contextPath}/view/customer/html/js/carouselengine/jquery.js"></script>-->
<script src="${pageContext.request.contextPath}/view/customer/html/carousel/carouselengine/amazingcarousel.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/carousel/carouselengine/initcarousel.css">
<script src="${pageContext.request.contextPath}/view/customer/html/carousel/carouselengine/initcarousel.js"></script>


</body>

</html>