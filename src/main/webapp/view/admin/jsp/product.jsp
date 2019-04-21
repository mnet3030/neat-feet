<%--
  Created by IntelliJ IDEA.
  User: Aly
  Date: 4/6/2019
  Time: 1:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/view/admin/html/css/simplePagination.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="${pageContext.request.contextPath}/view/admin/html/css/productTable.css" rel="stylesheet"
          type="text/css" media="all"/>
    <%@page import="com.imagine.neatfeat.model.dal.entity.Product" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage <b>Products</b></h2>
                </div>
                <div class="col-sm-6">
                    <br>
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons"
                                                                                               style="margin-right:30px">&#xE147;</i>
                        <span>Add New Product</span></a>

                </div>
                <form method="get" action="productServlet">

                    <div class="form-group has-search col-sm-4">
                        <input name="productName" type="text" class="form-control" placeholder="Search" id="search">
                    </div>

                    <%--<input type="text" name="productName" size="30px">--%>
                    <input type="hidden" name="action" value="search">
                    <button class="btn btn-danger" type="submit" style="margin-right:650px"><span>Search</span></button>
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
                                <select name="category" class="form-control">
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
                                <select name="brand" class="form-control">
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
                                <input type="text" name="quantity" class="form-control" required>
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
                                <select name="category" class="form-control" id="category">
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
                                <select name="brand" class="form-control" id="brand">
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
                                <input type="text" id="quantity" name="quantity" class="form-control" required>
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
                        <img src="" onerror="this.src='${pageContext.request.contextPath}/ProductIamges/default.jpg'" id="firstPhoto" width="250" height="250"><br>
                        <img src="" onerror="this.src='${pageContext.request.contextPath}/ProductIamges/default.jpg'" id="secondPhoto" width="250" height="250"><br>
                        <img src="" onerror="this.src='${pageContext.request.contextPath}/ProductIamges/default.jpg'" id="thirdPhoto" width="250" height="250"><br>
                        <img src="" onerror="this.src='${pageContext.request.contextPath}/ProductIamges/default.jpg'" id="fourthPhoto" width="250" height="250">

                    <%--${pageContext.request.contextPath}/NewUserIamges/${user.getPhotoUrl()}--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
