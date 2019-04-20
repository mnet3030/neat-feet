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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="${pageContext.request.contextPath}/view/admin/html/css/productTable.css" rel="stylesheet" type="text/css" media="all" />
    <%@page import="com.imagine.neatfeat.model.dal.entity.Product" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Manage <b>Employees</b></h2>
                </div>


                <div class="col-sm-6">

                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                        <span>Add New Employee</span></a>

                </div>
                <form method="get" action="productServlet">

                    <div class="form-group has-search col-sm-4">
                        <input name="productName" type="text" class="form-control" placeholder="Search" id="search" style="margin-right: 150px">
                    </div>

                    <%--<input type="text" name="productName" size="30px">--%>
                    <input type="hidden" name="action" value="search">
                    <button class="btn btn-danger" type="submit" ><span>Search</span></button>
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
                        <button href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="productId('${product.id}')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></button>
                        <button href="#deleteEmployeeModal"  onclick="deleteRowFromDB(this)"  class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></button>
                    </td>
                </tr>
                <%--<tr>--%>

            </c:forEach>

            </tbody>
        </table>
        <div class="clearfix">
            <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
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
                                    <option value="${current.id}"><c:out value="${current.description}"/></option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Brand</label>
                        <select name="brand" class="form-control">
                            <c:if test="${brands != null}">
                                <c:forEach items="${brands}" var="current">
                                    <option value="${current.id}"><c:out value="${current.description}"/></option>
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
                        <input type="file" name="image1" id="image1" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>photo</label>
                        <input type="file" name="image2" id="image2" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>photo</label>
                        <input type="file" name="image3" id="image3" accept=".jpg,.png,.svg" class="form-control">
                    </div>


                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit"  class="btn btn-success" value="Add">
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
                        <textarea id="detailedDescription" name="detailedDescription" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select name="category" class="form-control" id="category">
                            <c:if test="${categories != null}">
                                <c:forEach items="${categories}" var="current">
                                    <option value="${current.id}"><c:out value="${current.description}"/></option>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Brand</label>
                        <select name="brand" class="form-control" id="brand">
                            <c:if test="${brands != null}">
                                <c:forEach items="${brands}" var="current">
                                    <option value="${current.id}"><c:out value="${current.description}"/></option>
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
                        <input type="file" name="image" id="pimage" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>photo</label>
                        <input type="file" name="image1" id="pimage1" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>photo</label>
                        <input type="file" name="image2" id="pimage2" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>photo</label>
                        <input type="file" name="image3" id="pimage3" accept=".jpg,.png,.svg" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit"  class="btn btn-success" value="Save">
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
                    <h4 class="modal-title">Delete Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete these Records?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/productManipulation.js"></script>
<script>
    function productId(pid){
        console.log(pid);
        var productid = pid;
        $.ajax({
            url:"${pageContext.request.contextPath}/productEdit",
            type:"GET",
            data: {productid:pid},
            dataType:'json',
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
</body>
</html>
