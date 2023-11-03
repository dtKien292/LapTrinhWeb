

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">

        <script type="text/javascript">
            function doDelete(mavtu) {
                if (confirm("Chắc chắn xóa!!!")) {
                    window.location = "delete?mavtu=" + mavtu;
                }
            }
        </script>
    </head>
    <body>
        <h1>Danh sách vật tư</h1>
        <table>
            <tr>
                <th>Mã vật tư</th>
                <th>Tên vật tư</th>
                <th>Đơn vị tính</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="i">
                <tr>
                    <td>${i.mavtu}</td>
                    <td>${i.tenvtu}</td>
                    <td>${i.dvtinh}</td>
                    <td>
                        <a href="update?mavtu=${i.mavtu}">Update</a>
                        <a href="#" onclick="doDelete('${i.mavtu}')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <button id="addB">ADD</button>
        <br>
        <button id="show">Find</button>
        <script type="text/javascript">
            document.getElementById("addB").addEventListener("click", function () {
                window.location.href = "add.jsp";
            });
            document.getElementById("show").addEventListener("click", function () {
                window.location.href = "showsl";
            });
        </script>
    </body>
</html>
