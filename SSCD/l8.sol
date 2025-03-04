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
        string weapon;
    }

    function store(uint256 _favNum) public {
        myfavNum = _favNum;
    }

    //view, pure 

    function retrieve() public view returns (uint256){
        return  myfavNum ;
    }

    // Defining the custom type - Getter method is being automatically made by compiler
    // Note each one of the new custom types will get its own getter function 

    // Killa public kanz = Killa({
    //     number: 69, 
    //     weapon: "Sword"
    // });

    // Killa public injz = Killa ({
    //     number:20,  
    //     weapon:"Gun"
    // });

    // Definintion of the multiple people as an array

    // Dynamic Array 
    // If a number is mentioned then it becomes a static array
    Killa[] public listOfKillaz;

    function addKillaz(uint256 _number, string memory _weapon )public{
        listOfKillaz.push(  // push the new entry into the array 
        Killa({
            number:_number,   // passing the values
            weapon : _weapon // from memory to store in the dynamic array 
        }));
    }


}