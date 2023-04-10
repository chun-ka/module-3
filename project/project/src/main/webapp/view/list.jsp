<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16/11/2022
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>benh nhan</title>
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

        <h1 style="display: inline;margin-left: 660px">Danh sách bệnh nhân</h1>
    </div>
</div>
<div>
</div>

<div>
    <table class="table table-striped" id="benhnhan">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Mã bệnh án</th>
            <th scope="col">Mã bệnh nhân</th>
            <th scope="col">Tên bệnh nhân</th>
            <th scope="col">Ngày nhập viện</th>
            <th scope="col">Ngày ra viện</th>
            <th scope="col">Lý do nhập viện</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="benhnhan" items="${benhNhanList}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>BA-${benhnhan.getMaBenhAn()}</td>
                <td>BN-${benhnhan.getMaBenhNhan()}</td>
                <td>${benhnhan.getTenBenhNhan()}</td>
                <td>${benhnhan.getNgayNhapVien()}</td>
                <td>${benhnhan.getNgayRaVien()}</td>
                <td>${benhnhan. getLiDo()}</td>
                <td>
                    <button onclick="location.href='/benhnhan?action=edit&id=${benhnhan.getMaBenhNhan()}'" type="button"
                            class="btn btn-warning">
                        Edit
                    </button>
                </td>
                <td>
                    <button onclick="infoDelete('${benhnhan.getMaBenhNhan()}','${benhnhan.getMaBenhAn()}')" type="button"
                            class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<form action="/benhnhan?action=delete" method="post">
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Xác nhận
                    </h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input hidden type="text" id="deleteId" name="deleteId" value="${customer.getId()}"
                           style="width: 30px;border: none">
                    <span>Bạn có muốn xóa thông tin bệnh án </span>
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
<c:if test="${mess!=null}">
   <p>${mess}</p>
</c:if>

<script>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }


</script>
<script src="/jquery/jquery-3.5.1.min.js"></script>
<script src="/datatables/js/jquery.dataTables.min.js"></script>
<script src="/datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#benhnhan').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        })
    })
</script>
</body>
</html>

