let users = [
  { username: "sahil", password: "1234" },
  { username: "amit", password: "abcd" }
];

function login(users, username, password) {
  for (let i = 0; i < users.length; i++) {
    if(
      users[i].username === username &&
      users[i].password === password
    ) {
      return "Login Successful";
    }else{
        return "Invalid password";
  }
  }
}

function Login(event) {
  event.preventDefault(); 

  let username = document.getElementById("username").value;
  let password = document.getElementById("password").value;

  let result = login(users, username, password);

  document.getElementById("result").innerText = result;
}