// SPDX-License-Identifier: MIT

// pragma solidity ^0.4.19;

// Write a smart contract called HelloWorld that will help greet people that interact with it.
// Create two endpoints that will react accordingly.
// Greet
// 1.) The first endpoint should be called greet and return the greeting that has been saved on the state variables of the contract.
// 2.) This endpoint should return "Hello World!" by default.
// setGreeting
// 1.) The second should be called setGreeting, take a string as an argument, and set that string as the greeting variable that will be returned by the first endpoint.
// Examples:
// By default
// HelloWorld.greet() --> "Hello World!"
// After changes
// HelloWorld.setGreeting("Hi!");
// HelloWorld.greet() --> "Hi!"
// After changes
// HelloWorld.setGreeting("Hola!");
// HelloWorld.greet() --> "Hola!"



contract HelloWorld {
    
    string greeting = "Hello World!";
    
    function setGreeting(string _greeting) public {
        greeting = _greeting;
    }
    
    function greet() view public returns (string) {
        return greeting;
    }
}