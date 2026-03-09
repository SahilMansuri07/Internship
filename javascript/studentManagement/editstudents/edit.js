//get id from parameter
const params = new URLSearchParams(window.location.search);
const id = Number(params.get("id"));

//get old data
let students = JSON.parse(localStorage.getItem("students")) || [];
console.log(students);

//find student by given id 
const findstud = students.find(s => s.id === id);

//replace values 
document.getElementById('name').value = findstud.name;
document.getElementById('course').value = findstud.course;
document.getElementById('email').value = findstud.email;
document.getElementById('enroll').value = findstud.enroll;
document.getElementById('division').value = findstud.division;
document.getElementById('phone').value = findstud.phone;
document.getElementById('address').value = findstud.address;

//function for update old data to new data
function updateStudent(event) {
  event.preventDefault();

  const updatedStudent = {
    id: id,
    name: document.getElementById('name').value,
    course: document.getElementById('course').value,
    email: document.getElementById('email').value,
    enroll: document.getElementById('enroll').value,
    division: document.getElementById('division').value,
    phone: document.getElementById('phone').value,
    address: document.getElementById('address').value
  };

  //find index of student 
  const index = students.findIndex(s => s.id === id);

  //update data based on founded index
  
  if (index !== -1) {
    students[index] = updatedStudent;
  }

  localStorage.setItem("students", JSON.stringify(students));
  alert("Student updated successfully");
  window.location.href = "../homepage/home.html";
}