function firstStudent(students) {
    // find student with max marks 
    let max = students[0];
  for (let i = 1; i < students.length; i++) {
    if (students[i].marks > max.marks) {
      max = students[i];
    }
  }
   console.log(max.name);
   console.log(max.marks);
    // return the values of students
  return {
    name: max.name,
    marks: max.marks,
   };
}

//student object 
let students = [
  { name: "sahil", marks: 85 },
  { name: "purvil", marks: 92 },
  { name: "mahipal", marks: 78 }
];

//call funtion and pass student object to the function 

console.log(firstStudent(students));