//    let marks='Good';
//    switch(marks)
// {
//     case 'excellent':
//     console.log('The grade is A ')
//     break;
//      case 'Good':
//     console.log('The grade is B')
//     break;
//      case 'Average':
//     console.log('The grade is C')
//     break;
//      case 'BelowAverage':
//     console.log('The grade is D ')
//     break;
//     default:
//     console.log('invalid marks')
// }

let day = 'friday';
let message;
switch (day) {
    case 'Monday':
        message = 'first day of week';
        break;
    case 'Tuesday':
        message = 'day 2 of week';
        break;
    case 'wednesday':
        message = 'day 3 of the week';
        break;
    case 'thursday':
        message = 'day 4 of the week';
    case 'friday':
        message = 'Happy Weekend'
        break;
        
    default:
        message('Invalid day')
        break;

}
console.log(message)


