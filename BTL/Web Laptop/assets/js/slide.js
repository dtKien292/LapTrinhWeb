// Slide main
$(document).ready(function(){
    $('.slide-main').slick({
      slidesToShow:1,
      slidesToScroll:1,
      arrows:true,
      autoplay: true,
      autoplaySpeed: 2000,
      infinite: true
    });
  });
//
$('.logo-slider').slick({
  slidesToShow: 6,
  slideToScroll: 1,
  autoplay: true,
  autoplaySpeed: 1500,
  infinite: true
});

function change1() {
  document.getElementById('image').src = "assets/images/image laptop/3004_c3zzbg9e5memiezohvjlvty9e_3819.jpg";
}
function change2() {
  document.getElementById('image').src = "assets/images/image laptop/3004_pa7ryjkiaw1yjcovhqdiihauj_4365.jpg";
}
function change3() {
  document.getElementById('image').src = "assets/images/image laptop/3004_qxt8dcy7yjibvcwvhlwvbhjag_4192.jpg";
}

function dangKy() {
  var ten = document.getElementById("userName").value;
  var p1 = document.getElementById("pass1").value;
  var p2 = document.getElementById("pass2").value;
  if(ten == ""){
      alert("Vui lòng nhập tên");
      return false;
  }
  if(p1 == "" || p2 == ""){
      alert("Vui lòng nhập mật khẩu");
      return false;
  }
  if(p1 != p2){
      alert("Mật khẩu chưa trùng khớp");
      return false;
  }else{
      alert("Chúc mừng đăng ký thành công");
      return true;
  }
}
