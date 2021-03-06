<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Shop</title>
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
	<link href="${pageContext.request.contextPath}/view/customer/html/css/notifi.css" rel="stylesheet" type="text/css" media="all" />
	<link href="${pageContext.request.contextPath}/view/customer/html/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/customer/html/css/shop.css" type="text/css" media="screen" property="" />
	<link href="${pageContext.request.contextPath}/view/customer/html/css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/jquery-ui1.css">
	<link href="${pageContext.request.contextPath}/view/customer/html/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/font-awesome.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/view/customer/html/css/simplePagination.css" rel="stylesheet"/>
	<!-- //font-awesome-icons -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		  rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>

<c:if test="${requestScope.loggedIn == true}">
	<a href="${pageContext.request.contextPath}/profile" class="helloNonHome" style="color:white;">Hello, ${requestScope.user.name}</a>
</c:if>
<!-- banner -->
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
		<!-- tittle heading -->

		<!-- //tittle heading -->
		<!-- product left -->
		<div class="side-bar col-md-3">
			<div class="search-hotel">
				<h3 class="agileits-sear-head">Search Here..</h3>
				<!--Edited By Mahmoud Shereif-->
				<form action="#" method="post" id="left-search-form">
					<input type="search" placeholder="Product name..." name="search" required="" id="leftSearch">
					<button type="submit" value=" " id="leftSearchBtn"/>
				</form>
			</div>
			<!-- price range -->
			<div class="range">
				<h3 class="agileits-sear-head">Price range</h3>
				<ul class="dropdown-menu6">
					<li>

						<div id="slider-range"></div>
						<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
					</li>
				</ul>
			</div>
			<!-- //price range -->

			<!--Added By Mahmoud Shereif-->
			<c:if test="${requestScope.categoryDetails != null}">
				<div class="left-side">
					<h3 class="agileits-sear-head">Categories</h3>

					<ul>
						<c:forEach items="${requestScope.categoryDetails['ancestors']}" var="mainCategory">
							<li>
								<a href = "${pageContext.request.contextPath}${"/result?cat="}${mainCategory.id}">&lt; ${mainCategory.description}</a>
							</li>
						</c:forEach>
						<li>
							<p style="padding-left: 15px">${requestScope.categoryDetails['neededCategory'].description}</p>
						</li>
						<c:forEach items="${requestScope.categoryDetails['childs']}" var="subCategory">
							<li>
								<a style="padding-left: 25px" href = "${pageContext.request.contextPath}${"/result?cat="}${subCategory.id}">${subCategory.description}</a>
							</li>
						</c:forEach>
					</ul>

				</div>
			</c:if>

			<!--preference -->
			<div class="left-side">
				<h3 class="agileits-sear-head">Occasion</h3>
				<ul>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">Casuals</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">Party</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">Wedding</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">Ethnic</span>
					</li>
				</ul>
			</div>
			<!-- // preference -->
			<!-- discounts -->
			<div class="left-side">
				<h3 class="agileits-sear-head">Discount</h3>
				<ul>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">5% or More</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">10% or More</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">20% or More</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">30% or More</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">50% or More</span>
					</li>
					<li>
						<input type="checkbox" class="checked">
						<span class="span">60% or More</span>
					</li>
				</ul>
			</div>
			<!-- //discounts -->
			<!-- reviews -->
			<div class="customer-rev left-side">
				<h3 class="agileits-sear-head">Customer Review</h3>
				<ul>
					<li>
						<a href="#">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<span>5.0</span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<span>4.0</span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star-half-o" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<span>3.5</span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<span>3.0</span>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star-half-o" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<i class="fa fa-star-o" aria-hidden="true"></i>
							<span>2.5</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //reviews -->
			<!-- deals -->
			<div class="deal-leftmk left-side">
				<h3 class="agileits-sear-head">Special Deals</h3>

				<c:if test="${requestScope.allProducts != null}">
					<c:forEach begin="0" end="3" var="productsMap" items="${requestScope.allProducts}" >
						<div class="special-sec1">
							<div class="col-xs-4 img-deals">
								<img src="${pageContext.request.contextPath}/ProductImages/${productsMap.id}.png" alt="" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.png'">
							</div>
							<div class="col-xs-8 img-deal1">
								<h3>${productsMap.description}</h3>
								<a href="${pageContext.request.contextPath}/product?id=${productsMap.id}">EGP${productsMap.price}</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</c:forEach>
				</c:if>

			</div>
			<!-- //deals -->

		</div>
		<!-- //product left -->
		<!-- product right -->
		<div class="left-ads-display col-md-9">
			<div class="wrapper_top_shop">
				<div class="col-md-6 shop_left">
					<img src="${pageContext.request.contextPath}/view/customer/html/images/banner3.jpg" alt="">
					<h6>40% off</h6>
				</div>
				<div class="col-md-6 shop_right">
					<img src="${pageContext.request.contextPath}/view/customer/html/images/banner2.jpg" alt="">
					<h6>50% off</h6>
				</div>
				<div class="clearfix"></div>
				<!-- product-sec1 -->
				<div class="product-sec1">
					<!--/mens-->
					<c:if test="${requestScope.products != null}">
						<c:forEach items="${requestScope.products}" var="productsMap">
							<div class="col-md-4 product-men">
								<div class="product-shoe-info shoe">
									<div class="men-pro-item">
										<div class="men-thumb-item">
											<img src="${pageContext.request.contextPath}/ProductImages/${productsMap.key.id}.png" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.png'" alt="pro">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="${pageContext.request.contextPath}/product?id=${productsMap.key.id}" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
										</div>
										<div class="item-info-product">
											<h4>
												<a href="${pageContext.request.contextPath}/product?id=${productsMap.key.id}">${productsMap.key.getDescription()}</a>
											</h4>
											<div class="info-product-price">
												<div class="grid_meta">
													<div class="product_price">
														<div class="grid-price ">
															<span class="money ">EGP${productsMap.key.getPrice()}</span>
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
												<div class="shoe single-item hvr-outline-out">
													<!--<form action="#" method="post">-->
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="productID" value="${productsMap.key.id}">
													<input type="hidden" name="add" value="1">
													<input type="hidden" name="shoe_item" value="Bella Toes">
													<input type="hidden" name="amount" value="675.00">
													<c:if test="${productsMap.value == false}">
														<button type="submit" class="shoe-cart pshoe-cart" onclick="addItemToCart(this)"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>
													</c:if>
													<c:if test="${productsMap.value == true}">
														<i class="fa fa-check-circle fa-2x" aria-hidden="true" style="color: limegreen"></i>
													</c:if>
													<a href="#" data-toggle="modal" data-target="#myModal1"></a>
													<!--</form>-->

												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<c:if test="${requestScope.products == null || requestScope.products.size() == 0}">
							<h3>No products match your search</h3>
						</c:if>


						<div class="clearfix"></div>

						<br>
						<div id="pagination-container" style="text-align: center;">
						</div>
					</c:if>

				</div>

				<!-- //product-sec1 -->
				<div class="col-md-6 shop_left shp">
					<img src="${pageContext.request.contextPath}/view/customer/html/images/banner4.jpg" alt="">
					<h6>21% off</h6>
				</div>
				<div class="col-md-6 shop_right shp">
					<img src="${pageContext.request.contextPath}/view/customer/html/images/banner1.jpg" alt="">
					<h6>31% off</h6>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //top products -->
<div class="mid_slider_w3lsagile">
	<div class="col-md-3 mid_slider_text">
		<h5>Some More Shoes</h5>
	</div>
	<div class="col-md-9 mid_slider_info">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
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
				<div class="item active">
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
<!-- /newsletter-->
<!--Commented By Mahmoud Shereif-->
<!--<div class="newsletter_w3layouts_agile">
	<div class="col-sm-6 newsleft">
		<h3>Sign up for Newsletter !</h3>
	</div>
	<div class="col-sm-6 newsright">
		<form action="#" method="post">
			<input type="email" placeholder="Enter your email..." name="email" required="">
			<input type="submit" value="Submit">
		</form>
	</div>

	<div class="clearfix"></div>
</div>-->
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
<!--Commented By Mahmoud Shereif-->
<!--<script src="${pageContext.request.contextPath}/view/customer/html/js/minicart.js"></script>-->
<script>
	<!--Commented By Mahmoud Shereif-->
	/*shoe.render();

	shoe.cart.on('shoe_checkout', function (evt) {
		var items, len, i;

		if (this.subtotal() > 0) {
			items = this.items();

			for (i = 0, len = items.length; i < len; i++) {}
		}
	});*/
</script>
<!-- //cart-js -->
<!-- /nav -->
<script src="${pageContext.request.contextPath}/view/customer/html/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/demo1.js"></script>
<!-- //nav -->
<!--search-bar-->
<script src="${pageContext.request.contextPath}/view/customer/html/js/search.js"></script>
<!--//search-bar-->
<!-- price range (top products) -->
<script src="${pageContext.request.contextPath}/view/customer/html/js/jquery-ui.js"></script>
<script>
	//<![CDATA[
	$(window).load(function () {
		$("#slider-range").slider({
			range: true,
			min: 0,
			max: 9000,
			values: [50, 6000],
			slide: function (event, ui) {
				$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
			}
		});
		$("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

	}); //]]>
</script>
<!-- //price range (top products) -->

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
		<c:if test="${requestScope.noOfPages != null && requestScope.noOfPages > 0}">
		$('#pagination-container').pagination({
			pages:${requestScope.noOfPages},
			displayedPages:8,
			cssStyle: 'light-theme',
			ellipsePageSet:true,
			currentPage:${requestScope.pageNo},
			hrefTextPrefix:'',
			selectOnClick:false,
			onPageClick:function(pageNumber, event){
				if(event != undefined) {
					event.preventDefault();
				}
				if (window.location.href.indexOf('&pageNo=') !== -1) {
					window.location.href = window.location.href.replace(new RegExp('pageNo=[0-9]+'), 'pageNo=' + pageNumber);
				} else {
					window.location.href = window.location.href + '&pageNo=' + pageNumber;
				}

			}
		});
		</c:if>



	});
</script>
<!-- //end-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/bootstrap-3.1.1.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/jquery.simplePagination.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/paginationScript.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/addToCart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/result.js"></script>

<!--<script src="${pageContext.request.contextPath}/view/customer/html/js/carouselengine/jquery.js"></script>-->

</body>

</html>