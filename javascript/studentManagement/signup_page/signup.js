function handleSubmit(event) {
  event.preventDefault();

  // Get values from inputs
  const username = document.getElementById('username').value;
  const password = document.getElementById('password').value;
  const enroll = document.getElementById('enroll').value;
  const email = document.getElementById('email').value;

  console.log(username);
  
  if(!username || !password || !enroll || !email){
    alert("All fields Required")
  }

  const studentData = {
    username : username ,
    password : password,
    enroll : enroll,
    email :email    
  };

  console.log(studentData);

  // Save to localStorage
  localStorage.setItem("user", JSON.stringify(studentData));

  window.location.href = "../login_page/login.html";

}