<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- LINEARICONS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/customer/html/fonts/linearicons/style.css">
    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/view/customer/html/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/customer/html/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- DATE-PICKER -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/view/customer/html/css/vendor_R/date-picker/css/datepicker.min.css">
    <!-- STYLE CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/customer/html/css/style_R.css">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


    <!-- Amr Elkady -->

    <title>Neat - Feet | Home :: w3layouts</title>
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

    <script type='text/javascript' >
        var items = 0;
    </script>
    <!-- //custom-theme -->
    <link href="${pageContext.request.contextPath}/view/customer/html/css/notifi.css" rel="stylesheet" type="text/css" media="all" />
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

<!-- added by Amr Elkady -->

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
                        <c:if test="${sessionScope.mainCategories != null}">
                            <c:forEach items="${sessionScope.mainCategories}" var="mainCategory">
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
                <li><a href="${pageContext.request.contextPath}/home"></a><i></i></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

<!-- //Added by Amr Elkady -->






<div class="wrapper">
    <div class="inner">
        <form action="register" method="post" class="validate-form" enctype="multipart/form-data">
            <h2>Create a new account</h2>
            <c:if test="${alreadyRegistered != null}">
                <font color="red" size="5">THIS EMAIL IS ALREADY REGISTERED</font>
            </c:if>
            <c:if test="${NotAllowed != null}">
                <font color="red" size="5">NOT ALLOWED</font>
            </c:if>
            <!--==================================================================================-->
            <div class="form-row">
                <div class="form-wrapper validate-input" data-validate="Name is required">
                    <label for="name">Name *</label>
                    <input type="text" name="name" id="name" class="form-control input100" placeholder="Your Name"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getName()}"
                    </c:if>
                    >
                    <span class="focus-input100"></span>
                </div>
                <div class="form-wrapper validate-input" data-validate="Email is not valid">
                    <label for="email">Email *</label>
                    <input type="text" name="email" id="email" class="form-control input100" placeholder="Your Email"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getEmail()}"
                    </c:if>
                    >
                    <span class="focus-input100"></span>

                </div>
            </div>
            <!--==================================================================================-->
            <div class="form-row">
                <div class="form-wrapper validate-input" data-validate="required">
                    <label for="password">Password *</label>
                    <input type="password" name="password" id="password" class="form-control input100"
                           placeholder="Your Password">
                    <span class="focus-input100"></span>

                </div>
                <div class="form-wrapper validate-input" data-validate="not matching">
                    <label for="passwordconfirm">Confirm Password *</label>
                    <input type="password" class="form-control input100" id="passwordconfirm" name="passwordconfirm"
                           placeholder="Confirm Password">
                    <span class="focus-input100"></span>
                </div>
            </div>
            <!--==================================================================================-->
            <div class="form-row">
                <div class="form-wrapper validate-input" data-validate="required & greater than 0">
                    <label for="creditLimit">Credit limit *</label>
                    <input type="number" name="creditLimit" id="creditLimit" class="form-control input100"
                           placeholder="Your Credit limit"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getCreditLimit()}"
                    </c:if>
                    >
                    <span class="focus-input100"></span>

                </div>
                <div class="form-wrapper">
                    <label for="job">Job</label>
                    <input type="text" name="job" id="job" class="form-control" placeholder="Your Job"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getJob()}"
                    </c:if>
                    >
                </div>
            </div>
            <!--==================================================================================-->
            <div class="form-row">
                <div class="form-wrapper">
                    <label for="address">Address</label>
                    <input type="text" name="address" id="address" class="form-control" placeholder="Your Address"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getAddress()}"
                    </c:if>
                    >
                </div>
                <div class="form-wrapper validate-input" data-validate="Invalid phone number">
                    <label for="phone">Phone *</label>
                    <input type="number" name="phone" id="phone" class="form-control input100" placeholder="Phone"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getPhone()}"
                    </c:if>
                    >
                    <span class="focus-input100"></span>

                </div>
            </div>
            <!--==================================================================================-->
            <div class="form-row">
                <div class="form-wrapper">
                    <label for="image">Photo</label>
                    <input type="file" name="image" id="image" accept="image/*" class="form-control">
                </div>
                <div class="form-wrapper validate-input" data-validate="Birth date is required">
                    <label for="dp1">Birth Date *</label>
                    <span class="lnr lnr-calendar-full"></span>
                    <input type="text" class="form-control datepicker-here input100" name="birthdate"
                           data-language='en' data-date-format="dd M yyyy" id="dp1"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getBirthdate()}"
                    </c:if>
                    readonly >
                    <span class="focus-input100"></span>

                </div>
            </div>
            <!--==================================================================================-->
            <div class="form-row last">
                <div class="form-wrapper">
                    <label for="gender">Gender *</label>
                    <select name="gender" id="gender" class="form-control"
                            <c:if test="${alreadyRegistered != null}">
                                value="${bean}"
                            </c:if>
                    >
                        <option value="true">Male</option>
                        <option value="false">Female</option>
                    </select>
                    <i class="zmdi zmdi-chevron-down"></i>
                </div>
                <div class="form-wrapper">
                    <label for="country">Country</label>
                    <select name="country" id="country" class="form-control"
                            <c:if test="${alreadyRegistered != null}">
                                value="${bean}"
                            </c:if>
                    >
                        <c:if test="${allCountries != null}">
                            <c:forEach items="${allCountries}" var="current">
                                <option value="${current.name}"><c:out value="${current.name}"/></option>
                            </c:forEach>
                        </c:if>
                    </select>
                    <i class="zmdi zmdi-chevron-down"></i>
                </div>
            </div>
            <!--==================================================================================-->

            <button data-text="Register" onclick="validatevalues()">
                <span>Register</span>
            </button>
        </form>
    </div>
</div>

<script src="${pageContext.request.contextPath}/view/customer/html/js/jquery-3.3.1.min.js"></script>

<!-- DATE-PICKER -->
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor_R/date-picker/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath}/view/customer/html/css/vendor_R/date-picker/js/datepicker.en.js"></script>

<script src="${pageContext.request.contextPath}/view/customer/html/js/main_R.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/bootstrap-3.1.1.min.js"></script>

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
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/view/customer/html/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
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

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>