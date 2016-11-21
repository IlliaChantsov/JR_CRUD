<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap-theme.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/bootstrap-3.3.7-dist/css/bootstrap.css"/>">

<html>
<head>
    <title>JR CRUD</title>
    <meta charset="utf-8"/>
    <script src="/resources/js/jquery-3.1.0.min.js"></script>
    <script src="/resources/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="/resources/js/getAllUsers.js"></script>
    <script src="/resources/js/findAllUsers.js"></script>
    <script src="/resources/js/addUser.js"></script>
    <script src="/resources/js/editUser.js"></script>
    <script src="/resources/js/removeUser.js"></script>
    <script src="/resources/js/findByName.js"></script>
    <script src="/resources/js/sortByName.js"></script>
    <script src="/resources/js/paging.js"></script>
    <script src="/resources/js/generatedTestUsers.js"></script>
</head>
<body>

<form:form role="form" class="form-inline" cssStyle="margin: 2% 0% 2% 2%">
    <input type="text" class="form-control" id="name" placeholder="Name" >
    <input type="text" class="form-control" id="age" placeholder="Age" >
    <input type="text" class="form-control" id="isAdmin" placeholder="Is admin? yes/no" >

    <button id="addUser" class="btn btn-success" >Add User</button>
    <button id="findAllUser" class="btn btn-primary" style="margin-left: 2%">All Users</button>

    <input type="text" class="form-control" id="findName" placeholder="Name" style="margin-left: 2%">

    <button id="findByName" class="btn btn-info">Search by name</button>
    <button id="sortByName" class="btn btn-warning" style="margin-left: 2%">Sort by name</button>
</form:form>

<div class="table-responsive">
    <table class="table table-bordered table-hover">
        <thead >
        <tr class="info">
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
            <th>Admin</th>
            <th>Date of Creation</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody id="allUsers">
        </tbody>
    </table>
</div>

<div id="myModal" class="modal fade" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"><button class="close" type="button" data-dismiss="modal">×</button>
                <h4 class="modal-title">Update</h4>
            </div>
            <div class="modal-body">
                <form:form role="form" class="form-inline" cssStyle="margin: 2% 0% 2% 14%">
                    <input type="text" class="form-control" id="nameEdit" placeholder="Name" >
                    <input type="text" class="form-control" id="ageEdit" placeholder="Age" >
                    <input type="text" class="form-control" id="isAdminEdit" placeholder="Is admin? yes/no" >

                    <button id="submitEditUser" class="btn btn-success" data-dismiss="modal">Edit user</button>
                </form:form>
            </div>
            <div class="modal-footer"><button class="btn btn-default" type="button" data-dismiss="modal">Close</button></div>
        </div>
    </div>
</div>

<div style="margin: 1% 1% -3% 2%">
<button id="generatedTestUsers" class="btn btn-info" >Generate Users</button>
</div>

<ul class="pagination" style="margin: 1% 0% 0% 44%">

</ul>

</body>
</html>
