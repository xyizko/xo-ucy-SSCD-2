// Simple contract to store a message on the BC
// Note you can also encode a message makign a 0 eth tx 

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageStorage {
    string public message;

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
