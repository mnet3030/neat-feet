<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="htmlFullPath" value="${pageContext.request.contextPath}/view/customer/html" scope="page" />

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<script type="text/javascript" src="${htmlFullPath}/js/jquery-2.1.4.min.js"></script>
	<link rel="icon" type="image/png" href="${htmlFullPath}/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/main.css">
	<!--===============================================================================================-->



	<!-- test bar  -->
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
	<link href="${htmlFullPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${htmlFullPath}/css/shop.css" type="text/css" media="screen" property="" />
	<link href="${htmlFullPath}/css/style7.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Owl-carousel-CSS -->
	<link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/checkout.css">
	<link href="${htmlFullPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="${htmlFullPath}/css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
		  rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

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

</head>
<body  style="background-image: url('${htmlFullPath}/images/loginBG.jpg');background-size: cover;overflow: hidden;">

 <div class="XXbanner_top XXinnerpage" id="home">
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

					</ul>
				</nav>
			</div>
			<div class="mobile-nav-button">
				<button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
			</div>


		</div>
	</div>

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
				<div class="wrap-input100 validate-input m-b-10" data-validate = "Email is required">
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
					<a class="txt1" href="register">
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

<!-- /nav -->
<script src="${htmlFullPath}/js/modernizr-2.6.2.min.js"></script>
<script src="${htmlFullPath}/js/classie.js"></script>
<script src="${htmlFullPath}/js/demo1.js"></script>
<!-- //nav -->


<script src="${htmlFullPath}/css/vendor/bootstrap/js/popper.js"></script>
<script src="${htmlFullPath}/css/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${htmlFullPath}/js/main.js"></script>

</body>
</html>