$(document).ready(function () {
    $('.slide-main').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
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

function myFunction() {
    document.getElementById("dropdown").classList.toggle("show");
}
window.onclick = function (event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
            var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}


