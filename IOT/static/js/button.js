// let isFanRotating = false;

// function click2() {
//     const fanIcon = document.getElementById('fanIcon');
//     const toggleIcon = document.getElementById('toggleIcon');

//     if (!isFanRotating) {    
//         fanIcon.classList.add('rotate-icon');
//         isFanRotating = true;
//         toggleIcon.className = 'fa-solid fa-toggle-on fa-2x';
//         var logText = "Quạt mở lúc" + new Date().toLocaleString();
//         localStorage.setItem("logData", logText);
//     } else {
//         fanIcon.classList.remove('rotate-icon');
//         isFanRotating = false;
//         toggleIcon.className = 'fa-solid fa-toggle-off fa-2x';
//         var logText = "Quạt tắt lúc" + new Date().toLocaleString();
//         localStorage.setItem("logData", logText);
//     }
// }

// let check = false;

// function click1(){
    
//     const fanIcon = document.getElementById('fanIcon1');
//     const toggleIcon = document.getElementById('toggleIcon1');
//     if(!check){
//         check = true;
//         toggleIcon.className = 'fa-solid fa-toggle-on fa-2x';
//         fanIcon.className ='fa-solid fa-lightbulb fa-5x';
//         var logText = "Đèn mở lúc" + new Date().toLocaleString();
//         localStorage.setItem("logData", logText);
//     }
//     else {
//         check = false;
//         toggleIcon.className = 'fa-solid fa-toggle-off fa-2x';
//         fanIcon.className = 'fa-regular fa-lightbulb fa-5x';
//         var logText = "Quạt tắt lúc" + new Date().toLocaleString();
//         localStorage.setItem("logData", logText);
//     }

// }