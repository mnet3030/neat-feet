<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Registration</title>
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
</head>

<body>
<div class="wrapper">
    <div class="inner">
        <form action="register" method="post" class="validate-form" enctype="multipart/form-data">
            <h2>Create a new account</h2>
            <c:if test="${alreadyRegistered != null}">
                <font color="red" size="5">THIS EMAIL IS ALREADY REGISTERED</font>
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
                <div class="form-wrapper validate-input" data-validate="Credit limit is required & greater than 0">
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
                <div class="form-wrapper validate-input" data-validate="Enter a valid phone number">
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
                    <input type="file" name="image" id="image" accept=".jpg,.png,.svg" class="form-control">
                </div>
                <div class="form-wrapper validate-input" data-validate="Birth date is required">
                    <label for="dp1">Birth Date *</label>
                    <span class="lnr lnr-calendar-full"></span>
                    <input type="text" class="form-control datepicker-here input100" name="birthdate"
                           data-language='en' data-date-format="dd M yyyy" id="dp1"
                    <c:if test="${alreadyRegistered != null}">
                           value="${bean.getBirthdate()}"
                    </c:if>
                    >
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
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>