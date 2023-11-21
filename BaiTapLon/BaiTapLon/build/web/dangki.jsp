<%-- 
    Document   : dangki
    Created on : Nov 5, 2023, 6:15:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng kí</title>
        <link rel="stylesheet" href="dangKy.css">
        <link rel="stylesheet" href="base.css">
    </head>

    <body>
        <div class="inner-main">
            <div class="container">
                <div class="inner-wrap">
                    <div class="inner-form">
                        <h3>${requestScope.er}</h3>
                        <h3>${requestScope.er1}</h3>
                        <span class="inner-title">Đăng ký</span>
                        <form action="dangki" method="POST" class="form-1">
                            <label for="userName">Tên tài khoản</label> <br>
                            <input type="email" id="userName" name="userName" placeholder="Email/Số điện thoại/Tên đăng nhập" required=""> <br>
                            <label for="pass1">Mật khẩu</label> <br>
                            <input type="password" id="pass1" name="pass1" placeholder="Mật khẩu" required=""> <br>
                            <label for="pass2">Xác nhận mật khẩu</label> <br>
                            <input type="password" id="pass2" name="pass2" placeholder="Mật khẩu" required=""> <br>
                            <div class="button">
                                <input class="bt1" type="submit" value="Đăng ký">
                            </div>
                        </form>
                        <p>Bạn đã có tài khoản?<a href="dangnhap">Đăng nhập</a></p> 
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
