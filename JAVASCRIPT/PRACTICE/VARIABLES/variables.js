// 1. scopes:
// if(true)
// {
//     var msg="welcome to bigg boss";  // global scoped
    // let msg="welcome to sla";  you cannot redeclare a value for same variable using let it is block scoped
    // let s="hi baby";
    // console.log(s);  // inside the block can only be accessed
    // const test="marks scored";
    // console.log(test); // cannot be redeclared or reassgined only accessible inside the same block 
// }
// console.log(msg);
// priority for keywords execution:
// 1. let 
// 2. const
// 3. var -2015
// -------------------------------------------------------------------------------------------------------
// 2. variable declaration:
// var a = 23;
// console.log(a);
// var a = 21;   
// console.log(a);
// var can be redeclared it will take the new declared value.
//-------------------------------------------------------------
// let b="sanjay";
// let b="arun";
// b= 'parthiban'; //can be reassign the values for same variable but cannot redeclare
// // console.log(b); 
// // let cannot be redeclared it will show error
//-------------------------------------------------------------
// // const a="tennis";
// a='arjun'; // cannot reassign the values for same variable 
// console.log(a);
// const a="badmiton";
// const cannot be redeclared it will show error
// but in arrays the key pair values can be reassigned and redeclared using const
// const student={'name':"priya", "age":34};
// console.table(student);
// console.log(student.name);
// student.name="deva";
// console.table(student);
//-------------------------------------------------------------
// var - global scoped , can be reassigned and redeclared.
// let - block scoped , can be reassigned but cannot be redeclared.
// const - block scoped, cannot be reassigned and redeclared but in ojbects the key value pairs can
// be reassigned and redeclared.



