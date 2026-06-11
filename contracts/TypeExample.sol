// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract TypeExampleContract {

    bool public myBool = true;

    uint public myUint = 1;

    uint8 public myInt = 0;

    string public myString = "Hello";

    address public myAddress;

    function getAddressBalance (address _myAddress) public view returns (uint){
        return _myAddress.balance;
    }
    function setAddress (address _myAddress) public {
        myAddress = _myAddress;
    }

    function getBalance () public view returns (uint){
        return myAddress.balance;
    }

    function setString(string memory _myString) public 
    {
        myString = _myString;

    }

    function compareString(string memory _myString) public view returns (bool)
    {
        return (keccak256(bytes(myString)) == keccak256(bytes(_myString)));
    } 

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
