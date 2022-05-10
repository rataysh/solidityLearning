// SPDX-License-Identifier: MIT

pragma solidity ^0.4.19;

// Task
// Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
// In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained
// Consider an Example :
// With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:
// 1 * (2 + 3) = 5
// 1 * 2 * 3 = 6
// 1 + 2 * 3 = 7
// (1 + 2) * 3 = 9
// So the maximum value that you can obtain is 9.
// Notes
// The numbers are always positive.
// The numbers are in the range (1  ≤  a, b, c  ≤  10).
// You can use the same operation more than once.
// It's not necessary to place all the signs and brackets.
// Repetition in numbers may occur .
// You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.


contract Kata {
  function expressionMatter(int a, int b, int c) public view returns (int) {
    // your code here
    int[] maxList;
    int result = 0;
    maxList.push(a * (b + c));
    maxList.push(a * b * c);
    maxList.push(a + b * c);
    maxList.push((a + b) * c);
    maxList.push(a + b + c);
    // uint counterLength = maxList.length;
    for (uint i = 0; i < 5; i++) {
        if (result < maxList[i]) {
            result = maxList[i];
        }
    }
    return result;
  }
}