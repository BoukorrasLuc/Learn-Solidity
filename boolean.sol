
// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract boolean {


   bool myBool;

   function getBool() public view returns (bool) {
      return myBool;
   }

    function setBool(bool _myBool) public {
        myBool = _myBool;
    }
}

// 

