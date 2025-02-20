const array=[1,2,3,4,5,6,7,8,9,10];
// want to create a new array by multiplying all elements using 3

// manual process
const resultArray=[];
for(let num of array){
    resultArray.push(num*3);
}
console.log(resultArray)

// using higher order function
const newArray =array.map((num)=>num*3);
console.log(newArray)

const evenArray=array.filter((num)=>num%2===0);
console.log(evenArray)

const found=array.find((num)=>num===16);
console.log(found ? 'Found '+found: 'Not found');

//find index of match (if found then return index of that num) if not found then return -1
const foundindex=array.findIndex((num)=>num===9);
console.log(foundindex ? 'Found '+foundindex: 'Not found');

//count of 2
const count = array.filter(num => num === 2).length;
console.log(count);
//print individual elements use foreach
array.forEach(num=>console.log(num));

result=[35,67,89,65,94]
console.log(result.every(num=>num>=35)); //this is for all
console.log(result.some(num=>num>=90));
