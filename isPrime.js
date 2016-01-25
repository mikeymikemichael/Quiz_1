// 4. Write a JavaScript function called: isPrime. The function must take
// a number n and it should return `true` or `false` whether the argument
// passed (n) is a prime number or not. A prime number is a number that is
// divisible only by 1 and itself.

var number = prompt("Enter a number:")

var isPrime = function(number) {
   if (((number) % (number) === 0) && ((number) / 1 === (number))){
     return true
   };
   else {
     return false
   };
 };
