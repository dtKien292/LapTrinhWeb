function playOrStopAudioOnClick(imageId, audioId) {
    var image = document.getElementById(imageId);
    var audio = document.getElementById(audioId);
      
    // Biến trạng thái hiện tại của âm thanh
    var isAudioPlaying = false;
      
    // Gán sự kiện click (bấm chuột vào)
    image.addEventListener('click', function() {
    if (isAudioPlaying) {
        // Dừng phát âm thanh
        audio.pause();
        audio.currentTime = 0;
        isAudioPlaying = false;
    } else {
        // Phát âm thanh
        audio.play();
        isAudioPlaying = true;
        }
    });
}

function changeImageOnClick(imageId, newImageSrc) {
    var image = document.getElementById(imageId);
    
    var originalImageSrc = image.src;
    var newImage = new Image();
    newImage.src = newImageSrc;
    
    var isCurrentImageNew = false;
    
    image.addEventListener('click', function() {
      if (isCurrentImageNew) {
        image.src = originalImageSrc;
        isCurrentImageNew = false;
      } else {
        image.src = newImageSrc;
        isCurrentImageNew = true;
      }
    });
  }
  function changeImageOnHover(imageId, newImageSrc) {
    var image = document.getElementById(imageId);
    
    var originalImageSrc = image.src;
    
    image.addEventListener('mouseover', function() {
      image.src = newImageSrc;
    });

    image.addEventListener('mouseout', function() {
      image.src = originalImageSrc;
    });
}