<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="zxx">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //custom-theme -->
    <link href="${pageContext.request.contextPath}/view/customer/html/css/notifi.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="${pageContext.request.contextPath}/view/customer/html/css/nn.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="${pageContext.request.contextPath}/view/customer/html/css/bootstrap.css" rel="stylesheet"
          type="text/css" media="all"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/customer/html/css/shop.css" type="text/css"
          media="screen" property=""/>
    <link href="${pageContext.request.contextPath}/view/customer/html/css/style7.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="${pageContext.request.contextPath}/view/customer/html/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!-- font-awesome-icons -->
    <link href="${pageContext.request.contextPath}/view/customer/html/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/customer/html/js/profilescript.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script>
        var appContext = "${pageContext.request.contextPath}";
    </script>
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
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-sm-10"><h1> ${user.getName()}</h1></div>
    </div>
    <form class="form" style="    margin-top: 60px;"
            <c:if test="${editProfile == 'false'}">
                action="${pageContext.request.contextPath}/profile"
            </c:if>
            <c:if test="${editProfile == 'true'}">
                action="${pageContext.request.contextPath}/saveProfile"
            </c:if>
          method="post" id="registrationForm" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-3"><!--left col-->
                <div class="text-center">
                    <c:if test="${user.getPhotoUrl() == null}">
                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
                             class="avatar img-circle img-thumbnail" alt="avatar">
                    </c:if>
                    <c:if test="${user.getPhotoUrl() != null}">
                        <img src="${pageContext.request.contextPath}/NewUserIamges/${user.getPhotoUrl()}"
                             class="avatar img-circle img-thumbnail" alt="avatar">
                    </c:if>
                    <c:if test="${editProfile == 'true'}">
                        <h6>Upload a different photo...</h6>
                        <input type="file" name="image" id="image" accept=".jpg,.png,.svg"
                               class="form-control text-center center-block file-upload">
                    </c:if>
                </div>
                </hr><br>
            </div><!--/col-3-->
            <div class="col-sm-9">
                <div class="tab-content">
                    <div class="tab-pane active" id="home1">
                        <hr>
                        <!--===============================================================================================================-->
                        <!--===============================================================================================================-->
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="name"><h4>Name</h4></label>
                                <input type="text" class="form-control" name="name" id="name"
                                       value="${user.getName()}"
                                <c:if test="${editProfile == 'false'}">
                                       disabled="true"
                                </c:if>
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="email"><h4>Email</h4></label>
                                <input type="text" class="form-control" name="email" id="email"
                                       value="${user.getEmail()}"
                                       disabled="true"
                                >
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="phone"><h4>Phone</h4></label>
                                <input type="number" class="form-control" name="phone" id="phone"
                                       value="${user.getPhone()}"
                                <c:if test="${editProfile == 'false'}">
                                       disabled="true"
                                </c:if>
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="creditLimit"><h4>Credit Limit</h4></label>
                                <input type="text" class="form-control" name="creditLimit" id="creditLimit"
                                       value="${user.getCreditLimit()}"
                                <c:if test="${editProfile == 'false'}">
                                       disabled="true"
                                </c:if>
                                >
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="address"><h4>Address</h4></label>
                                <input type="text" class="form-control" id="address" name="address"
                                       value="${user.getAddress()}"
                                <c:if test="${editProfile == 'false'}">
                                       disabled="true"
                                </c:if>
                                >
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="job"><h4>Job</h4></label>
                                <input type="text" class="form-control" id="job" name="job"
                                       value="${user.getJob()}"
                                <c:if test="${editProfile == 'false'}">
                                       disabled="true"
                                </c:if>
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <c:if test="${editProfile == 'false'}">
                                    <button class="btn btn-lg btn-success" type="submit"><i
                                            class="glyphicon glyphicon-pencil"></i> Edit
                                    </button>
                                </c:if>
                                <c:if test="${editProfile == 'true'}">
                                    <button class="btn btn-lg btn-success" type="submit"><i
                                            class="glyphicon glyphicon-ok-sign"></i> Save
                                    </button>
                                    <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>
                                        Reset
                                    </button>
                                </c:if>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div><!--/tab-pane-->
<div class="tab-pane" id="messages">

    <h2></h2>


</div><!--/tab-pane-->
<div class="tab-pane" id="settings">
    <hr>
</div>

</div><!--/tab-pane-->
</div><!--/tab-content-->

</div><!--/col-9-->
</div><!--/row-->


<!-- footer -->
<div class="footer_agileinfo_w3" style="margin-top: 80px;">
    <div class="footer_inner_info_w3ls_agileits">
        <div class="col-md-3 footer-left">
            <h2><a href="${pageContext.request.contextPath}/home"><span>N</span>eat Feet </a></h2>
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
                    <h4>Our <span>Information</span></h4>
                    <ul>
                        <li><a href="../jsp/index.jsp">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="404.html">Services</a></li>
                        <li><a href="404.html">Short Codes</a></li>
                        <li><a href="contact.html">Contact</a></li>
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
                            <div class="clearfix"></div>
                        </div>
                        <div class="address-grid">
                            <div class="address-left">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <div class="address-right">
                                <h6>Email Address</h6>
                                <p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
                            </div>
                            <div class="clearfix"></div>
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
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 sign-gd flickr-post">
                    <h4>Flickr <span>Posts</span></h4>
                    <ul>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t1.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t3.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t2.jpg" alt=" "
                                class="img-responsive"/></a></li>
                        <li><a href="single.html"><img
                                src="${pageContext.request.contextPath}/view/customer/html/images/t4.jpg" alt=" "
                                class="img-responsive"/></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>

        <p class="copy-right-w3ls-agileits">&copy 2018 Downy Shoes. All rights reserved | Design by <a
                href="http://w3layouts.com/">w3layouts</a></p>
    </div>
</div>
</div>
<!-- //footer -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    shoe.render();

    shoe.cart.on('shoe_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
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