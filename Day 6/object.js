const person={
    firstName:"John",
    lastName:"Doe",
    email:"john@gmail.com",
    age:45,
    address:{
        street:"XYZ",
        city:"New York",
        zipcode:654321,
        country:"US"
    },
    greeting: function(){
        console.log('welcome ${this.firstName} ${this.lastName}')

    }
}
console.log("Address", person.address)
person.greeting()
console.log(person['email']);
for(let key in person){
    console.log(person[key]);
}