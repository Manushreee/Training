let name="test"; //global variable


function hello(){
    if(true){
        let a=10;
        const b=20;
        var c=30;

        console.log('Inside if block let', a);
        console.log('Inside if block const', b);
        console.log('Inside if block var', c);
    }
    //console.log('Outside if block let', a)
    //console.log('Outside if block const',b)
    console.log('Outside if block var', c);
}
function myFunction(){
    let a=10;
    const b=20;
    var c=30;

    console.log('Let', a)
    console.log('Const', b)
    console.log('Var', c)
}
// all these three below console.log cannot access functional variable outside the function with let, const and var
//myFunction(){
   // console.log('Let', a)
   // console.log('Const', b)
    //console.log('Var', c)
//}
