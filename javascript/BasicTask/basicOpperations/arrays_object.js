// define an array in javascript
const array = ['banana' , 'apple' , 'orange' , 'mango']

console.log(array)

// we can also access any index from the array 
console.log(array[0]);
console.log(array[2]);
console.log(array[3]);


// we can also modify the values of arrays 
array[1] = "kiwi";
console.log(array);

// //properties of arrays
// to add new element
array.push('strawberry')
console.log('New added', array);

//to remove elements
array.pop();
console.log('removed elements', array)

//sortinf in array 
array.sort();
array.reverse();


//------------objects-------------------

let object = {
  name: "Sahil",
  age: 21,
  city: "Ahmedabad"
};


console.log(object);
console.log(object.name);
console.log(object.age);
console.log(object.city);


// nested object
let student = {
  name: "Sahil",
  age: 21,
  address : {
    city : 'ahemdabad',
    country : 'India'
  }
};

console.log("Fetch city in nested object  : " , student.address.city);
console.log("Fetch country in nested object  : "  , student.address.country)


// to get data in strings
let jsonString = JSON.stringify(student);
console.log("get data in json",jsonString);


//parsed data back to string
let jsonParsed = '{"name":"Sahil","age":21,"address":{"city":"ahemdabad","country":"India"}}';
let userObject = JSON.parse(jsonParsed);
console.log(userObject);


