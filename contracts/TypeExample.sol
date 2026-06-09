// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract TypeExampleContract {

    bool public myBool = true;

    uint public myUint = 1;

    uint8 public myInt = 0;

    function setUint(uint _myUint) public 
    {
        unchecked
        {
            myUint = _myUint;
        }
    }
    function setInt(uint8 _myInt) public 
    {
         myInt = _myInt;
    }

    function setBool(bool _myBool) public 
    {
        myBool = _myBool;
    }

    function IncrementInt() public 
    {
        myUint++;
    }

    function DecrementInt() public 
    {
        unchecked
        {
            myUint--;
        }
    
    }

}
