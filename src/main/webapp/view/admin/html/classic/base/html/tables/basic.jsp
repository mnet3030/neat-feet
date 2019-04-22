
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.imagine.neatfeat.model.dal.entity.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html class="no-js css-menubar" lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap admin template">
    <meta name="author" content="">
    
    <title>Basic Tables | Remark Admin Template</title>
    
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/examples/css/tables/basic.css">
    
    
    <!-- Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/fonts/web-icons/web-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/html/classic/global/fonts/brand-icons/brand-icons.min.css">
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'>
    
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
    
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
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/view/admin/html/classic/base/html/adminStyle.css">




    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script  type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/classic/base/html/adminScript.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/main.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/userAjax.js"></script>

    <link href="${pageContext.request.contextPath}/view/admin/html/css/productTable.css" rel="stylesheet" type="text/css" media="all" />

  </head>
  <body class="animsition">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">
    
      <div class="navbar-header" style="background-color: #007bff;">
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
        <button type="button" class="navbar-toggler collapsed" data-target="#site-navbar-search"
          data-toggle="collapse">
          <span class="sr-only">Toggle Search</span>
          <i class="icon wb-search" aria-hidden="true"></i>
        </button>
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
            <!-- <li class="nav-item hidden-sm-down" id="toggleFullscreen">
              <a class="nav-link icon icon-fullscreen" data-toggle="fullscreen" href="#" role="button">
                <span class="sr-only">Toggle fullscreen</span>
              </a>
            </li> -->
            <li class="nav-item hidden-float">
              <a class="nav-link icon wb-search" data-toggle="collapse" href="#" data-target="#site-navbar-search"
                role="button">
                <span class="sr-only">Toggle Search</span>
              </a>
            </li>
           
            <!-- <li class="nav-item dropdown dropdown-fw dropdown-mega">
              <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false" data-animation="fade"
                role="button">Mega <i class="icon wb-chevron-down-mini" aria-hidden="true"></i></a>
              <div class="dropdown-menu" role="menu">
                <div class="mega-content">
                  <div class="row">
                    <div class="col-md-4">
                      <h5>UI Kit</h5>
                      <ul class="blocks-2">
                        <li class="mega-menu m-0">
                          <ul class="list-icons">
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../advanced/animation.html">Animation</a>
                            </li>
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../uikit/buttons.html">Buttons</a>
                            </li>
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../uikit/colors.html">Colors</a>
                            </li>
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../uikit/dropdowns.html">Dropdowns</a>
                            </li>
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../uikit/icons.html">Icons</a>
                            </li>
                            <li><i class="wb-chevron-right-mini" aria-hidden="true"></i>
                              <a
                                href="../advanced/lightbox.html">Lightbox</a>
                            </li>
                          </ul>
                        </li>

                      </ul>

                        </div>
                      </div>
               
                    </div>
                  </div>
                </div>
              </div>
            </li> -->
       
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
        <div class="collapse navbar-search-overlap" id="site-navbar-search">
          <form role="search">
            <div class="form-group">
              <div class="input-search">
                <i class="input-search-icon wb-search" aria-hidden="true"></i>
                <input type="text" class="form-control" name="site-search" placeholder="Search...">
                <button type="button" class="input-search-close icon wb-close" data-target="#site-navbar-search"
                  data-toggle="collapse" aria-label="Close"></button>
              </div>
            </div>
          </form>
        </div>
        <!-- End Site Navbar Seach -->
      </div>
    </nav>    <div class="site-menubar">
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
                  <li class="site-menu-item">
                    <a class="animsition-link" href="homeadmin">
                      <span class="site-menu-title">Dashboard v1</span>
                    </a>

                </ul>
              </li>



    <!-- Page -->
    <div class="page">

      <div class="page-content">


        <!-- Main Table-->


        <div class="container">
          <div class="table-wrapper">
            <div class="table-title">
              <div class="row">
                <div class="col-sm-6">
                  <h2>View <b>Customers</b></h2>
                </div>

              </div>
            </div>
            <table class="table table-striped table-hover">
              <thead>
              <tr>
                <!--<th>

                    <span class="custom-checkbox">
                        <input type="checkbox" id="selectAll">
                        <label for="selectAll"></label>
                    </span>
                </th>-->
                <th>Name</th>
                <th>Email</th>

                <th>Address</th>
                <th>Phone</th>
                <th>Actions</th>

              </tr>
              </thead>
              <tbody>



              <c:forEach items="${sessionScope.users}" var="user">

                <tr>


                  <td><c:out value="${user.name}"></c:out></td>
                  <td><c:out value="${user.email}"></c:out></td>
                  <td><c:out value="${user.address}"></c:out></td>
                  <td><c:out value="${user.phone}"></c:out></td>

                  <td>

                    <a href="#editEmployeeModal" id="view-btn" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit"  onclick=" getuserinfo('${user.id}')">list</i></a>
                    <!--  <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit" id="view">list</i></a>-->
                  </td>
                </tr>


              </c:forEach>

              <!-- <tr></tr>-->
              </tbody>
            </table>
            <div class="clearfix">
              <!--  <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>-->
              <ul class="pagination">
                <li class="page-item disabled"><a href="#">Previous</a></li>
                <li class="page-item"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">Next</a></li>
              </ul>
            </div>
          </div>
        </div>



        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form>
                <div class="modal-header">
                  <h4 class="modal-title">View Customer Details</h4>
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" id="name" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" id="email" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Birthdate</label>
                    <input type="text" class="form-control" id="birthdate" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Gender</label>
                    <input type="text" class="form-control" id="gender" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Job</label>
                    <input type="text" class="form-control" id="job" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Address</label>
                    <textarea class="form-control" id="address" disabled="disabled" required></textarea>
                  </div>
                  <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control" id="phone" disabled="disabled" required>
                  </div>
                  <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control" id="country" disabled="disabled" required>
                  </div>
                  <br>
                </div>

              </form>
            </div>
          </div>
        </div>



        </div>
        <!-- End Panel -->

        <!-- Panel -->
        <div class="panel">





                </div>
                <!-- End Example Table-section -->
              </div>

              <div class="col-xl-6">

             
                <!-- End Example Table Selectable -->
              </div>
            </div>
          </div>
        </div>
        <!-- End Panel -->

        <!-- End Panel Table Example1 Report-->
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
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/vendor/peity/jquery.peity.min.js"></script>
    
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
    
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/config/colors.js"></script>
    <script src="./assets/js/config/tour.js"></script>
    <script>Config.set('assets', '${pageContext.request.contextPath}/view/admin/html/classic/base/assets');</script>
    
    <!-- Page -->
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/base/assets/js/Site.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/asscrollable.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/slidepanel.js"></script>
    <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/switchery.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/peity.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/asselectable.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/selectable.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/table.js"></script>
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/global/js/Plugin/asscrollable.js"></script>
    
        <script src="${pageContext.request.contextPath}/view/admin/html/classic/assets/examples/js/charts/peity.js"></script>
  </body>
</html>
