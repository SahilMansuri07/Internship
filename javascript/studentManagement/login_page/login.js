function handleSubmit(event) {
  event.preventDefault();

  const password = document.getElementById('password').value;
  const email = document.getElementById('email').value;

  console.log(email);
  console.log(password);

  if( !password || !email){
    alert("All fields Required")
  }

  // Get data from localStorage
  const saved = localStorage.getItem("user");
  const user = JSON.parse(saved);
 
  console.log("Stored data:", user);

  if (email === user.email && password === user.password) {
    window.location.href = "../homepage/home.html";
  } else {
    alert("Invalid email or password");
  }
}