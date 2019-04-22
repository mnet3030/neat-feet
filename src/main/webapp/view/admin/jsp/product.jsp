
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js css-menubar" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">

    <title>Dashboard | Remark Admin Template</title>

    <link href="${pageContext.request.contextPath}/view/admin/html/css/simplePagination.css" rel="stylesheet"/>


    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/images/apple-touch-icon.png">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/images/favicon.ico">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/css/bootstrap-extend.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/css/site.min.css">

    <!-- Plugins -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/animsition/animsition.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/examples/css/dashboard/v1.css">


    <!-- Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/fonts/weather-icons/weather-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>

    <!-- Scripts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="adminstyle.css">
    <script type="text/javascript" src="adminscript.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <style>
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
            padding: 20px;
        }
        .container-fluid{
            padding-left: 0px;
            padding-right: 0px;
        }
    </style>
</head>
<body class="animsition dashboard">
<!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">

    <div class="navbar-header"  style="background-color: #007bff;">
        <button type="button" class="navbar-toggler hamburger hamburger-close navbar-toggler-left hided"
                data-toggle="menubar">
            <span class="sr-only">Toggle navigation</span>
            <span class="hamburger-bar"></span>
        </button>
        <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-collapse"
                data-toggle="collapse">
            <i class="icon wb-more-horizontal" aria-hidden="true"></i>
        </button>
        <div class="navbar-brand navbar-brand-center site-gridmenu-toggle" data-toggle="gridmenu">
            <img class="navbar-brand-logo" src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/images/logo.png" title="Remark">
            <span class="navbar-brand-text hidden-xs-down"> Neat Feet</span>
        </div>
        <%--<button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-search"--%>
        <%--data-toggle="collapse">--%>
        <%--<span class="sr-only">Toggle Search</span>--%>
        <%--<i class="icon wb-search" aria-hidden="true"></i>--%>
        <%--</button>--%>
    </div>

    <div class="navbar-container container-fluid">
        <!-- Navbar Collapse -->
        <div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
            <!-- Navbar Toolbar -->
            <ul class="nav navbar-toolbar">
                <li class="nav-item hidden-float" id="toggleMenubar">
                    <a class="nav-link" data-toggle="menubar" href="#" role="button">
                        <i class="icon hamburger hamburger-arrow-left">
                            <span class="sr-only">Toggle menubar</span>
                            <span class="hamburger-bar"></span>
                        </i>
                    </a>
                </li>


                </li>

            </ul>
            <!-- End Navbar Toolbar -->

            <!-- Navbar Toolbar Right -->
            <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">


                <li class="nav-item dropdown">
                    <a class="nav-link navbar-avatar" data-toggle="dropdown" href="#" aria-expanded="false"
                       data-animation="scale-up" role="button">
                <span class="avatar avatar-online">
                  <img src="${pageContext.request.contextPath}/view/admin/html/classic/global/portraits/5.jpg" alt="...">
                  <i></i>
                </span>
                    </a>
                    <div class="dropdown-menu" role="menu">
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-user" aria-hidden="true"></i> Profile</a>
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-payment" aria-hidden="true"></i> Billing</a>
                        <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-settings" aria-hidden="true"></i> Settings</a>
                        <div class="dropdown-divider" role="presentation"></div>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/logout" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Logout</a>
                    </div>
                </li>

            </ul>
            <!-- End Navbar Toolbar Right -->
        </div>
        <!-- End Navbar Collapse -->

        <!-- Site Navbar Seach -->
        <%--<div class="collapse navbar-search-overlap" id="site-navbar-search">--%>
        <%--<form role="search">--%>
        <%--<div class="form-group">--%>
        <%--<div class="input-search">--%>
        <%--<i class="input-search-icon wb-search" aria-hidden="true"></i>--%>
        <%--<input type="text" class="form-control" name="site-search" placeholder="Search...">--%>
        <%--<button type="button" class="input-search-close icon wb-close" data-target="#site-navbar-search"--%>
        <%--data-toggle="collapse" aria-label="Close"></button>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</form>--%>
        <%--</div>--%>
        <!-- End Site Navbar Seach -->
    </div>
</nav>
<div class="site-menubar">
    <div class="site-menubar-body">
        <div>
            <div>
                <ul class="site-menu" data-plugin="menu">
                    <li class="site-menu-category">General</li>
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-dashboard" aria-hidden="true"></i>
                            <span class="site-menu-title">Dashboard</span>
                            <div class="site-menu-badge">
                                <span class="badge badge-pill badge-success">3</span>
                            </div>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item active">
                                <a class="animsition-link" href="${pageContext.request.contextPath}/view/admin/html/classic/base/html/index.jsp">
                                    <span class="site-menu-title">Dashboard v1</span>
                                </a>
                            </li>

                        </ul>
                    </li>


                    <li class="site-menu-category">Elements</li>
                    <li class="site-menu-item has-sub">


                    </li>


                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <i class="site-menu-icon wb-table" aria-hidden="true"></i>
                            <span class="site-menu-title">Tables</span>
                            <span class="site-menu-arrow"></span>
                        </a>
                        <ul class="site-menu-sub">
                            <li class="site-menu-item">
                                <a class="animsition-link" href="${pageContext.request.contextPath}/user">
                                    <span class="site-menu-title">Users Table</span>
                                </a>
                            </li>
                            <li class="site-menu-item">
                                <a class="animsition-link" href="${pageContext.request.contextPath}/productServlet">
                                    <span class="site-menu-title">Product Table</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <!-- <li class="site-menu-item has-sub">




                    </li> -->
                </ul>

            </div>
        </div>
    </div>

    <div class="site-menubar-footer">
        <a href="javascript: void(0);" class="fold-show" data-placement="top" data-toggle="tooltip"
           data-original-title="Settings">
            <span class="icon wb-settings" aria-hidden="true"></span>
        </a>
        <a href="javascript: void(0);" data-placement="top" data-toggle="tooltip" data-original-title="Lock">
            <span class="icon wb-eye-close" aria-hidden="true"></span>
        </a>
        <a href="javascript: void(0);" data-placement="top" data-toggle="tooltip" data-original-title="Logout">
            <span class="icon wb-power" aria-hidden="true"></span>
        </a>
    </div></div>

<div class="site-gridmenu">
    <div>
        <div>
            <ul>
                <li>
                    <a href="apps/mailbox/mailbox.html">
                        <i class="icon wb-envelope"></i>
                        <span>Mailbox</span>
                    </a>
                </li>
                <li>
                    <a href="apps/calendar/calendar.html">
                        <i class="icon wb-calendar"></i>
                        <span>Calendar</span>
                    </a>
                </li>
                <li>
                    <a href="apps/contacts/contacts.html">
                        <i class="icon wb-user"></i>
                        <span>Contacts</span>
                    </a>
                </li>
                <li>
                    <a href="apps/media/overview.html">
                        <i class="icon wb-camera"></i>
                        <span>Media</span>
                    </a>
                </li>
                <li>
                    <a href="apps/documents/categories.html">
                        <i class="icon wb-order"></i>
                        <span>Documents</span>
                    </a>
                </li>
                <li>
                    <a href="apps/projects/projects.html">
                        <i class="icon wb-image"></i>
                        <span>Project</span>
                    </a>
                </li>
                <li>
                    <a href="apps/forum/forum.html">
                        <i class="icon wb-chat-group"></i>
                        <span>Forum</span>
                    </a>
                </li>
                <li>
                    <a href="index.jsp">
                        <i class="icon wb-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- Page -->
<div class="page">
    <div class="page-content">
        <div class="row" data-plugin="matchHeight" data-by-row="true">
            <div>
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6" style="margin-left: 123px;">
                                <h2>Manage <b>Products</b></h2>
                            </div>
                            <div class="col-sm-2" style="margin-left: 145px;">
                                <br>
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons"
                                                                                                           style="margin-right:30px">&#xE147;</i>
                                    <span>Add New Product</span></a>

                            </div>
                            <form method="get" action="productServlet" style="margin-left: 100px; ">

                                <div class="form-group has-search col-sm-4">
                                    <input name="productName" type="text" class="form-control" placeholder="Search" id="search">
                                </div>

                                <%--<input type="text" name="productName" size="30px">--%>
                                <input type="hidden" name="action" value="search">
                                <button class="btn btn-danger" type="submit" style=" margin-right:650px; margin-left: 250px; "><span>Search</span></button>
                            </form>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <%--<th>--%>
                            <%--<span class="custom-checkbox">--%>
                            <%--<input type="checkbox" id="selectAll">--%>
                            <%--<label for="selectAll"></label>--%>
                            <%--</span>--%>
                            <%--</th>--%>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>BuyingCount</th>
                            <th>Category</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>


                        <c:forEach items="${requestScope.products}" var="product">
                            <tr>
                                <td><c:out value="${product.description}"></c:out></td>
                                <td><c:out value="${product.price}"></c:out></td>
                                <td><c:out value="${product.quantity}"></c:out></td>
                                <td><c:out value="${product.buyingCount}"></c:out></td>
                                <td><c:out value="${product.category.getDescription()}"></c:out></td>
                                <td>
                                    <input type="hidden" name="productID" value="${product.id}">
                                    <button href="#editEmployeeModal" class="edit" data-toggle="modal"
                                            onclick="productId('${product.id}')"><i class="material-icons" data-toggle="tooltip"
                                                                                    title="Edit">&#xE254;</i></button>
                                    <button href="#deleteEmployeeModal" onclick="deleteRowFromDB(this)" class="delete"
                                            data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                    </button>
                                    <button href="#viewProductPhotos" id="view-btn" class="edit" data-toggle="modal"><i
                                            class="material-icons" data-toggle="tooltip" title="View Photos"
                                            onclick="showProductImage('${product.id}')">list</i></button>
                                </td>
                            </tr>
                            <%--<tr>--%>

                        </c:forEach>

                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div id="pagination-container">

                        </div>
                    </div>
                </div>
            </div>
            <!-- Show Photos -->

            <!-- Edit Modal HTML -->
            <div id="addEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form enctype="multipart/form-data" method="POST" action="addition">
                            <div class="modal-header">
                                <h4 class="modal-title">Add Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Description</label>
                                    <input type="text" name="description" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Detailed Description</label>
                                    <textarea name="detailedDescription" class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category" class="form-control" style="padding: 0px;">
                                        <c:if test="${categories != null}">
                                            <c:forEach items="${categories}" var="current">
                                                <option value="${current.id}"><c:out
                                                        value="${current.description}"/></option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Brand</label>
                                    <select name="brand" class="form-control" style="padding: 0px;">
                                        <c:if test="${brands != null}">
                                            <c:forEach items="${brands}" var="current">
                                                <option value="${current.id}"><c:out
                                                        value="${current.description}"/></option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="number" name="price" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="number" name="quantity" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image" id="image" accept=".jpg,.png,.svg" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image1" id="image1" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image2" id="image2" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image3" id="image3" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>


                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="editEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form enctype="multipart/form-data" method="POST" action="productEdit">
                            <div class="modal-header">
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Description</label>
                                    <input type="text" id="description" name="description" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Detailed Description</label>
                                    <textarea id="detailedDescription" name="detailedDescription" class="form-control"
                                              required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category" class="form-control" id="category" style="padding: 0px;">
                                        <c:if test="${categories != null}">
                                            <c:forEach items="${categories}" var="current">
                                                <option value="${current.id}"><c:out
                                                        value="${current.description}"/></option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Brand</label>
                                    <select name="brand" class="form-control" id="brand" style="padding: 0px;">
                                        <c:if test="${brands != null}">
                                            <c:forEach items="${brands}" var="current">
                                                <option value="${current.id}"><c:out
                                                        value="${current.description}"/></option>
                                            </c:forEach>
                                        </c:if>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="number" id="price" name="price" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input type="number" id="quantity" name="quantity" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Buying Count</label>
                                    <input type="text" id="buyingCount" name="buyingCount" class="form-control" disabled>
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image" id="pimage" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image1" id="pimage1" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image2" id="pimage2" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>photo</label>
                                    <input type="file" name="image3" id="pimage3" accept=".jpg,.png,.svg"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-success" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete Modal HTML -->
            <div id="deleteEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">
                                <h4 class="modal-title">Delete Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure you want to delete these Records?</p>
                                <p class="text-warning">
                                    <small>This action cannot be undone.</small>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-danger" value="Delete">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!---------------------------------------------------------------------------------------------------------->
            <div id="viewProductPhotos" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">View Photos</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group" id="imagesContainer">
                                <img src="" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.jpg'" id="firstPhoto" width="250" height="250"><br>
                                <img src="" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.jpg'" id="secondPhoto" width="250" height="250"><br>
                                <img src="" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.jpg'" id="thirdPhoto" width="250" height="250"><br>
                                <img src="" onerror="this.src='${pageContext.request.contextPath}/view/customer/html/images/default.jpg'" id="fourthPhoto" width="250" height="250">

                                <%--${pageContext.request.contextPath}/NewUserIamges/${user.getPhotoUrl()}--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- End Page -->


<!-- Footer -->
<footer class="site-footer">

    <div class="site-footer-legal">© 2019 Neat Feet

        <!-- <a href="http://themeforest.net/item/remark-responsive-bootstrap-admin-template/11989202">Remark</a> -->
    </div>
    <!-- <div class="site-footer-right">
      Crafted with <i class="red-600 wb wb-heart"></i> by <a href="https://themeforest.net/user/creation-studio">Creation Studio</a>
    </div> -->
</footer>


<!-- Core  -->
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/babel-external-helpers/babel-external-helpers.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/bootstrap/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/animsition/animsition.js"></script>

<!-- Plugins -->
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/intro-js/intro.js"></script>

<!-- Scripts -->
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Component.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Base.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Config.js"></script>

<script>Config.set('assets', '${pageContext.request.contextPath}/view/admin/html/classic/base/assets');</script>

<!-- Page -->
<script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Site.js"></script>
<script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/examples/js/dashboard/v1.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/main.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/view/admin/html/js/productManipulation.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/view/admin/html/js/simplePagination.js"></script>
<script type="text/javascript">
    console.log("nof of pages   " +${requestScope.noOfPages});
    console.log("page no  " +${requestScope.pageNo});
    <c:if test="${requestScope.noOfPages != null && requestScope.noOfPages > 0}">
    $('#pagination-container').pagination({
        pages:${requestScope.noOfPages},
        displayedPages: 8,
        cssStyle: 'light-theme',
        ellipsePageSet: true,
        currentPage:${requestScope.pageNo},
        hrefTextPrefix: '',
        selectOnClick: false,
        onPageClick: function (pageNumber, event) {
            if (event != undefined) {
                event.preventDefault();
            }
            if (window.location.href.indexOf('&pageNo=') !== -1) {
                window.location.href = window.location.href.replace(new RegExp('pageNo=[0-9]+'), 'pageNo=' + pageNumber);
            } else {
                if (window.location.href.indexOf('?productName=') == -1) {
                    if (window.location.href.indexOf('?pageNo=') == -1) {
                        window.location.href = window.location.href + '?pageNo=' + pageNumber;
                    } else {
                        window.location.href = window.location.href.replace(new RegExp('pageNo=[0-9]+'), 'pageNo=' + pageNumber);
                    }
                } else {
                    window.location.href = window.location.href + '&pageNo=' + pageNumber;
                }
            }

        }
    });
    </c:if>

</script>
<script>
    function productId(pid) {
        console.log(pid);
        var productid = pid;
        $.ajax({
            url: "${pageContext.request.contextPath}/productEdit",
            type: "GET",
            data: {productid: pid},
            dataType: 'json',
            success: function (data) {
                $('#description').val(data.description);
                $('#detailedDescription').val(data.detailedDescription);
                $('#category').val(data.category);
                $('#brand').val(data.brand);
                $('#price').val(data.price);
                $('#quantity').val(data.quantity);
                $('#buyingCount').val(data.buyingCount);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });
    }
</script>
<script>
    function showProductImage(pid) {
        $('#firstPhoto').attr("src","${pageContext.request.contextPath}/ProductIamges/product"+pid+".jpg");
        $('#secondPhoto').attr("src","${pageContext.request.contextPath}/ProductIamges/product"+pid+"1.jpg");
        $('#thirdPhoto').attr("src","${pageContext.request.contextPath}/ProductIamges/product"+pid+"2.jpg");
        $('#fourthPhoto').attr("src","${pageContext.request.contextPath}/ProductIamges/product"+pid+"3.jpg");
    }
</script>

</body>
</html>
