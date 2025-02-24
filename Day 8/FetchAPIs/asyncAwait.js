async function fetchData(){
    try{
        const res = await fetch('https://jsonplaceholder.typicode.com/users')
        const json = await res.json();
        console.log(json);
    }
    catch(error){
        console.log('Error Occured',error);
    }   
}

fetchData();
