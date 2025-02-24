const res = fetch('https://jsonplaceholder.typicode.com/users');

// console.log(res);
res
.then(res=>res.json())
.then(json=>console.log(json))
.catch(err=>console.log(err))
.finally(()=>console.log("Promise Completed"));
