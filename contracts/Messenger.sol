// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Messenger {

    string message = "Hello!";

    address public creatorAddress;

    constructor (address _creatoraddress)
    {
        creatorAddress = _creatoraddress;
    }

    function readMessage () public view returns (string memory)
    {
        return message;
    }

    function writeMessage (string memory _message) public 
    {
        if (creatorAddress == msg.sender)
        {
            message = _message;
        }
    }

}