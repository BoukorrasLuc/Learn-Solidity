// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract mySentence {
    
    string myString;
    
    function getString() public view returns (string memory) {
        return myString;
    }
    
    function setString(string memory _myString) public {
        myString = _myString;
    }
}
