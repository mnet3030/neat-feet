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
    <title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Check Out :: w3layouts</title>
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
    <link href="${htmlFullPath}/css/flextable.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${htmlFullPath}/css/notifi.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${htmlFullPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="${htmlFullPath}/css/shop.css" type="text/css" media="screen" property="" />
    <link href="${htmlFullPath}/css/style7.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="${htmlFullPath}/css/checkout.css">
    <link href="${htmlFullPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="${htmlFullPath}/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>

<body>
<!-- banner -->
<div class="banner_top innerpage" id="home">
    <div class="wrapper_top_w3layouts">
        <div class="header_agileits">
            <div class="logo inner_page_log">
                <h1><a class="navbar-brand" href="index.html"><span>Neat</span> <i>Feat</i></a></h1>
            </div>
            <div class="overlay overlay-contentpush">
                <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

                <nav>
                    <ul>
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="404.html">Team</a></li>
                        <li><a href="shop.html">Shop Now</a></li>
                        <li><a href="contact.html">Contact</a></li>
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
                                <button  class = "userIcon" data-toggle="profile.jsp" data-target="#myModal88"><span class="glyphicon glyphicon-user userIconColor" aria-hidden="true"></span></button>
                            </a>
                        </c:if>
                        <c:if test="${loggedin == null}">
                            <a href="${pageContext.request.contextPath}/login">
                                <button  class = "userIcon" data-toggle="Login.jsp" data-target="#myModal88"><span class="glyphicon glyphicon-user userIconColor" aria-hidden="true"></span></button>
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
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

<!-- //banner -->
<!-- top Products -->
<div class="ads-grid_shop">
    <div class="shop_inner_inf">
        <div class="privacy about">
            <h3>Chec<span>kout</span></h3>

            <div class="checkout-right">
                <h4>Your shopping cart contains: <span>3 Products</span></h4>


                <div class="Rtable Rtable--6cols Rtable--collapse">

                    <div class="Rtable-cell-header" style="width: 5%;">SL No.</div>
                    <div class="Rtable-cell-header" style="width: 38%;">Product</div>
                    <div class="Rtable-cell-header" style="width: 17%;">Quantity</div>
                    <div class="Rtable-cell-header" style="width: 12%;">Product Name</div>
                    <div class="Rtable-cell-header" style="width: 6%;">Price</div>
                    <div class="Rtable-cell-header Rtable-cell--foot" style="width: 7%;">Remove</div>

                </div>


                <c:set var="count" value="0" scope="page" />
                <c:forEach items="${requestScope.products}" var="item" >
                    <c:set var="count" value="${count + 1}" scope="page"/>

                    <div class="Rtable Rtable--6cols Rtable--collapse">

                        <div class="Rtable-cell" style="width: 5%;"><h3><c:out value="${count}" /></h3></div>
                        <div class="Rtable-cell" style="width: 38%;"><a href="product?id=${item.product.id}"><img src="${htmlFullPath}/images/s1.jpg" alt=" " style="height: 20vh;" class="img-responsive"></a></div>
                        <div class="Rtable-cell" style="width: 17%;">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <input type="hidden" name="id" class="productid" value="${item.product.id}">

                                    <div class="entry value-minus" onclick="minus(this)">&nbsp;</div>
                                    <input readonly class="entry value" value="${item.neededQuantity}"  max="${item.product.quantity}">
                                    <div class="entry value-plus active" onclick="pluse(this)">&nbsp;</div>
                                </div>
                            </div>
                        </div>
                        <div class="Rtable-cell" style="width: 12%;">
                            <c:choose>
                                <c:when test="${item.product.quantity!=0 && item.different==false}" >
                                    <div><c:out value="${item.product.description}" /></div>
                                </c:when>
                                <c:when test="${item.product.quantity!=0 && item.different==true}" >
                                    <div><c:out value="${item.product.description}" /></div>
                                    <div style="color: green"><c:out value="${item.product.quantity} only avalible in stock ... " /></div>
                                </c:when>
                                <c:otherwise>
                                    <del><c:out value="${item.product.description}" /></del>
                                    <div style="color: red"><c:out value="*Not avalible in stock ... " /></div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="Rtable-cell" style="width: 6%;">
                            <div class="priceOfUnit"><c:out value="${item.product.price} EGP" /></div>
                            <div class="quantityOfUnit" ><c:out value="* ${item.neededQuantity}" /></div>
                            <div class="totalPriceOfUint" ><c:out value="= ${item.neededQuantity*item.product.price} EGP" /></div>
                        </div>
                        <div class="Rtable-cell Rtable-cell--foot" style="width: 7%;">
                            <div class="rem">
                                <div class="close1" onclick="remove('${item.product.id}')">
                                </div>
                            </div>
                        </div>

                    </div>

                </c:forEach>


                <!--<table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>SL No.</th>
                        <th>Product</th>
                        <th>Quality</th>
                        <th>Product Name</th>

                        <th>Price</th>
                        <th>Remove</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="rem1">
                        <td class="invert">1</td>
                        <td class="invert-image"><a href="single.html"><img src="${htmlFullPath}/images/s1.jpg" alt=" " class="img-responsive"></a></td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span>1</span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">Bella Toes</td>

                        <td class="invert">$675.00</td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close1"> </div>
                            </div>

                        </td>
                    </tr>
                    <tr class="rem2">
                        <td class="invert">2</td>
                        <td class="invert-image"><a href="single.html"><img src="${htmlFullPath}/images/s5.jpg" alt=" " class="img-responsive"></a></td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span>1</span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">Red Bellies</td>

                        <td class="invert">$325.00</td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close2"> </div>
                            </div>

                        </td>
                    </tr>
                    <tr class="rem3">
                        <td class="invert">3</td>
                        <td class="invert-image"><a href="single.html"><img src="${htmlFullPath}/images/s2.jpg" alt=" " class="img-responsive"></a></td>
                        <td class="invert">
                            <div class="quantity">
                                <div class="quantity-select">
                                    <div class="entry value-minus">&nbsp;</div>
                                    <div class="entry value"><span>1</span></div>
                                    <div class="entry value-plus active">&nbsp;</div>
                                </div>
                            </div>
                        </td>
                        <td class="invert">Chikku Loafers</td>

                        <td class="invert">$405.00</td>
                        <td class="invert">
                            <div class="rem">
                                <div class="close3"> </div>
                            </div>

                        </td>
                    </tr>

                    </tbody>
                </table>-->
            </div>
            <div class="checkout-left">
                <div class="col-md-4 checkout-left-basket">
                    <h4>Continue to basket</h4>
                    <ul>
                        <!--<li>Product1 <i>-</i> <span>$675.00 </span></li>
                        <li>Product2 <i>-</i> <span>$325.00 </span></li>
                        <li>Product3 <i>-</i> <span>$405.00 </span></li>
                        <li>Total Service Charges <i>-</i> <span>$55.00</span></li>
                        <li>Total <i>-</i> <span>$1405.00</span></li>-->

                        <li>Total  <i>-</i> <span id="totalprice" ><c:out value="${sessionScope.totalPrice} EGP" /> </span></li>
                        <li>Total Price <i>-</i> <span id="afterAddServices"><c:out value="${sessionScope.totalPrice} EGP" /></span></li>

                    </ul>
                </div>
                <div class="col-md-8 address_form">
                    <h4>Add a new Details</h4>
                    <form action="checkout?action=buy" method="post" class="creditly-card-form agileinfo_form">
                        <section class="creditly-wrapper wrapper">
                            <div class="information-wrapper">
                                <div class="first-row form-group">
                                    <div class="controls">
                                        <label class="control-label">Full name: </label>
                                        <input class="billing-address-name form-control" type="text" name="name" placeholder="Full name">
                                    </div>
                                    <div class="card_number_grids">
                                        <div class="card_number_grid_left">
                                            <div class="controls">
                                                <label class="control-label">Mobile number:</label>
                                                <input class="form-control" type="text" placeholder="Mobile number">
                                            </div>
                                        </div>
                                        <div class="card_number_grid_right">
                                            <div class="controls">
                                                <label class="control-label">Landmark: </label>
                                                <input class="form-control" type="text" placeholder="Landmark">
                                            </div>
                                        </div>
                                        <div class="clear"> </div>
                                    </div>
                                    <div class="controls">
                                        <label class="control-label">Town/City: </label>
                                        <input class="form-control" type="text" placeholder="Town/City">
                                    </div>
                                    <div class="controls">
                                        <label class="control-label">Address type: </label>
                                        <select class="form-control option-w3ls">
                                            <option>Office</option>
                                            <option>Home</option>
                                            <option>Commercial</option>

                                        </select>
                                    </div>
                                </div>
                                <button class="submit check_out">Delivery to this Address</button>
                            </div>
                        </section>
                    </form>
                    <div class="checkout-right-basket">
                        <a href="payment.html">Make a Payment </a>
                    </div>
                </div>

                <div class="clearfix"> </div>


                <div class="clearfix"></div>
            </div>
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
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="item active">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g5.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g6.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                <div class="thumbnail"><img src="${htmlFullPath}/images/g4.jpg" alt="Image" style="max-width:100%;"></div>
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
    <!-- //newsletter-->
    <!-- footer -->
    <div class="footer_agileinfo_w3">
        <div class="footer_inner_info_w3ls_agileits">
            <div class="col-md-3 footer-left">
                <h2><a href="index.html"><span>N</span>eat Feat </a></h2>
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
                            <li><a href="index.html">Home</a></li>
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
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
                            <li><a href="single.html"><img src="${htmlFullPath}/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>

            <p class="copy-right-w3ls-agileits">&copy 2018 Downy Shoes. All rights reserved | Design by <a href="http://w3layouts.com/">w3layouts</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- js -->
<script type="text/javascript" src="${htmlFullPath}/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart-js -->
<!--<script src="${htmlFullPath}/js/minicart.js"></script>-->
<!--<script>
    shoe.render();

    shoe.cart.on('shoe_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {}
        }
    });
</script>-->
<!-- //cart-js -->
<!-- /nav -->
<script src="${htmlFullPath}/js/modernizr-2.6.2.min.js"></script>
<script src="${htmlFullPath}/js/classie.js"></script>
<script src="${htmlFullPath}/js/demo1.js"></script>
<!-- //nav -->
<!--search-bar-->
<script src="${htmlFullPath}/js/search.js"></script>
<!--//search-bar-->
<!--quantity-->
<script>
    $('.value-plus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.val(), 10) + 1;
        if(divUpd.attr("max")>=newVal) {
            divUpd.val(newVal);
            $(this).parents('tr').find('.quantityOfUnit').text(" * " +newVal);
            var price=$(this).parents('tr').find('.priceOfUnit').text().split(" ");
            $(this).parents('tr').find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");
        }

    });

    $('.value-minus').on('click', function () {
        var divUpd = $(this).parent().find('.value'),
            newVal = parseInt(divUpd.val(), 10) - 1;
        if (newVal >= 1) {
            divUpd.val(newVal);
            $(this).parents('tr').find('.quantityOfUnit').text(" * " +newVal)
            var price=$(this).parents('tr').find('.priceOfUnit').text().split(" ");
            $(this).parents('tr').find('.totalPriceOfUint').text("= " +(newVal*price[0])+" EGP");

        }
    });
</script>
<!--quantity-->
<script>
    $(document).ready(function (c) {
        $('.close1').on('click', function (c) {
            $(this).parent().parent().parent().fadeOut('slow', function (c) {
                $(this).remove();
            });
        });
    });
</script>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${htmlFullPath}/js/move-top.js"></script>
<script type="text/javascript" src="${htmlFullPath}/js/easing.js"></script>
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
<script type="text/javascript" src="${htmlFullPath}/js/bootstrap-3.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/checkoutAjax.js"></script>

</body>

</html>