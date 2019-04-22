
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/asscrollable/asScrollable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/switchery/switchery.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/intro-js/introjs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/slidepanel/slidePanel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/flag-icon-css/flag-icon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/chartist/chartist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
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
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/media-match/media.match.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/respond/respond.min.js"></script>
    <![endif]-->
    
    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/breakpoints/breakpoints.js"></script>
    <script>
      Breakpoints();
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
                <a class="dropdown-item" href="javascript:void(0)" role="menuitem"><i class="icon wb-power" aria-hidden="true"></i> Logout</a>
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
          <div class="col-xxl-7 col-lg-7">
            <!-- Widget Linearea Color -->
            <div class="card card-shadow card-responsive" id="widgetLineareaColor">
              <div class="card-block p-0">
                <div class="pt-30 p-30" style="height:calc(100% - 250px);">
                  <div class="row">
                    <div class="col-7">
                      <p class="font-size-20 blue-grey-700">Eneergy Predictions</p>
                      <p>Quisque volutpat condimentum velit. Class aptent taciti</p>
                      <div class="counter counter-md text-left">
                        <div class="counter-number-group">
                          <span class="counter-icon red-600"><i class="icon wb-triangle-up" aria-hidden="true"></i></span>
                          <span class="counter-number red-600">2,250</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-5">
                      <div class="float-right clearfix">
                        <ul class="list-unstyled">
                          <li class="mb-5 text-truncate">
                            <i class="icon wb-medium-point red-600 mr-5" aria-hidden="true"></i>                            Diretary intake
                          </li>
                          <li class="mb-5 text-truncate">
                            <i class="icon wb-medium-point orange-600 mr-5" aria-hidden="true"></i>                            Motion
                          </li>
                          <li class="mb-5 text-truncate">
                            <i class="icon wb-medium-point green-600 mr-5" aria-hidden="true"></i>                            Other
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="ct-chart h-250"></div>
              </div>
            </div>
            <!-- End Widget Linearea Color -->
          </div>

          <div class="col-xxl-5 col-lg-5">
            <!-- Widget Stacked Bar -->
            <div class="card card-shadow" id="widgetStackedBar">
              <div class="card-block p-0">
                <div class="p-30 h-150">
                  <p>MARKET DOW</p>
                  <div class="red-600">
                    <i class="wb-triangle-up font-size-20 mr-5"></i>
                    <span class="font-size-30">26,580.62</span>
                  </div>
                </div>
                <div class="counters pb-20 px-30" style="height:calc(100% - 350px);">
                  <div class="row no-space">
                    <div class="col-4">
                      <div class="counter counter-sm">
                        <div class="counter-label text-uppercase">APPL</div>
                        <div class="counter-number-group text-truncate">
                          <span class="counter-number-related green-600">+</span>
                          <span class="counter-number green-600">82.24</span>
                          <span class="counter-number-related green-600">%</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="counter counter-sm">
                        <div class="counter-label text-uppercase">FB</div>
                        <div class="counter-number-group text-truncate">
                          <span class="counter-number-related red-600">-</span>
                          <span class="counter-number red-600">12.06</span>
                          <span class="counter-number-related red-600">%</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="counter counter-sm">
                        <div class="counter-label text-uppercase">GOOG</div>
                        <div class="counter-number-group text-truncate">
                          <span class="counter-number-related green-600">+</span>
                          <span class="counter-number green-600">24.86</span>
                          <span class="counter-number-related green-600">%</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="ct-chart h-200"></div>
              </div>
            </div>
            <!-- End Widget Stacked Bar -->
          </div>

          <div class="col-xxl-8 col-lg-12">
            <!-- Widget Statistic -->
            <div class="card card-shadow" id="widgetStatistic">
              <div class="card-block p-0">
                <div class="row no-space h-full" data-plugin="matchHeight">
                  <div class="col-md-8 col-sm-12">
                    <div id="widgetJvmap" class="h-full"></div>
                  </div>
                  <%--<div class="col-md-4 col-sm-12 p-30">--%>
                    <%--<div class="form-group">--%>
                      <%--<div class="input-search input-search-dark">--%>
                        <%--<i class="input-search-icon wb-search" aria-hidden="true"></i>--%>
                        <%--<input type="text" class="form-control" name="" placeholder="Search...">--%>
                      <%--</div>--%>
                    <%--</div>--%>
                    <p class="font-size-20 blue-grey-700">Statistic</p>
                    <p class="blue-grey-400">Status: live</p>
                    <p>
                      <i class="icon wb-map blue-grey-400 mr-10" aria-hidden="true"></i>
                      <span>258 Countries, 4835 Cities</span>
                    </p>
                    <ul class="list-unstyled mt-20">
                      <li>
                        <p>VISITS</p>
                        <div class="progress progress-xs mb-25">
                          <div class="progress-bar progress-bar-info bg-blue-600" style="width: 70.3%" aria-valuemax="100"
                            aria-valuemin="0" aria-valuenow="70.3" role="progressbar">
                            <span class="sr-only">70.3%</span>
                          </div>
                        </div>
                      </li>
                      <li>
                        <p>TODAY</p>
                        <div class="progress progress-xs mb-25">
                          <div class="progress-bar progress-bar-info bg-green-600" style="width: 70.3%" aria-valuemax="100"
                            aria-valuemin="0" aria-valuenow="70.3" role="progressbar">
                            <span class="sr-only">70.3%</span>
                          </div>
                        </div>
                      </li>
                      <li>
                        <p>WEEK</p>
                        <div class="progress progress-xs mb-0">
                          <div class="progress-bar progress-bar-info bg-purple-600" style="width: 70.3%"
                            aria-valuemax="100" aria-valuemin="0" aria-valuenow="70.3"
                            role="progressbar">
                            <span class="sr-only">70.3%</span>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Widget Statistic -->
          </div>

          <div class="col-xxl-4 col-lg-12">
            <div class="row h-full">
              <div class="col-xxl-12 col-lg-6 h-p50 h-only-lg-p100 h-only-xl-p100">
                <!-- Widget Linepoint -->
                <div class="card card-inverse card-shadow bg-blue-600 white" id="widgetLinepoint">
                  <div class="card-block p-0">
                    <div class="pt-25 px-30">
                      <div class="row no-space">
                        <div class="col-6">
                          <p>Today Sale's</p>
                          <p class="blue-200">Last Sale 23.45 USD</p>
                        </div>
                        <div class="col-6 text-right">
                          <p class="font-size-30 text-nowrap">450 USD</p>
                        </div>
                      </div>
                    </div>
                    <div class="ct-chart h-120"></div>
                  </div>
                </div>
                <!-- End Widget Linepoint -->
              </div>
              <div class="col-xxl-12 col-lg-6 h-p50 h-only-lg-p100 h-only-xl-p100">
                <!-- Widget Sale Bar -->
                <div class="card card-inverse card-shadow bg-purple-600 white" id="widgetSaleBar">
                  <div class="card-block p-0">
                    <div class="pt-25 px-30">
                      <div class="row no-space">
                        <div class="col-6">
                          <p>Month Sale's</p>
                          <p class="purple-200">2% higher than last month</p>
                        </div>
                        <div class="col-6 text-right">
                          <p class="font-size-30 text-nowrap">$ 14,500</p>
                        </div>
                      </div>
                    </div>
                    <div class="ct-chart h-120"></div>
                  </div>
                </div>
                <!-- End Widget Sale Bar -->
              </div>
            </div>
          </div>

          <div class="col-xxl-6 col-lg-12">
            <!-- Widget OVERALL VIEWS -->
            <div class="card card-shadow card-responsive" id="widgetOverallViews">
              <div class="card-block p-30">
                <div class="row pb-30" style="height:calc(100% - 250px);">
                  <div class="col-sm-4">
                    <div class="counter counter-md text-left">
                      <div class="counter-label">OVERALL VIEWS</div>
                      <div class="counter-number-group text-truncate">
                        <span class="counter-number-related red-600">$</span>
                        <span class="counter-number red-600">432,852</span>
                      </div>
                      <div class="counter-label">2% higher than last month</div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="counter counter-sm text-left inline-block">
                      <div class="counter-label">MY BALANCE</div>
                      <div class="counter-number-group">
                        <span class="counter-number-related">$</span>
                        <span class="counter-number">12,346</span>
                      </div>
                    </div>
                    <div class="ct-chart inline-block small-bar-one"></div>
                  </div>
                  <div class="col-sm-4">
                    <div class="counter counter-sm text-left inline-block">
                      <div class="counter-label">NEW ORDERS</div>
                      <div class="counter-number-group">
                        <span class="counter-number-related">$</span>
                        <span class="counter-number">17,555</span>
                      </div>
                    </div>
                    <div class="ct-chart inline-block small-bar-two"></div>
                  </div>
                </div>
                <div class="ct-chart line-chart h-250"></div>
              </div>
            </div>
            <!-- End Widget OVERALL VIEWS -->
          </div>

          <div class="col-xxl-6 col-lg-12">
            <!-- Widget Timeline -->
            <div class="card card-shadow card-responsive" id="widgetTimeline">
              <div class="card-block p-0">
                <div class="p-30" style="height:120px;">
                  <div class="row">
                    <div class="col-4">
                      <div class="counter text-left">
                        <div class="counter-label blue-grey-700">Total usage</div>
                        <div class="counter-number-group">
                          <span class="counter-number red-600">21,451</span>
                          <span class="counter-number-related red-600">MB</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="counter text-left">
                        <div class="counter-label">Currently</div>
                        <div class="counter-number-group">
                          <span class="counter-number">227.34</span>
                          <span class="counter-number-related">KB</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="counter text-left">
                        <div class="counter-label">Average</div>
                        <div class="counter-number-group">
                          <span class="counter-number">117.65</span>
                          <span class="counter-number-related">MB</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <ul class="list-unstyled pb-50 mb-0" style="height:calc(100% - 270px);">
                  <li class="px-30 py-15 container-fluid">
                    <div class="row">
                      <div class="col-3">Mail App</div>
                      <div class="col-6">210,685 users are using</div>
                      <div class="col-3 green-600">227.34KB</div>
                    </div>
                  </li>
                  <li class="px-30 py-15 container-fluid">
                    <div class="row">
                      <div class="col-3">Calendar</div>
                      <div class="col-6">10,685 users are using</div>
                      <div class="col-3 green-600">128.62KB</div>
                    </div>
                  </li>
                </ul>
                <div class="ct-chart h-150"></div>
              </div>
            </div>
            <!-- End Widget Timeline -->
          </div>

          <div class="col-xxl-6 col-lg-12">
            <!-- Panel California -->
            <div class="card card-shadow" id="widgetWeather">
              <div class="row no-space">
                <div class="col-md-7">
                  <div class="p-35 text-center">
                    <h4>California, Usa</h4>
                    <p class="blue-grey-400 mb-35">MONDAY MAY 11, 2017</p>
                    <canvas id="widgetSunny" height="60" width="60"></canvas>
                    <div class="font-size-40 red-600">
                      26°
                      <span class="font-size-30">C</span>
                    </div>
                    <div>Sunday</div>
                  </div>
                  <div class="weather-times p-30">
                    <div class="row no-space text-center">
                      <div class="col-3">
                        <div class="weather-day vertical-align">
                          <div class="vertical-align-middle">
                            <div class="mb-5">12:00</div>
                            <i class="wi-day-cloudy font-size-24 mb-5"></i>
                            <div class="red-600">24°
                              <span class="font-size-12">C</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="weather-day vertical-align">
                          <div class="vertical-align-middle">
                            <div class="mb-5">12:30</div>
                            <i class="wi-day-sunny font-size-24 mb-5"></i>
                            <div class="red-600">26°
                              <span class="font-size-12">C</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="weather-day vertical-align">
                          <div class="vertical-align-middle">
                            <div class="mb-5">13:00</div>
                            <i class="wi-day-sunny font-size-24 mb-5"></i>
                            <div class="red-600">28°
                              <span class="font-size-12">C</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="weather-day vertical-align">
                          <div class="vertical-align-middle">
                            <div class="mb-5">13:30</div>
                            <i class="wi-day-sunny font-size-24 mb-5"></i>
                            <div class="red-600">30°
                              <span class="font-size-12">C</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-5 bg-blue-grey-100">
                  <div class="weather-list">
                    <ul class="list-unstyled m-0">
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                      <li class="container-fluid">
                        <div class="row no-space">
                          <div class="col-4">
                            SUN
                          </div>
                          <div class="col-4">
                            <i class="wi-day-cloudy font-size-24"></i>
                          </div>
                          <div class="col-4">
                            24 - 26
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Panel California -->
          </div>

          <div class="col-xxl-3 col-lg-6">
            <!-- Panel Watchlist -->
            <div class="card card-shadow" id="widgetTable">
              <div class="card-block p-30">
                <h3 class="card-title">
                  <span class="text-truncate">Watch List</span>
                  <div class="card-header-actions">
                    <span class="red-600 font-size-24">$ 102,967</span>
                  </div>
                </h3>
                <form class="mt-25" action="#" role="search">
                  <div class="input-search input-search-dark">
                    <i class="input-search-icon wb-search" aria-hidden="true"></i>
                    <input type="text" class="form-control" placeholder="Search.." />
                  </div>
                </form>
              </div>
              <div class="h-350" data-plugin="scrollable">
                <div data-role="container">
                  <div data-role="content">
                    <table class="table mb-0">
                      <tbody>
                        <tr>
                          <td>GMY</td>
                          <td>$ 9,500</td>
                          <td class="green-600">+ 458</td>
                        </tr>
                        <tr>
                          <td>KPM</td>
                          <td>$ 15,425</td>
                          <td class="red-600">- 1,632</td>
                        </tr>
                        <tr>
                          <td>PTR</td>
                          <td>$ 11,540</td>
                          <td class="green-600">+ 8,326</td>
                        </tr>
                        <tr>
                          <td>HGM</td>
                          <td>$ 15,855</td>
                          <td class="green-600">+ 11,326</td>
                        </tr>
                        <tr>
                          <td>MKR</td>
                          <td>$ 18,500</td>
                          <td class="red-600">- 6,586</td>
                        </tr>
                        <tr>
                          <td>GMY</td>
                          <td>$ 9,500</td>
                          <td class="green-600">+ 458</td>
                        </tr>
                        <tr>
                          <td>KPM</td>
                          <td>$ 15,425</td>
                          <td class="red-600">- 1,632</td>
                        </tr>
                        <tr>
                          <td>PTR</td>
                          <td>$ 11,540</td>
                          <td class="green-600">+ 8,326</td>
                        </tr>
                        <tr>
                          <td>HGM</td>
                          <td>$ 15,855</td>
                          <td class="green-600">+ 11,326</td>
                        </tr>
                        <tr>
                          <td>MKR</td>
                          <td>$ 18,500</td>
                          <td class="red-600">- 6,586</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Panel Watchlist -->
          </div>

          <div class="col-xxl-3 col-lg-6">
            <!-- Widget Linepoint -->
            <div class="card card-shadow" id="widgetLinepointDate">
              <div class="card-block p-30">
                <h3 class="card-title">Sales Analysis
                  <div class="card-header-actions">
                    <span class="badge badge-dark badge-round">View</span>
                  </div>
                </h3>
                <div class="row text-center my-25">
                  <div class="col-4">
                    <div class="counter">
                      <div class="counter-label">TOTAL</div>
                      <div class="counter-number red-600">20,186</div>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="counter">
                      <div class="counter-label">TODAY</div>
                      <div class="counter-number red-600">36</div>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="counter">
                      <div class="counter-label">WEEK</div>
                      <div class="counter-number red-600">261</div>
                    </div>
                  </div>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
                  nec odio. Praesent libero.</p>
              </div>
              <div class="ct-chart h-150"></div>
            </div>
            <!-- End Widget Linepoint -->
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
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/popper-js/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/bootstrap/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/animsition/animsition.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/mousewheel/jquery.mousewheel.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/asscrollbar/jquery-asScrollbar.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/asscrollable/jquery-asScrollable.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
    
    <!-- Plugins -->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/switchery/switchery.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/intro-js/intro.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/screenfull/screenfull.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/slidepanel/jquery-slidePanel.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/skycons/skycons.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/chartist/chartist.min.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/aspieprogress/jquery-asPieProgress.min.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/jvectormap/maps/jquery-jvectormap-au-mill-en.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/matchheight/jquery.matchHeight-min.js"></script>
    
    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Component.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Base.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Config.js"></script>
    
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Section/Menubar.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Section/GridMenu.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Section/Sidebar.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Section/PageAside.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Plugin/menu.js"></script>
    
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/global/js/config/colors.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/config/tour.js"></script>
    <script>Config.set('assets', '${pageContext.request.contextPath}/view/admin/html/classic/base/assets');</script>
    
    <!-- Page -->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Site.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/asscrollable.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/slidepanel.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/switchery.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/matchheight.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/jvectormap.js"></script>
    
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/examples/js/dashboard/v1.js"></script>
  </body>
</html>
