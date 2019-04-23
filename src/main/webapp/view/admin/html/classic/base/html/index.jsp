
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js css-menubar" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">
    
    <title>Dashboard | Remark Admin Template</title>
    
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
    
    <!--[if lt IE 9]-->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/html5shiv/html5shiv.min.js"></script>
    <!--[endif]-->
    
    <!--[if lt IE 10]>
    <![endif]-->
    
    <!-- Scripts -->
    <script>
      //Breakpoints();
    </script>
     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="adminstyle.css">
     <script type="text/javascript" src="adminscript.js"></script>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <div class="page-content container-fluid">
        <div class="row" data-plugin="matchHeight" data-by-row="true">
          <div class="col-xxl-7 col-lg-7" style="margin-left: 230px; text-align: center;">
            <h2 style="font-family: cursive;
              font-size: xx-large;">Here's</h2>
            <h3 style="font-size: 120px;
              font-style: italic;
              font-family: -webkit-pictograph;">Your</h3>
            <h1 style="font-size: 120px;
              font-family: fantasy;
              background-color: gold;
              color: white;">DASHBOARD</h1>
          </div>

          <%--<div class="col-xxl-5 col-lg-5">--%>
            <%--<!-- Widget Stacked Bar -->--%>
            <%--<div class="card card-shadow" id="widgetStackedBar">--%>
              <%--<div class="card-block p-0">--%>
                <%--<div class="p-30 h-150">--%>
                  <%--<p>MARKET DOW</p>--%>
                  <%--<div class="red-600">--%>
                    <%--<i class="wb-triangle-up font-size-20 mr-5"></i>--%>
                    <%--<span class="font-size-30">26,580.62</span>--%>
                  <%--</div>--%>
                <%--</div>--%>
                <%--<div class="counters pb-20 px-30" style="height:calc(100% - 350px);">--%>
                  <%--<div class="row no-space">--%>
                    <%--<div class="col-4">--%>
                      <%--<div class="counter counter-sm">--%>
                        <%--<div class="counter-label text-uppercase">APPL</div>--%>
                        <%--<div class="counter-number-group text-truncate">--%>
                          <%--<span class="counter-number-related green-600">+</span>--%>
                          <%--<span class="counter-number green-600">82.24</span>--%>
                          <%--<span class="counter-number-related green-600">%</span>--%>
                        <%--</div>--%>
                      <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-4">--%>
                      <%--<div class="counter counter-sm">--%>
                        <%--<div class="counter-label text-uppercase">FB</div>--%>
                        <%--<div class="counter-number-group text-truncate">--%>
                          <%--<span class="counter-number-related red-600">-</span>--%>
                          <%--<span class="counter-number red-600">12.06</span>--%>
                          <%--<span class="counter-number-related red-600">%</span>--%>
                        <%--</div>--%>
                      <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-4">--%>
                      <%--<div class="counter counter-sm">--%>
                        <%--<div class="counter-label text-uppercase">GOOG</div>--%>
                        <%--<div class="counter-number-group text-truncate">--%>
                          <%--<span class="counter-number-related green-600">+</span>--%>
                          <%--<span class="counter-number green-600">24.86</span>--%>
                          <%--<span class="counter-number-related green-600">%</span>--%>
                        <%--</div>--%>
                      <%--</div>--%>
                    <%--</div>--%>
                  <%--</div>--%>
                <%--</div>--%>
                <%--<div class="ct-chart h-200"></div>--%>
              <%--</div>--%>
            <%--</div>--%>
            <%--<!-- End Widget Stacked Bar -->--%>
          <%--</div>--%>
          <%----%>
          <%----%>


          <div class="col-xxl-8 col-lg-12">

          </div>

          <div class="col-xxl-4 col-lg-12">
            <div class="row h-full">
              <div class="col-xxl-12 col-lg-6 h-p50 h-only-lg-p100 h-only-xl-p100">
                <!-- Widget Linepoint -->

                <!-- End Widget Linepoint -->
              </div>
              <div class="col-xxl-12 col-lg-6 h-p50 h-only-lg-p100 h-only-xl-p100">
                <!-- Widget Sale Bar -->

                <!-- End Widget Sale Bar -->
              </div>
            </div>
          </div>


          <div class="col-xxl-6 col-lg-12">
            <!-- Widget Timeline -->

            <!-- End Widget Timeline -->
          </div>

          <div class="col-xxl-6 col-lg-12">
            <!-- Panel California -->

            <!-- End Panel California -->
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
  </body>
</html>
