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
        <div style="background-color: white;border:1px solid black;padding: 10px;border-radius: 20px;display: flex;text-align: center;flex-direction: column">
            <h1>Cập nhật vật tư</h1>
            <form action="update" method="POST">
                <label class="pad_top">Mã vật tư:</label>
                <input type="text" name="mavtu" value="${requestScope.data.mavtu}" readonly=""><br>
                <label class="pad_top">Tên vật tư:</label>
                <input type="text" name="tenvtu" value="${requestScope.data.tenvtu}" required><br>
                <label class="pad_top">Đơn vị tính:</label>
                <input type="text" name="dvtinh" value="${requestScope.data.dvtinh}" required><br>
                <label class="pad_top">Phần trăm:</label>
                <input type="text" name="phantram" value="${requestScope.data.phantram}" required><br>
                <label>&nbsp;</label>
                <input type="submit" value="Update" class="margin_left">
            </form>
        </div>
    </body>
</html>
