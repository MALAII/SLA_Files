// datatypes in javascript:
//-----------------------
// JS is dynamic programming language.
// so no need to say the datatypes while declaring a values.
// In other programming languages:
// like c and c++
// int a=5 //the datatype should be declared at the time of declaration.
// ------------------------------------------------------------------------------------------------------
// 1.types of datatypes:
//  primitive:
// number- 5, 3.12, -10
// string - "hello", 'js'
// boolean - true 1 , false 0
// undefined - let a
// null - let b=null
// symbol- symbol("id")
// big int -23457643223435678876543..... more than 9 integers

//  Non-primitive:
// objects - {name: 'js', version:'45'}
// array- [1,2,3]
// functions- function function name()
// {

// }
// date - date and time values new date()
// reg exp -/a+b+c/
 
// var a=3;
// console.log(typeof(a)); //number

// var msg="good message";
// console.log(typeof(msg)); // string

// var ishemarried=true;
// console.log(typeof(ishemarried)); //boolean

// var phone=null;
// console.log(typeof(phone)); // object

// var b;
// console.log(typeof(b)); // undefined

// symbol -2015 creation
// var u=Symbol();
// console.log( u); // uniquelly stores a value for sybmol --345678oikjhgfdxcvbn
// var u3=Symbol();
// console.log(u3);  // again creates a value for symbol like- 34567890dfb
// console.log(u==u3); //false because each time it creates a different values
// console.log(typeof u); //symbol

// var courses=['java', 'php', 'laravel'];
// console.log(typeof courses); //object

// var students={
//     fname:'karthick',
//     age:23,
//     place:'vellore'
// }
// console.log(typeof students.age); // objects //  number

// var d=new Date();
// console.log(d); //today date
// console.log(typeof d); //object

//--------------------------------------------------------------------------------------------------------
// 2. type conversion: 
// number to string:

// let a;
// a=25;
// console.log(a, typeof a);
// a=String(a)
// console.log(a, typeof a);

//another method for converting number to string:
// let a;
// a=34.6;
// console.log(a, typeof a);
// a=String(a)
// console.log(a, typeof a);

// a=true;
// console.log(a);
// console.log(a, typeof a);
// a=Number(a)
// console.log(a, typeof a);  // true = 1 typeof = number

// a=new Date();
// console.log( a, typeof a);
// a=String(a);
// console.log(a, typeof a);

// let a= [2,3,5,6];
// console.log(a, typeof a);
// a=a.toString(); //another method
// console.log(a , typeof a);
//------------------------------------------------------------------------------------------------------
// string to number:

// let a="098765";
// console.log( a, typeof a);
// a=Number(a);
// console.log(a, typeof a);

// let a="malai";
// console.log( a, typeof a);
// a=Number(a);
// console.log(a, typeof a);  //letters cannot be changed to number so o/p is NaN ,numder

//another method for converting string into number :
// let a="098765";
// console.log( a, typeof a);
// a=parseInt(a);
// console.log(a, typeof a);

//converting Number to String:
// methods:
// String(a);
// or 
// a.toString();
// numbers , boolean, objects, date can be converted into strings

// converting string to number:
//methods:
// Number(a);
// or
// parseInt(a);
// parseFloat(a);
// numbers inside strings , float numbers,boolean  can be converted into numbers
// others datatypes convertions will be shown as NaN (not a number)
//-------------------------------------------------------------------------------------------------------
//  3.TYPE COERCION:

// let  a="20";
// let b=45;
// console.log(a+b); //will cancatenate the string and number // 2045
// a=Number(a);
// console.log(a, typeof a); now its converted into number
// console.log(a+b); its now added // 65

// different datatypes when added will concatenate the values 
// same datatypes when added will add the values