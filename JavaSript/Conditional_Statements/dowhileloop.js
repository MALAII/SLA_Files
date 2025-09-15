// Do while loop:
// -------------

// do while loop will execute the code atleast once even if it is true or false.
// A do...while loop is a post-test loop, meaning the loop body is executed at least once before the
// condition is checked. After executing the block of code, it then checks the condition — if 
// it's true, the loop runs again; if false, the loop stops.
// This makes it useful when you want the code inside the loop to run at least once, regardless of
//  whether the condition is true from the start.

// Syntax:
// -------
// do {
    // code block to be executed
// } 
// while (condition);

// Example:
// --------
//This program prints numbers from 1 to 5 using a do...while loop :

let count = 1;

do {
    console.log("Number: " + count);
    count++;
} while (count <= 5);


