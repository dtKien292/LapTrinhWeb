<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    
    if (session.getAttribute("account") == null) {
        response.sendRedirect("/btl/dangnhap");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

    <head>
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
        <link rel="stylesheet" href="chiTietsp.css">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" type="text/css" href="https://kenwheeler.github.io/slick/slick/slick-theme.css" />
        <title>Document</title>
        <style>
            .header .inner-gioHang i{
                color: #FFF;
                font-size: 30px;
            }
            .header .inner-gioHang .inner-badge{
                position: absolute;
                top: -15px;
                right: 34px;
                border: none;
                display: inline-flex;
                min-width: 20px;
                height: 20px;
                border-radius: 25px;
                font-size: 12px;
                align-items: center;
                justify-content: center;
                color: #FFF;
                padding: 5px;
                background-color: #ff2200;
            }


            .dropbtn {
                background-color: #3498DB;
                color: white;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropbtn:hover,
            .dropbtn:focus {
                background-color: #2980B9;
            }

            .dropdown-profile {
                position: relative;
                display: inline-block;
            }
            .dropdown-profile img{
                width: 50px;
                height: auto;
                border-radius: 50%;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                margin-top: 10px;
                min-width: 160px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                z-index: 1;
                border-radius: 10px;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                box-shadow: 0 1px 1px 0 rgb(0 0 0 / 20%);
                transition: all 0.3s ease-in-out;
            }

            .dropdown-content a:hover {
                background-color: var(--color-2);
                color: #FFF;
                transition: all 0.3s ease-in-out;
            }

            .show {
                display: block;
            }
        </style>
    </head>

    <body class="background-color">
        <c:set var="i" value="${requestScope.data}" />
        <!-- Header -->
        <div class="header-top" id="home">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="inner-wrap">
                            <span>Laptop uy tín số 1 Việt Nam</span>
                            <div class="inner-item">
                                <span>Theo dõi chúng tôi</span>
                                <a href="https://www.facebook.com/"><i class="fa-brands fa-facebook"></i></a>
                                <a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a>
                                <a href="https://www.tiktok.com/"><i class="fa-brands fa-tiktok"></i></a>
                            </div>
                            <div class="inner-item">
                                <i class="fa-solid fa-headset"></i>
                                Hỗ trợ
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
                            <div class="dropdown-profile">
                                <a>
                                    <img onclick="myFunction()" class="dropbtn" src="image/avatar.png" alt="">
                                </a>
                                <div id="dropdown" class="dropdown-content">
                                    <a id="myLink" style="${sessionScope.account.role == 1? '' : 'display: none;'}" href="thongtin?account=${sessionScope.account.account}">
                                        Thông Tin
                                    </a>
<!--                                    <a href="">Lịch sử mua hàng</a>-->
                                    <a id="myLink" style="${sessionScope.account.role == 2 ? '' : 'display: none;'}" href="aaa">
                                        Duyệt đơn hàng
                                    </a>
                                </div>
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
                            <a href="index.html">
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
                    <div class="col-xl-2">
                        <div class="inner-gioHang">
                            <a href="giohang">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                            <span class="inner-badge">${sessionScope.size==null?0:sessionScope.size}</span>
                        </div>
                    </div>
                </div>
            </div>

        </header>
        <!-- End Header -->

        <!-- section-1 -->
        <div class="section-1">
            <div class="container">
                <div class="row">
                    <div class="inner-wrap">
                        <div class="col-4">
                            <div class="inner-image">
                                <img id="image" src="image/${i.img1}" alt="">
                            </div>
                            <div class="imgChange">
                                <img onclick="change1()"
                                     src="image/${i.img1}" alt="">
                                <img onclick="change2()"
                                     src="image/${i.img2}" alt="">
                                <img onclick="change3()"
                                     src="image/${i.img3}" alt="">
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="inner-price">
                                <div class="inner-name"><h3>${i.tensp}</h3></div>
                                <h5>Deal: <fmt:formatNumber pattern="###,###,###" value="${i.giaban}"/> VNĐ </h5>
                                <p> <del> <fmt:formatNumber pattern="###,###,###" value="${i.giaban*1.2}"/> VNĐ </del>VNĐ</p>
                            </div>
                            <div class="inner-gif">
                                <div class="inner-title">
                                    <i class="fa-solid fa-gift"></i>
                                    Quà tặng/Khuyến mãi
                                </div>
                                <p>✅ Tặng Windows 11 bản quyền theo máy</p>
                                <p>✅ Miễn phí cân màu màn hình công nghệ cao</p>
                                <p>✅ Balo thời trang</p>
                                <p>✅ Chuột không dây + Bàn di cao cấp</p>
                                <p>✅ Tặng gói cài đặt, bảo dưỡng, vệ sinh máy trọn đời</p>
                                <p>✅ Tặng Voucher giảm giá cho lần mua tiếp theo</p>
                            </div>
                            <form name="f" action="" method="POST"  >
                                <input type="submit"  class="btn-cart" onclick="buy('${i.id}')" value="Thêm vào giỏ hàng" />
                            </form>

                        </div>
                        <div class="col-4">
                            <h4>Thông số kỹ thuật</h4>
                            <table>
                                <tr>
                                    <td>Màn hình</td>
                                    <td>${i.manhinh}</td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td>${i.cpu}</td>
                                </tr>
                                <tr>
                                    <td>RAM</td>
                                    <td>${i.ram}</td>
                                </tr>
                                <tr>
                                    <td>Ổ cứng</td>
                                    <td>${i.ocung}</td>
                                </tr>
                                <tr>
                                    <td>Đồ họa</td>
                                    <td>${i.dohoa}</td>
                                </tr>
                                <tr>
                                    <td>Hệ điều hành</td>
                                    <td>${i.hdh}</td>
                                </tr>
                                <tr>
                                    <td>Trọng lượng</td>
                                    <td>${i.trongluong}</td>
                                </tr>
                                <tr>
                                    <td>Kích thước</td>
                                    <td>${i.kichthuoc}</td>
                                </tr>
                                <tr>
                                    <td>Xuất xứ</td>
                                    <td>${i.xuatxu}</td>
                                </tr>
                                <tr>
                                    <td>Năm ra mắt</td>
                                    <td>${i.nam}</td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- section-1 -->

        <!-- Section-12 -->
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
        <div class="button-home">
            <a class="button-1" href="#home">
                <i class="fa-solid fa-chevron-up"></i>
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
<script type="text/javascript">
                                    function change1() {
                                        document.getElementById('image').src = "image/${requestScope.data.img1}";
                                    }
                                    function change2() {
                                        document.getElementById('image').src = "image/${requestScope.data.img2}";
                                    }
                                    function change3() {
                                        document.getElementById('image').src = "image/${requestScope.data.img3}";
                                    }
                                    function buy(id) {

                                        document.f.action = "buy?id=" + id;
                                        document.f.submit();
                                    }
</script>
