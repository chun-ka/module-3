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
            <h2 style="line-height: 80px">Edit Student</h2>
        </div>
    </caption>
    <form method="post">
        <table border="1" cellpadding="5" class="table table-striped">

            <input type="number" hidden name="id" value="${student.getId()}" size="15"/>

            <tr>
                <th>Name</th>
                <td>
                    <input type="text" name="name" value=" ${student.getName()}" size="45" required pattern="^([A-Z][a-z]+ )+([A-Z][a-z]+)$" title="Nhập sai định dạng"/>
                </td>
            </tr>
            <tr>
                <th>Birthday</th>
                <td>
                    <input type="date" name="birthday" value="${student.getBirthday()}" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Gender</th>
                <td>
                    <label> <input type="radio" name="gender"
                                   value="Nam" ${student.getGender().equals('Nam') ? 'checked' : ''}/>Nam</label>
                    <label> <input type="radio" name="gender"
                                   value="Nữ" ${student.getGender().equals('Nữ') ? 'checked' : ''}/>Nữ</label>
                </td>
            </tr>
            <tr>
                <th>Address</th>
                <td>
                    <input type="text" name="address" value="${student.getAddress()}" size="45"/>
                </td>
            </tr>
            <tr>
                <th>ClassName</th>
                <td>
                    <select name="classId">
                        <option value="1" ${student.getClassId()==1?'selected':''}>C0722G1</option>
                        <option value="2" ${student.getClassId()==2?'selected':''}>C0822G1</option>
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
</body>
</html>
