<%-- 
    Document   : dangnhap
    Created on : Nov 5, 2023, 8:56:13 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="dangKy.css">
    <link rel="stylesheet" href="base.css">
</head>
<body>
    <div class="inner-main">
        <div class="container">
            <div class="inner-wrap">
                <div class="inner-form">
                    <h3>${requestScope.er}</h3>
                    <span class="inner-title">Đăng nhập</span>
                    <form action="dangnhap" method="POST" class="form-1">
                        <label for="userName">Tên tài khoản</label> <br>
                        <input type="text" id="userName" name="user" placeholder="Email/Số điện thoại/Tên đăng nhập"> <br>
                        <label for="pass">Mật khẩu</label> <br>
                        <input type="password" id="pass" name="pass" placeholder="Mật khẩu"> <br>
                        <div class="button">
                            <input class="bt1" type="submit" value="Đăng nhập">
                        </div>
                    </form>
                    <p>Bạn chưa có tài khoản?<a href="dangki">Đăng ký</a></p> 
                </div>
            </div>
        </div>
    </div>
</body>

</html>
