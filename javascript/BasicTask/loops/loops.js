// basic loops operation 

let values = 5

for (let i = 0 ; i < values ; i++){
    console.log(i)
}

// loop thought Array

let marks = [65, 89, 92, 74, 88];
let max = marks[0];

//if current values is highest then swap 

for (let i = 1; i < marks.length; i++) {
  if (marks[i] > max) {
    max = marks[i];
  }
}

console.log("max marks", max);

// for in loop it gives values of iteratable items 

let arr = ["Apple", "Banana", "Chiku"];
   
for (let i of arr) {
  console.log(i);
}

//for loop with object
let students = {
  name: "Sahil",
  age: 21,
  city: "Ahmedabad"
};

for (let student in students) {
  console.log(student);         
  console.log(students[student]); 
}


//while loop 

let age;
while (!age || age < 18) {
  age = prompt("enter your age must be 18 or older.");
}
console.log("success");

