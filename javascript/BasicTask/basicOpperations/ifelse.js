// if else conditions 
let age = 2;

if (age > 18) {
  console.log("Allowed to apply for driving licence");
} else if(age = 18) {
  console.log("now aligible for driving licence");
}else{
    console.log("not applicable")
}

// ternary opp
let age1 = 20
let result = (age1 < 18) ? "minor" : "adult";
console.log(result);


// switch case statement 
let day = 3;
switch (day) {
  case 1:
    console.log("monday");
    break;

  case 2:
    console.log("tuesday");
    break;

  case 3:
    console.log("wednesday");
    break;
}