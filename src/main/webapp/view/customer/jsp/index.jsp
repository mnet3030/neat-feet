<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>



<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.imagine.neatfeat.model.dal.entity.Product" %>

<html lang="zxx">

<head>
	<title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Home :: w3layouts</title>
	<!-- custom-theme -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //custom-theme -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/nn.css" rel="stylesheet" type="text/css" media="all" />
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
	<div class="banner_top" id="home">
		<div class="wrapper_top_w3layouts">

			<div class="header_agileits">
				<div class="logo">
					<h1><a class="navbar-brand" href="index.jsp"><span>Neat</span> <i>Feet</i></a></h1>
				</div>

				<div class="overlay overlay-contentpush">
					<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

					<nav>
						<ul>
							<li><a href="index.jsp" class="active">Home</a></li>
							<li><a href="result.jsp" class="active">Men</a></li>
							<li><a href="result.jsp" class="active">Women</a></li>
							<li><a href="result.jsp" class="active">Kids</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/about.html">About</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/contact.html">Contact</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/about.html">Edit Profile</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/contact.html">Logout</a></li>

						</ul>
					</nav>
				</div>
				<div class="mobile-nav-button">
					<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
				</div>
				
				<div class="w3l_login">
					<a href="${pageContext.request.contextPath}/view/customer/html/Login.html" data-toggle="Login.html" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				</div>
				
				<!-- cart details -->

				<div class="top_nav_right">
					<div class="shoecart shoecart2 cart cart box_1">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
						</form>
					</div>

				</div>
				<!-- //cart details -->
				<!-- search -->
				<div class="search_w3ls_agileinfo">
					<div class="cd-main-header">
						<ul class="cd-header-buttons">
							<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
						</ul>
					</div>
					<div id="cd-search" class="cd-search">
						<form action="#" method="post">
							<input name="Search" type="search" placeholder="Click enter after typing...">
						</form>
					</div>
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
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<!-- tittle heading -->
			<!-- //product left -->
			<!-- product right -->
			<div class="left-ads-display col-md-12">
				<div class="wrapper_top_shop">
					<div class="clearfix"></div>
					<!-- product-sec1 -->
					<div class="product-sec1">



						<!-- start of product -->
						<c:forEach items="${sessionScope.allProducts}" var="product" >

						<div class="col-md-4 product-men">
							<div class="product-shoe-info shoe">
								<div class="men-pro-item">
									<div class="men-thumb-item">
										<img src="${pageContext.request.contextPath}/view/customer/html/images/soon.jpg" alt="no image avalible">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="product?productid=${product.id}" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
									</div>
									<div class="item-info-product">
										<h4>
											<a href="product?productid=${product.id}"><c:out value="${product.description}" /></a>
										</h4>
										<div class="info-product-price">
											<div class="grid_meta">
												<div class="product_price">
													<div class="grid-price ">
														<span class="money "><c:out value="${product.price} EGP" /></span>
													</div>
												</div>
												<ul class="stars">
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
												</ul>
											</div>

											<!-- Cart -->
											<div class="shoe single-item hvr-outline-out">
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="productID" value="${product.id}">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="shoe_item" value="${product.description}">
													<input type="hidden" name="amount" value="${product.price}">
													<button type="submit" class="shoe-cart pshoe-cart" onclick="addItemToCart(this)" ><i class="fa fa-cart-plus" aria-hidden="true"></i></button>
													<a href="#" data-toggle="modal" data-target="#myModal1"></a>
												</form>

											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						<!--  end of product -->






						<div class="clearfix"></div>
					</div>

					<!-- //product-sec1 -->
				
				
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<!-- //banner -->
	<!-- /girds_bottom-->
	
	<!-- //grids_bottom-->
	<!-- /girds_bottom2-->
	
	<!-- //grids_bottom2-->
	
	
	<!--//banner -->


	<!-- //newsletter-->
	<!-- footer -->
	<div class="footer_agileinfo_w3">
		<div class="footer_inner_info_w3ls_agileits">
			<div class="col-md-3 footer-left">
				<h2><a href="index.jsp"><span>N</span>eat Feet </a></h2>
				<p>Lorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>
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
							<li><a href="index.jsp">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/about.html">About</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/404.html">Services</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/404.html">Short Codes</a></li>
							<li><a href="${pageContext.request.contextPath}/view/customer/html/contact.html">Contact</a></li>
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
									<p>+1 234 567 8901</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Email Address</h6>
									<p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="address-grid">
								<div class="address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="address-right">
									<h6>Location</h6>
									<p>Broome St, NY 10002,California, USA.

									</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">
						<h4>Flickr <span>Posts</span></h4>
						<ul>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html//images/t4.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="product.jsp"><img src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>

			<p class="copy-right-w3ls-agileits">&copy 2018 Downy Shoes. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
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
		});
	</script>
	<!-- //end-smoth-scrolling -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/bootstrap-3.1.1.min.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/cartdemo.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/addToCart.js"></script>

</body>

</html>