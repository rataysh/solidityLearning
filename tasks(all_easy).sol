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


//Task 5
// Clock shows h hours, m minutes and s seconds after midnight.
// Your task is to write a function which returns the time since midnight in milliseconds.
// Example:
// h = 0
// m = 1
// s = 1
// result = 61000

contract Kata {
  function past(int h, int m, int s) public pure returns (int) {
    return h * 60 * 60 * 1000 + m * 60 * 1000 + s * 1000;
  }
}

// Task 6
// Create a function with two arguments that will return an array of the first (n) multiples of (x).
// Assume both the given number and the number of times to count will be positive numbers greater than 0.
// Return the results as an array (or list in Python, Haskell or Elixir).
// Examples:
// countBy(1,10) // should return [1,2,3,4,5,6,7,8,9,10]
// countBy(2,5) // should return [2,4,6,8,10]

contract CountByX {

  function countBy(int x, int n) view returns (int[]) {
    int[] z;
    // TODO: Your code here
    int tmpSum;
    for (int i = 0; i < n; i++) {
        tmpSum = x + tmpSum;
        z.push(tmpSum);
    }      
    return z;
  }
}



// Task 7
// The first century spans from the year 1 up to and including the year 100, the second century - 
// from the year 101 up to and including the year 200, etc.
// Given a year, return the century it is in.
// Examples
// 1705 --> 18
// 1900 --> 19
// 1601 --> 17
// 2000 --> 20

contract Kata {
  function century(int year) public pure returns (int) {
    if (year / 100 == year / 100 + year % 100) {
        return year / 100;
    } else {
        return year / 100 + 1;
}}}