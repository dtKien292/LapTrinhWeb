// Global Variables
let username = '';

// Login Form
const loginForm = document.getElementById('login-form');

loginForm.addEventListener('submit', (e) => {
  e.preventDefault();

  username = document.getElementById('username').value;
  const password = document.getElementById('password').value;

  if (username === '' || password === '') {
    alert('Vui lòng nhập tên đăng nhập và mật khẩu!');
  } else {
    alert('Đăng nhập thành công!');

    // Hide login form
    loginContainer.style.display = 'none';

    // Show user info in comment container
    const userInfo = document.getElementById('user-info');
    userInfo.innerText = `Đang đăng nhập với tên người dùng: ${username}`;

    // Show comment form and comment list
    commentContainer.style.display = 'block';
  }
});

// Comment Form
const commentForm = document.getElementById('comment-form');
const commentList = document.getElementById('comment-list');

commentForm.addEventListener('submit', (e) => {
  e.preventDefault();

  const commentInput = document.getElementById('comment-input').value;

  if (commentInput !== '') {
    const comment = document.createElement('div');
    comment.className = 'comment';
    comment.innerHTML = `
      <p class="username">${username}</p>
      <p>${commentInput}</p>
      <p class="timestamp">${getCurrentDateTime()}</p>
    `;

    commentList.appendChild(comment);

    // Clear comment input
    commentForm.reset();
  }
});

// Helper function to get current date and time
function getCurrentDateTime() {
  const now = new Date();
  const date = now.toLocaleDateString();
  const time = now.toLocaleTimeString();
  return `${date} ${time}`;
}