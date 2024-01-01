let list = document.querySelector('.slide-show .list-images');
let items = document.querySelectorAll('.slide-show .list-images .item');

let active = 0;
let lenghtItems = items.length - 1;

let refreshSlider = setInterval(() => { reloadSlider() }, 3000);

function reloadSlider() {
  if (active + 1 > lenghtItems) {
    active = 0;
  }
  else {
    active = active + 1;
  }
  let checkLeft = items[active].offsetLeft;
  list.style.left = -checkLeft + 'px';
}

let list2 = document.querySelector('#banner-05 .slide-banner5');
let items2 = document.querySelectorAll('#banner-05 .slide-banner5 .buy-now');

let state = 0;
function reloadSliderBanner5() {
  state = state + 1;
  if (state % 2 == 1) {
    list2.style.left = -450 + 'px';
  }
  else {
    list2.style.left = +0 + 'px';
  }
}

// đổi state cho 3 button trong thẻ header
const buttons1 = document.querySelectorAll('.cn-disabled, .cn-able');
buttons1.forEach(button => {
  button.addEventListener('click', handleClick1);
});

function handleClick1() {
  const current = this;
  document.querySelector('.cn-able').classList.remove('cn-able');
  current.classList.add('cn-able');
  current.classList.remove('cn-disabled');
  buttons1.forEach(button => {
    if (button !== current) {
      button.classList.add('cn-disabled');
    }
  });

}

// đổi state cho 5 button trong thẻ type
const nameContainer = document.getElementById('type-name');
const buttons2 = nameContainer.querySelectorAll('button');

buttons2.forEach(button => {
  button.addEventListener('click', handleClick2);
});

function handleClick2() {
  const current = this;
  nameContainer.querySelector('.able').classList.remove('able');
  current.classList.add('able');
  current.classList.remove('disabled');
  buttons2.forEach(button => {
    if (button !== current) {
      button.classList.add('disabled');
    }
  });
}

// đổi state cho 2 button tron thẻ section-1
const section1 = document.getElementById('section-1');
const buttons3 = section1.querySelectorAll('button');

buttons3.forEach(button => {
  button.addEventListener('click', handleClick3);
});

function handleClick3() {
  current = this;
  const other = buttons3.find(button => button !== current);
  current.classList.add('section-1-able');
  current.classList.remove('section-1-disabled');
  other.classList.remove('section-1-able');
  other.classList.add('section-1-disabled');
}

//đổi 3 value tron 3 thẻ input trong section-2
const section = document.getElementById('section-2');
const inputs = section.querySelectorAll('input');
const values = ['Dao Chy', '+84 xxx xxx xxx', '18 21/50 Yen Xa, Tan Trieu, Thanh Tri, Ha Noi, Viet Nam'];

inputs.forEach((input, index) => {
  input.addEventListener('click', () => {
    handleChange(index);
  });
});

function handleChange(index) {
  inputs[index].value = values[index];
  inputs.forEach((input, i) => {
    if (i !== index) {
      input.value = values[i];
    }
  });
}

const banner = document.getElementById('banner-05');
function changeImg() {
  banner.style.backgroundImage = 'url("banner web/order success.png")';
  setTimeout(() => {
    banner.style.backgroundImage = 'url("banner web/banner-05.jpg")';
  }, 2000);
}
function actionBuy() {
  reloadSliderBanner5();
  changeImg()
}


// hiện thị thẻ cart
let theCart = document.querySelector('#the-cart');
const cartAct = document.getElementById('cart-svg');

const blacks = document.getElementById('shadow');

function openCart() {
  an_the();
  theCart.style.zIndex = 10;
  cartAct.classList.add('svg-active');
  blacks.style.zIndex = 9;
  blacks.style.backgroundColor = 'rgba(45, 45, 45, 0.10)';
}

let theLogin = document.querySelector('#the-login');
const profileAct = document.getElementById('profile-svg');

function openLogin() {
  an_the();
  theLogin.style.zIndex = 10;
  profileAct.classList.add('svg-active');
  blacks.style.zIndex = 9;
  blacks.style.backgroundColor = 'rgba(45, 45, 45, 0.10)';
}

let theSignUp = document.querySelector('#the-signup');

function openSignUp() {
  an_the();
  theSignUp.style.zIndex = 10;
  profileAct.classList.add('svg-active');
  blacks.style.zIndex = 9;
  blacks.style.backgroundColor = 'rgba(45, 45, 45, 0.10)';
}

let theProfile = document.querySelector('#the-profile');

function openProfile(){
  an_the();
  theProfile.style.zIndex = 10;
  profileAct.classList.add('svg-active');
  blacks.style.zIndex = 9;
  blacks.style.backgroundColor = 'rgba(45, 45, 45, 0.10)';
}

let theOrder = document.querySelector('#the-order');
const orderAct = document.getElementById('order-svg');

function openOrder(){
  an_the();
  theOrder.style.zIndex = 10;
  orderAct.classList.add('svg-active');
  blacks.style.zIndex = 9;
  blacks.style.backgroundColor = 'rgba(45, 45, 45, 0.10)';
}

function an_the(){
  theCart.style.zIndex = -99;
  theLogin.style.zIndex = -99;
  theSignUp.style.zIndex = -99;
  theProfile.style.zIndex = -99;
  theOrder.style.zIndex = -99;
  blacks.style.zIndex = -50;
  blacks.style.backgroundColor = 'white';
  cartAct.classList.remove('svg-active');
  profileAct.classList.remove('svg-active');
  orderAct.classList.remove('svg-active')
}

// hover ảnh
const image1 = document.getElementById('type-img-2');
const image2 = document.getElementById('type-img-3');
const image3 = document.getElementById('type-img-4');

let img1Src = "image/váy đen.png"; 
let img2Src = "image/váy đen.png";
let img3Src = "image/váy đen.png";

let hoverImg1Src = "image/váy đen (1).png";
let hoverImg2Src = "image/váy đen (1).png"; 
let hoverImg3Src = "image/váy đen (1).png";

image1.addEventListener('mouseenter', function(){
  image1.src = hoverImg1Src;
});

image1.addEventListener('mouseleave', function(){
  image1.src = img1Src;
});

image2.addEventListener('mouseenter', function(){
  image2.src = hoverImg2Src; 
});

image2.addEventListener('mouseleave', function(){
  image2.src = img2Src;
});

image3.addEventListener('mouseenter', function(){
  image3.src = hoverImg3Src;
}); 

image3.addEventListener('mouseleave', function(){
  image3.src = img3Src;
});