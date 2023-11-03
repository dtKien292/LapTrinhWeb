<%-- 
    Document   : add
    Created on : Nov 3, 2023, 1:09:49 AM
    Author     : Admin
--%>

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
        <h1>${requestScope.er}</h1>
        <div style="background-color: white;border:1px solid black;padding: 10px;border-radius: 20px">
            <h1> Thêm vật tư</h1>
            <form action="add">
                <label class="pad_top">Mã vật tư:</label>
                <input type="text" name="mavtu" required><br>
                <label class="pad_top">Tên vật tư:</label>
                <input type="text" name="tenvtu" required><br>
                <label class="pad_top">Đơn vị tính:</label>
                <input type="text" name="dvtinh" required><br>
                <label class="pad_top">Phần trăm:</label>
                <input type="text" name="phantram" required><br>
                <label>&nbsp;</label>
                <input type="submit" value="ADD" class="margin_left">
            </form>
        </div>
    </body>
</html>