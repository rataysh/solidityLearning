// SPDX-License-Identifier: MIT

// pragma solidity ^0.4.19;

//Task 1
contract CountByX {
  function countBy(int x, int n) view returns (int[]) {
    int[] z;
    // TODO: Your code here
    for (int i = 1; i <= n; i++) {
        z.push(x*i);
    }      
    return z;
  }
}

//Task 2
// Terminal game move function
// In this game, the hero moves from left to right. The player rolls the dice and moves the number 
// of spaces indicated by the dice two times.
// Create a function for the terminal game that takes the current position of the hero and the roll (1-6) 
// and return the new position.
// Example:
// move(3, 6) should equal 15


contract Kata {
  function move(int p, int r) public pure returns (int) {
    return r * 2 + p;
  }
}

//Task 3
// This function should test if the factor is a factor of base.
// Return true if it is a factor or false if it is not.
// About factors
// Factors are numbers you can multiply together to get another number.
// 2 and 3 are factors of 6 because: 2 * 3 = 6
// You can find a factor by dividing numbers. If the remainder is 0 then the number is a factor.
// You can use the mod operator (%) in most languages to check for a remainder
// For example 2 is not a factor of 7 because: 7 % 2 = 1
// Note: base is a non-negative number, factor is a positive number.


contract Kata {
  function checkForFactor(int base, int factor) public pure returns (bool) {
    if (base % factor == 0) {
        return true;
    } 
    return false;
 }
}


//Task 4
// Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.
// Examples:
// 1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
// 2) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3

contract Kata {
  function isDivisible(int n, int x, int y) public pure returns (bool) {
    // your code here
    if (n % x == 0 && n % y == 0 ) {
      return true;
    } else {
      return false;
    }
  }
}

