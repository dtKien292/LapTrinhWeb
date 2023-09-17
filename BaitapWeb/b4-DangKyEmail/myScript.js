function createCommentElement(comment) {
  var commentElement = document.createElement("div");
  commentElement.className = "comment";

  var commentText = document.createElement("span");
  commentText.textContent = comment;

  var editLink = document.createElement("a");
  editLink.textContent = "Sửa";
  editLink.href = "#";
  editLink.onclick = function() {
    editComment(commentElement);
    return false;
  };

  var deleteLink = document.createElement("a");
  deleteLink.textContent = "Xóa";
  deleteLink.href = "#";
  deleteLink.onclick = function() {
    deleteComment(commentElement);
    return false;
  };

  var commentButtons = document.createElement("span");
  commentButtons.className = "comment-buttons";
  commentButtons.appendChild(editLink);
  commentButtons.appendChild(document.createTextNode(" "));
  commentButtons.appendChild(deleteLink);

  commentElement.appendChild(commentButtons);
  commentElement.appendChild(document.createTextNode(" "));
  commentElement.appendChild(commentText);

  return commentElement;
}

function addComment() {
  var input = document.getElementById("commentInput");
  var comment = input.value;

  if (comment !== "") {
    var commentContainer = document.getElementById("commentContainer");
    var newComment = createCommentElement(comment);
    commentContainer.insertBefore(newComment, commentContainer.firstChild);
    input.value = "";
  }
}

function clearInput(){
  document.getElementById("commentInput").value = "";
}

function editComment(commentElement) {
  var newComment = prompt("Nhập nội dung mới:", commentElement.textContent);
  if (newComment !== null) {
    commentElement.children[1].textContent = newComment;
  }
}

function deleteComment(commentElement) {
  commentElement.remove();
}