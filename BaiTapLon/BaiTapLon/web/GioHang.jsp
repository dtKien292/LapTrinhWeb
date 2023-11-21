
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    
    if (session.getAttribute("account") == null) {
        response.sendRedirect("/btl/dangnhap");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="base.css">
        <link rel="stylesheet" href="giohang.css">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" type="text/css" href="https://kenwheeler.github.io/slick/slick/slick-theme.css" />
        
    </head>
    <body class="background-color">
        <div class="header-top"  id="home">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="inner-wrap">
                            <div class="inner-item">
                                <span>Theo dõi chúng tôi</span>
                                <a href="https://www.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                                <a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
                                <a href="https://www.tiktok.com/"><i class="fa-brands fa-tiktok"></i></a>
                            </div>
                            <div class="inner-item">  
                                <i class="fa-solid fa-phone"></i>
                                Hotline: 0123456789
                            </div>
                            <div class="inner-item">
                                <form action="dangxuat" method="POST">
                                    <input type="submit" value="Đăng xuất" class="no-border">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <header class="header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-1">
                        <div class="inner-logo">
                            <a href="#">
                                <img src="image/image.png" alt="Ảnh logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-9">
                        <form action="timkiem" class="inner-search">
                            <input type="text" name="name" required placeholder="Bạn đang tìm kiếm sản phẩm gì...">
                            <button type="submit">
                                <img src="image/search.svg" alt="">
                            </button>
                        </form>
                    </div>

                </div>
            </div>
        </header>

        <div class="section-1">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="inner-cart">
                            <table>
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá</th>
                                        <th>Số lượng</th>
                                        <th>Tổng</th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="stt" value="1" />
                                    <c:forEach items="${sessionScope.cart.items}" var="i">
                                        <tr>
                                            <td>${stt}</td>
                                            <td>${i.sanpham.tensp}</td>
                                            <td><fmt:formatNumber pattern="#,###,###" value="${i.sanpham.giaban}" />VND</td>
                                            <td>
                                                <button> <a href="process?num=-1&id=${i.sanpham.id}">-</a> </button>
                                                <input id="soluong" type="text" readonly value="${i.soluong}">
                                                <button> <a href="process?num=1&id=${i.sanpham.id}">+</a> </button>
                                            </td>
                                            <td><fmt:formatNumber pattern="#,###,###" value="${i.sanpham.giaban*i.soluong}" />VND</td>
                                            <td>
                                                <form action="process" method="post">
                                                    <input type="hidden" name="id" value="${i.sanpham.id}" />
                                                    <input type="submit" value="Return item" />
                                                </form>
                                            </td>
                                        </tr>
                                        <c:set var="stt" value="${stt + 1}" />
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form action="checkout" method="post"> 
            <div class="section-2">
                <div class="container">
                    <div class="row">
                        <div class="col-7">
                            <div class="inner-info">
                                <h3>1. Khách hàng nhập thông tin</h3>

                                <span>Thông tin khách hàng</span> <br>
                                <label for="">Họ tên:</label> <br>
                                <input type="text" required name="hoten"> <br>
                                <label for="">Điện thoại:</label><br>
                                <input type="text" name="dienthoai" required> <br>
                                <label for="">Địa chỉ:</label><br>
                                <input type="text" name="diachi" required> <br>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="inner-ok">
                                <h3>2. Ghi chú cho đơn hàng</h3>
                                <textarea name="" id="" cols="46" rows="4"></textarea>
                                <input class="dh" type="submit" value="Đặt hàng" />
                                <a href="index">Về lại trang chủ</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="section-12">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="inner-service">
                            <div class="img">
                                <img src="image/XMLID 141.svg" alt="">
                            </div>
                            <div class="desc">
                                <p>SẢN PHẨM CHẤT LƯỢNG</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="inner-service">
                            <div class="img">
                                <img src="image/Group 780.svg" alt="">
                            </div>
                            <div class="desc">
                                <p>DỊCH VỤ CHUYÊN NGHIỆP</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="inner-service">
                            <div class="img">
                                <img src="image/truck 1.svg" alt="">
                            </div>
                            <div class="desc">
                                <p>GIAO HÀNG TOÀN QUỐC</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="inner-service">
                            <div class="img">
                                <img src="image/Group 806.svg" alt="">
                            </div>
                            <div class="desc">
                                <p>MIỄN PHÍ BẢO HÀNH</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Section-12 -->

        <!-- Section-13 -->
        <div class="section-13">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <img class="logo-footer" src="core/logo-main.svg" alt="">
                        <div class="contact">
                            <p>HOTLINE BÁN HÀNG</p>
                            <div class="img">
                                <img src="demo/fluent_video-person-call-16-filled.png" alt="">
                                <p>0912 250 625</p>
                            </div>
                        </div>
                        <div class="contact">
                            <p>CHĂM SÓC KHÁCH HÀNG</p>
                            <div class="img">
                                <img src="demo/fluent_video-person-call-16-filled.png" alt="">
                                <p>0912 250 625</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="inner-wrap">
                            <div class="CSKH">
                                <h5>CHĂM SÓC KHÁCH HÀNG</h5>
                                <p>Chính sách bảo hành<br> Chính sách đổi trả sản phẩm <br>Hỏi đáp mua hàng online</p>
                            </div>
                            <div class="store">
                                <h5>CỬA HÀNG</h5>
                                <p>Laptop chính hãng <br>
                                    Bảo hành chọn đời <br>
                                    Sản phẩm khuyến mại
                                </p>
                            </div>
                            <div class="about">
                                <h5>VỀ CHÚNG TÔI</h5>
                                <p>Giới thiệu công ty <br>
                                    Hệ thống cửa hàng <br>
                                    Tuyển dụng
                                </p>
                            </div>
                            <div class="lienHe">
                                <h5>LIÊN HỆ</h5>
                                <p>
                                    <img src="image/Location2.png" alt="">56, Trần Phú, Hà Đông,
                                    <br> Hà Nội <br>
                                    <img src="image/Letter.png" alt="">Hệ thống cửa hàng <br>
                                    <img src="image/call.png" alt="">Tuyển dụng
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End section-13 -->
        <div class="button-contact">
            <a class="button-1" href="https://www.facebook.com/">
                <i class="fa-brands fa-facebook-messenger"></i>
            </a>
        </div>
        <footer class="footer">
            <p>Copyright @2019 LAPTOP.vn</p>
        </footer>

        <!-- link nhúng -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
        </script>
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
                integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="slide.js"></script>
    </body>
</html>
