//first get existing students information or else create empty
let students = JSON.parse(localStorage.getItem("students")) || [];
function handleSubmit(event) {
  event.preventDefault();
  const name = document.getElementById('name').value;
  const course = document.getElementById('course').value;
  const email = document.getElementById('email').value;
  const enroll = document.getElementById('enroll').value;
  const division = document.getElementById('division').value;
  const phone = document.getElementById('phone').value;
  const address = document.getElementById('address').value;

  if (!name || !course || !enroll ||!division ||!phone ||!address) {
    alert("all required fields");
    return;
  }
  // check if students enrollment number is not exists 
  const ifexist = students.find(s => s.enroll === enroll)

  if(ifexist){
    alert("Enrollment already Exists")
    return
  }

  const student = {
    id: Date.now(),
    name,   
    course,
    email,
    enroll,
    division,
    phone,
    address
  }

  // add newly created student
  students.push(student);
  //set into localstorage 
  localStorage.setItem("students", JSON.stringify(students));
  window.location.href = "../homepage/home.html";

}