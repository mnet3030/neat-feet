<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/view/customer/html/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/main.css">
	<!--===============================================================================================-->



	<!-- test bar  -->
	<script type="application/x-javascript">
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
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/css/checkout.css">
	<link href="${pageContext.request.contextPath}/view/customer/html/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${pageContext.request.contextPath}/view/customer/html/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		  rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">


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

	<script src="js/search.js"></script>

	<!-- //test bar -->




</head>
<body  style="background-image: url('${pageContext.request.contextPath}/view/customer/html/images/loginBG.jpg');">

 <div class="XXbanner_top XXinnerpage" id="home">
	<div class="wrapper_top_w3layouts">
		<div class="header_agileits">
			<div class="logo inner_page_log">
				<h1><a class="navbar-brand" href="href="${pageContext.request.contextPath}/home"><span>Neat</span> <i>Feet</i></a></h1>
			</div>

			<div class="overlay overlay-contentpush">
				<button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

				<nav>
					<ul>
						<li><a href="${pageContext.request.contextPath}/home" class="active">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/about.jsp" class="active">Men</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/about.jsp" class="active">Women</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/about.jsp" class="active">Kids</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/about.jsp">About</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/contact.jsp">Contact</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/about.jsp">Edit Profile</a></li>
						<li><a href="${pageContext.request.contextPath}/view/customer/html/contact.jsp">Logout</a></li>

					</ul>
				</nav>
			</div>
			<div class="mobile-nav-button">
				<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
			</div>

			<!-- <div class="w3l_login">
				<a href="${pageContext.request.contextPath}/view/customer/html/Login.jsp" data-toggle="Login.html" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
			</div> -->

			<!-- cart details -->
			<!-- <div class="top_nav_right">
                 <div class="shoecart shoecart2 cart cart box_1">
                     <form action="#" method="post" class="last">
                         <input type="hidden" name="cmd" value="_cart">
                         <input type="hidden" name="display" value="1">
                         <button class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                     </form>
                 </div>
             </div> -->

		</div>
	</div>
	<!-- //cart details -->
	<!-- search -->
	<!--
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
    -->
	<!-- //search -->
	<div class="clearfix"></div>
	<!-- /banner_inner -->
	<div class="services-breadcrumb_w3ls_agileinfo">
		<div class="inner_breadcrumb_agileits_w3">

			<ul class="short">
				<li><a href="href="${pageContext.request.contextPath}/home""></a><i></i></li>
				<li></li>
			</ul>
		</div>
	</div>
	<!-- //banner_inner -->
</div>



<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100 p-t-190 p-b-30">
			<form class="login100-form validate-form" action= "${pageContext.request.contextPath}/login" method="post">
				<c:if test="${invalid != null}">
					<div id="errormsg">The email or password is incorrect</div>
				</c:if>
				<div class="wrap-input100 validate-input m-b-10" data-validate = "Email is invalid">
					<input class="input100" type="text" name="email" placeholder="Email"
					<c:if test="${invalid != null}">
						   value="${mail}"
					</c:if>
					>
					<span class="focus-input100"></span>
					<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
				</div>

				<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
					<input class="input100" type="password" name="password" placeholder="Password">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
				</div>

				<div class="container-login100-form-btn p-t-10">
					<button class="login100-form-btn">
						Login
					</button>
				</div>

				<div class="text-center w-full p-t-25 p-b-230">
					<a href="#" class="txt1">
						Forgot Username / Password?
					</a>
					<br><br>
					<a class="txt1" href="Registration">
						Create new account
						<i class="fa fa-long-arrow-right"></i>
					</a>
				</div>

				<div class="text-center w-full">
				</div>
			</form>
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

			for (i = 0, len = items.length; i < len; i++) {alert("ss")}
		}
	});
</script>
<!-- //cart-js -->
<!-- /nav -->
<script src="${pageContext.request.contextPath}/view/customer/html/js/modernizr-2.6.2.min.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/js/demo1.js"></script>
<!-- //nav -->
<!--search-bar-->
<script src="${pageContext.request.contextPath}/view/customer/html/js/search.js"></script>



<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor/bootstrap/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/view/customer/html/js/main.js"></script>

</body>
</html>