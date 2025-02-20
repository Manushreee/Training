let data=[]
const fetchData=(cb)=>{
    // assume data fetching from api
    setTimeout(()=>{
        data=[1,2,3,4,5,6,7];
        console.log("data fetched succesfully")
        cb();
    },2000)
}
const displayData=()=>{
    console.log("display function", data);
}
fetchData(displayData) //pass funct as argument which is considered here as a callback