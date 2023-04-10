<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13/11/2022
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/datatables/css/dataTables.bootstrap5.min.css">
</head>
<body>
<div class="row">
    <div class="col" style="background-color: gainsboro;margin-top: 5px;">

        <h1 style="display: inline;margin-left: 660px">Student List</h1>
        <form action="/student?action=search" method="post" style="display: inline">
            <input type="text" style="margin-left: 300px" size="10" placeholder="name" name="searchName" value="${searchName}">
            <input type="text" size="10" name="searchClassName" placeholder="ClassName" value="${searchClassName}">
            <input type="text"  size="10" name="searchAddress" placeholder="Address" value="${searchAddress}">
            <button class="btn btn-primary" style="margin-bottom: 10px;">Search</button>
        </form>
    </div>
</div>
<div>
    <button onclick="location.href='/student?action=add'" type="button" class="btn btn-primary"
            style="float:right;margin:5px 30px 0px">
        Add New
    </button>
</div>

<div>
    <table class="table table-striped" id="tableStudent">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Name</th>
            <th scope="col">Birthday</th>
            <th scope="col">Gender</th>
            <th scope="col">Address</th>
            <th scope="col">ClassName</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${studentList}" varStatus="status">
            <tr>
                <td>HS-${status.count}</td>
                <td>${student.getName()}</td>
                <td>${student.getBirthday()}</td>
                <td>${student.getGender()}</td>
                <td>${student.getAddress()}</td>
                <td>${student.getClassName()}</td>
                <td>
                    <button onclick="location.href='/student?action=edit&id=${student.getId()}'" type="button"
                            class="btn btn-warning">
                        Edit
                    </button>
                </td>
                <td>
                    <button onclick="infoDelete('${student.getId()}','${student.getName()}')" type="button"
                            class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<form action="/student?action=delete" method="post">
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Delete
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input hidden type="text" id="deleteId" name="deleteId" value="${customer.getId()}"
                           style="width: 30px;border: none">
                    <span>Delete student by name </span>
                    <span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <button class="btn btn-primary">Yes</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }

    <c:if test="${mess!=null}">
    alert("${mess}");
    </c:if>
    <c:if test="${mess1!=null}">
    alert("${mess1}");
    </c:if>
</script>
<script src="/jquery/jquery-3.5.1.min.js"></script>
<script src="/datatables/js/jquery.dataTables.min.js"></script>
<script src="/datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 2
        })
    })
</script>
</body>
</html>
