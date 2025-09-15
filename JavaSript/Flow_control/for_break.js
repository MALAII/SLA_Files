// flow control statement:
// -----------------------
// break , continue
// continue : pause the statement further statement will get executed
// break:
// -----
for (let i = 0; i <= 5; i++) {
    console.log(i)
    if (i == 3) {
        break;
    }
}
// continue:
// ---------
for (let i = 0; i <= 5; i++) {
    if (i == 3)
        continue;
    {
        console.log(i)
    } 
}
// difference between ==  and ===
// a=10;
// b=20;
// a==b;
// 10==20; FALSE
// == will check the value
// x=10;
// y=10;
// x===y;
// 10===10; TRUE
// === (strict) will check the value and datatype
// example:
let x=10;
let y=10;
if(x===y){
    console.log('the value and datatype same')
}
else
    {
    console.log('mismatch of both')
}