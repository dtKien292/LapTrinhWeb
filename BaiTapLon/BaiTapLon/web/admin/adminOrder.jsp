<%-- 
    Document   : adminOrder
    Created on : Nov 21, 2023, 8:50:50 PM
    Author     : hoabo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Chắc chắn xóa!!!")) {
                    window.location = "delete?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <h1></h1>
        <h1>Danh sách hóa đơn</h1>
        <table>
            <tr>
                <th>Mã hóa đơn</th>
                <th>Mã khách hàng</th>
                <th>Ngày</th>
                <th>Tổng tiền</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.datax}" var="i">
                <tr>
                    <td>${i.id}</td>
                    <td>${i.uid}</td>
                    <td>${i.date}</td>
                    <td>${i.totalmoney}</td>
                    <td>
                        <a>Xem</a>
                        <a>Xóa</a>
                        <a>Duyệt</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
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
