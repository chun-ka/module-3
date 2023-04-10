<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <h2 style="line-height: 80px">Add New Student</h2>
        </div>
    </caption>
    <form method="post">
        <table border="1" cellpadding="5" class="table table-striped">

            <tr>
                <th>ID</th>
                <td>
                    <input type="number" name="id" size="5px"/>
                </td>
            </tr>

            <tr>
                <th>Name</th>
                <td>
                    <input type="text" name="name" size="45" required pattern="^([A-Z][a-z]+ )+([A-Z][a-z]+)$" title="Nhập sai định dạng"/>
                </td>
            </tr>
            <tr>
                <th>Birthday</th>
                <td>
                    <input type="date" name="birthday" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>
                    <label> <input id="Nam" type="radio" name="gender" value="Nam"/>Nam</label>
                    <label> <input id="radio" type="radio" name="gender" value="Nữ"/>Nữ</label>
                </td>
            </tr>
            <%--            <tr>--%>
            <%--                <th>IdCard</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="IdCard" size="15"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <th>PhoneNumber</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="PhoneNumber" size="15"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <th>Email</th>--%>
            <%--                <td>--%>
            <%--                    <input type="text" name="Email" size="15"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <tr>
                <th>Address</th>
                <td>
                    <input type="text" name="address" size="45"/>
                </td>
            </tr>
            <tr>
                <th>ClassName</th>
                <td>
                    <select name="classId">
                        <option value="1">C0722G1</option>
                        <option value="2">C0822G1</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
    <%--    <h2>--%>
    <%--        <button onclick="location.href='/student'">List All Student</button>--%>
    <%--    </h2>--%>
</div>
<script>
    <c:if test="${mess!=null}">
    alert("${mess}");
    </c:if>
</script>
</body>
</html>
