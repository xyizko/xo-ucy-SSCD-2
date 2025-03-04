// Lesson 8 - Simple Storage Solidity and arrays and structs

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18 ;

contract SimpleStorage {

    uint256 myfavNum;

    // Array List 
    //uint256[] listOfFavNum; // [6,9,69];

    // Custom type
    struct Killa{
        uint256 number;
        string name;
    }

    function store(uint256 _favNum) public {
        myfavNum = _favNum;
    }

    //view, pure 

    function retrieve() public view returns (uint256){
        return  myfavNum ;
    }

    // Defining the custom type 
    Killa public kanz = Killa(69, "sword");
}