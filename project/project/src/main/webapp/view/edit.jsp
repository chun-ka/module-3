<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16/11/2022
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Student Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

</head>
<body>
<div align="center" class="container">
    <caption>
        <div class="col" style="background-color: gainsboro;margin-top: 5px;">
            <h2 style="line-height: 80px">Sửa thông tin bệnh án</h2>
        </div>
    </caption>
    <form method="post">
        <table border="1" cellpadding="5" class="table table-striped">
            <tr>
                <th>Mã bệnh án</th>
                <td>
                    <input type="text" name="maBenhAn" value=" ${benhNhan.getMaBenhAn()}" size="45" readonly/>
                </td>
            </tr>
            <tr>
                <th>Mã bệnh nhân</th>
                <td>
                    <input type="text" name="maBenhNhan" value="${benhNhan.getMaBenhNhan()}" size="15" readonly/>
                </td>
            </tr>
            <tr>
                <th>Tên bệnh nhân</th>
                <td>
                    <input type="text" name="tenBenhNhan" value="${benhNhan.getTenBenhNhan()}" size="15" readonly/>
                </td>
            </tr>
            <tr>
                <th>Ngày nhập viện</th>
                <td>
                    <input type="text" name="ngayNhapVien" value="${benhNhan.getNgayNhapVien()}" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày ra viện</th>
                <td>
                    <input type="text" name="ngayRaVien" value="${benhNhan.getNgayRaVien()}" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Lý do nhập viện</th>
                <td>
                    <input type="text" name="liDo" value="${benhNhan.getLiDo()}" size="45"/>
                </td>
            </tr>
            <tr>
                <td  align="center">
                    <input type="submit" value="Sửa"/>
                </td>
                <td  align="center">
                    <button onclick="location.href='/benhnhan'">Trở về danh sách</button>
                </td>
            </tr>
        </table>
    </form>
    <%--    <h2>--%>
    <%--        <button onclick="location.href='/student'">List All Student</button>--%>
    <%--    </h2>--%>
</div>
</body>
</html>
