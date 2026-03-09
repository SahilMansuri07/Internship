//define global Variables and inputs
let students = JSON.parse(localStorage.getItem("students"))
const bodySection = document.getElementById("studentBody")
let totalCounts = students.length
console.log(totalCounts)

let count = document.getElementById("count").innerText = totalCounts


//function to display students 
function getStudents(){    
    const result =  localStorage.getItem("students")
    const header = document.getElementById("tableHeader");
    const table = document.getElementById("studentTable");
    const noDataMsg = document.getElementById("noDataMsg");
    let parsedStud = JSON.parse(result)
    students = parsedStud

    //return no records if length is 0
    if(students.length === 0){
      header.style.display = "none";
      table.style.display = "none";
      noDataMsg.style.display = "block";
    }
  console.log(students)
    students.forEach(element => {
       bodySection.innerHTML += `<tr>
       <td>${element.id}</td>
       <td>${element.name}</td>
       <td>${element.enroll}</td>
       <td>${element.email}</td>
      <td>${element.course}</td>
      <td>${element.division}</td>
      <td>${element.address}</td>
      <td>  <button class="edit" onclick="editStudent(${element.id})">Edit</button>
            <button class="delete" onclick="deleteStudent(${element.id})">delete</button>
      </td>
    </tr>`
    }); 
}
getStudents();

//edit students 
function editStudent(id) {
  console.log(id)
  window.location.href = `../editstudents/edit.html?id=${id}`;
}


//delete students
function deleteStudent(id){
  alert("Are You Want to delete !")

  students = students.filter(student => student.id !== id);
  console.log(students);
  
  bodySection.innerHTML = null
  
  localStorage.setItem("students",JSON.stringify(students))
  getStudents();
}

//search students by name , email , enroll , course 
function searchStudent(values){
  const result = students.filter(student => student.name.toLowerCase().includes(values.toLowerCase()) ||  student.enroll.toLowerCase().includes(values.toLowerCase()) || student.course.toLowerCase().includes(values.toLowerCase()) || student.email.toLowerCase().includes(values.toLowerCase())  );
  
  console.log(values);
  // total search count 
  let SearchCounts = result.length
  console.log(SearchCounts)
  let search = document.getElementById("count").innerText = SearchCounts

  const header = document.getElementById("tableHeader");
  const table = document.getElementById("studentTable");
  const noDataMsg = document.getElementById("noDataMsg");

  bodySection.innerHTML = null;
 
  if(result.length === 0){
    header.style.display = "none";
    table.style.display = "none";
    noDataMsg.style.display = "block";
  } else {
    header.style.display = "table-header-group";
    table.style.display = "table";
    noDataMsg.style.display = "none";  

    result.forEach(element => {                  ''
      bodySection.innerHTML += `
        <tr>
          <td>${element.id}</td>
          <td>${element.name}</td>
          <td>${element.enroll}</td>
          <td>${element.email}</td>
          <td>${element.course}</td>
          <td>${element.division}</td>
          <td>${element.address}</td>
          <td>
            <button class="edit" onclick="editStudent(${element.id})">Edit</button>
            <button class="delete" onclick="deleteStudent(${element.id})">Delete</button>
          </td>
        </tr>`;
      });
      console.log(result);
  }
}

//sorting by name
function sortName(e) {
  console.log(e.target.value , "value")
  bodySection.innerHTML = null
  if(e.target.value == "asc"){
    students.sort((a, b) => a.name.localeCompare(b.name));
  }else{
    students.sort((a, b) => b.name.localeCompare(a.name));
  }
  localStorage.setItem("students", JSON.stringify(students));
  getStudents();
}