//map array function it always creates new array
const numbers = [1, 2, 3, 4];

const multiply = numbers.map(n => n * 2);

console.log("map example" , multiply);


// filter array function filters the data and give modified array 
const numbers_filter = [1, 2, 3, 4, 5, 6];

const evens = numbers_filter.filter(n => n % 2 === 0);

console.log("filter example" ,evens);


// reduce will give single values of and array 
const numbers_reduce = [1, 2, 3, 4];

const sum = numbers.reduce((total, n) => total + n, 0);

console.log("recude example" ,sum);