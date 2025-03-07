// This contract file is the excercise work for SSCD Lesson 7 
// Each lesson will have its own folder with own solidity file 
// WARNING ! - Experimental nonsensical code here


// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18 ;

contract SimpleStorage {

    // Fav number gets initialized 
    uint256 favNumber = 7;

    // Function for testing numbers
    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    // retreive function 
    function retrieve() public view returns(uint256) {
        return favNumber;
    }

    // pure function example
    function retrieve2() public pure returns(uint256) {
        //return favNumber; this would not be allowed
    }


}