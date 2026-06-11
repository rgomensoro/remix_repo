// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Messenger {

    string message;
    uint counter;

    address public creatorAddress;

    constructor (address _creatoraddress)
    {
        creatorAddress = _creatoraddress;

        message = "Hello!";

        counter = 0;
    }

    function readMessage () public view returns (string memory)
    {
        return message;
    }

    function writeMessage (string memory _message) public 
    {
        if (creatorAddress == msg.sender)
        {
            counter++;
            message = _message;
        }
    }

    function updatedCount () public view returns (uint)
    {
        return counter;
    }

}