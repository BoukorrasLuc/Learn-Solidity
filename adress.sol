
// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract adress {


    address myAddress;
    
    function getAddress() public view returns (address) {
        return myAddress;
    }
    
     function setAddress(address _myAddress) public {
          myAddress = _myAddress;
     }
}

// 
