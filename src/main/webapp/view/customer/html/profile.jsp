<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
    <title>Profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/view/customer/html/js/profilescript.js"></script>
</head>


<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-sm-10"><h1> ${user.getName()}</h1></div>
    </div>

    <form class="form"
            <c:if test="${editProfile == 'false'}">
                action="${pageContext.request.contextPath}/showProfile"
            </c:if>

            <c:if test="${editProfile == 'true'}">
                action="${pageContext.request.contextPath}/saveProfile"
            </c:if>
          method="post" id="registrationForm" enctype="multipart/form-data">
    <div class="row">
        <div class="col-sm-3"><!--left col-->


            <div class="text-center">
                <c:if test="${user.getPhotoUrl() == null}">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                </c:if>
                <c:if test="${user.getPhotoUrl() != null}">
                    <img src="${pageContext.request.contextPath}/NewUserIamges/${user.getPhotoUrl()}" class="avatar img-circle img-thumbnail" alt="avatar">
                </c:if>
                <c:if test="${editProfile == 'true'}">
                    <h6>Upload a different photo...</h6>
                    <input type="file"  name="image" id="image" accept=".jpg,.png,.svg"
                           class="form-control text-center center-block file-upload" >
                </c:if>
            </div></hr><br>

        </div><!--/col-3-->
        <div class="col-sm-9">



            <div class="tab-content">
                <div class="tab-pane active" id="home">
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
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                                </c:if>
                                <c:if test="${editProfile == 'true'}">
                                <button  class="btn btn-lg btn-success" type="submit"><i
                                        class="glyphicon glyphicon-ok-sign"></i> Save
                                </button>
                                <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset
                                </button>
                                </c:if>

                            </div>
                        </div>
                    </form>

                    <hr>

                </div><!--/tab-pane-->
                <div class="tab-pane" id="messages">

                    <h2></h2>

                    <hr>


                </div><!--/tab-pane-->
                <div class="tab-pane" id="settings">


                    <hr>

                </div>

            </div><!--/tab-pane-->
        </div><!--/tab-content-->

    </div><!--/col-9-->
</div><!--/row-->
