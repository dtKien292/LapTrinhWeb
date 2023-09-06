
function checkInputs() {

    var em1 = document.getElementById('em1').value;
    var em2 = document.getElementById('em2').value;
    var name = document.getElementById('name').value;
    var textElements1 = document.getElementsByClassName('textToChange-1'); 
    var textElements2 = document.getElementsByClassName('textToChange-2');
    var textElements3 = document.getElementsByClassName('textToChange-3');

    if (em1 === '' ) {
        textElements1[0].style.color = 'red'; 
    }
    else{
        textElements1[0].style.color = 'white'; 
    }

    if (em2 === '' ) {
        textElements2[0].textContent = 'Thông tin này bắt buộc';
        textElements2[0].style.color = 'red'; 
    }
    else{
        textElements2[0].style.color = 'white'; 
    }

    if (name === '' ) {
        textElements3[0].style.color = 'red'; 
    }
    else{
        textElements3[0].style.color = 'white'; 
    }

    if (em1 !== em2 && em1!=='') {
      textElements2[0].style.color = 'red'; 
      textElements2[0].textContent = 'Thông tin không khớp'; 
    }else{
        textElements2[0].style.color = 'white'; 
    }
    if(em1 === em2 && em1!==''&& name!==''){
        window.location.href = "dangky.html";
    }
  }

function back(url){
    window.location.href = url;
}