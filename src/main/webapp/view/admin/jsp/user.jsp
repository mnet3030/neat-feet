<%--
  Created by IntelliJ IDEA.
  User: Nouran
  Date: 4/7/2019
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>user details</title>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/main.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/userAjax.js"></script>
    <link href="${pageContext.request.contextPath}/view/admin/html/css/simplePagination.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/view/admin/html/css/productTable.css" rel="stylesheet" type="text/css" media="all" />
    <%@page import="com.imagine.neatfeat.model.dal.entity.User"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>View <b>Customers</b></h2>
                </div>
                <form method="get" action="user">

                    <div class="form-group has-search col-sm-4">
                        <input name="userName" type="text" class="form-control" placeholder="Search" id="search">
                    </div>
                    <%--<input type="text" name="productName" size="30px">--%>
                    <input type="hidden" name="action" value="search">
                    <button class="btn btn-danger" type="submit"  style="margin-right:650px"><span>Search</span></button>
                </form>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <!--<th>

                    <!--<span class="custom-checkbox">
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
.
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
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Add Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
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
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">

            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Delete Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body"  style="overflow: scroll;">
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

<script type="text/javascript" src="${pageContext.request.contextPath}/view/admin/html/js/simplePagination.js"></script>
<script type="text/javascript">
    console.log("nof of pages   "+${requestScope.noOfPages});
    console.log("page no  "+${requestScope.pageNo});
    <c:if test="${requestScope.noOfPages != null && requestScope.noOfPages > 0}">
    $('#pagination-container').pagination({
        pages:${requestScope.noOfPages},
        displayedPages:8,
        cssStyle: 'light-theme',
        ellipsePageSet:true,
        currentPage:${requestScope.pageNo},
        hrefTextPrefix:'',
        selectOnClick:false,
        onPageClick:function(pageNumber, event){
            if(event != undefined) {
                event.preventDefault();
            }
            if (window.location.href.indexOf('&pageNo=') !== -1) {
                window.location.href = window.location.href.replace(new RegExp('pageNo=[0-9]+'), 'pageNo=' + pageNumber);
            } else {
                if(window.location.href.indexOf('?userName=') == -1){
                    if (window.location.href.indexOf('?pageNo=') == -1) {
                        window.location.href = window.location.href + '?pageNo=' + pageNumber;
                    }else{
                        window.location.href = window.location.href.replace(new RegExp('pageNo=[0-9]+'), 'pageNo=' + pageNumber);
                    }
                }else{
                    window.location.href = window.location.href + '&pageNo=' + pageNumber;
                }
            }

        }
    });
    </c:if>

</script>
</body>
</html>
