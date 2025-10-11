// const users=[
// {
//     id:5,
//     name:'jayasree',
//     age:31
// },
// {
//     id:4,
//     name:'malai',
//     age:21
// },
//   {
//     id:5,
//     name:'kishore',
//     age:24,
//     city:'vellore'
//   }
// ]
// console.log(users);
// console.log(users[2].city)
// console.log(users[1].name)

// array methods
// push , pop , shift , unshift , slice , length , tostring 
//  course ='python'
//  course1 = 'dotnet'
//  let course=['python', 'dotnet' , 'java' , 'javascript' , 'css' , 'php']

// mixed datatype values  or accessing nested values that is two dimesional array
// let nos=[5,3,21,345,32,12,4,46,13,'join' ,23,'sub' , 'inset',[1,2,3,4]]
// console.log(nos)
// console.log(nos[13][1])
// const salesteam=[]
// 2nd array 
// let table=[[2,3,2,1] , [3,5,3,2], [8,4,5,3]]
// console.log(table[1][2])

// array creation:
// let array=new array()
// let arrayname=[]

    // const fruits=['apple', 'banana' , 'orange','grapes','mango','pear']
    // const removedfruit= fruits.splice(1,2)
    // console.log(fruits)
    // console.log(removedfruit)
    //   const color=['red' , 'green' , 'blue','yellow']
    // color.splice(1,0,'javascript','html')
    // console.log(color)

    
    // slice -partition:
    //const color=['red' , 'green' , 'blue','yellow','thistle','orange'];
   // console.log(color.slice(1,4)) ; //2 args are given 1st value is start value and 2nd value is end value
   // console.log(color.slice(3,5)); //n-1 time last value will get omitted

// 2. Append the values in the index position 3

 let newlist = ['demo', false, 'content', 45, 99, 2.5, true, '45', 'task', 'false']
   newlist.splice(3, 0, "hello"); // inserting "newValue" at index 3
   console.log(newlist);

// 3. Remove the element value at the end  
newlist.pop();
console.log(newlist);

// 4. Add the values in between [3-5] → color, green, blue
newlist.splice(3, 0, "color", "green", "blue");
console.log( newlist);
