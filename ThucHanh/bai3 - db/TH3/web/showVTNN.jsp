<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <table>
            <tr>
                <th>Mã vật tư</th>
                <th>Tên vật tư</th>
                <th>Đơn vị tính</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="i">
                <tr>
                    <td>${i.mavtu}</td>
                    <td>${i.tenvtu}</td>
                    <td>${i.dvtinh}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
