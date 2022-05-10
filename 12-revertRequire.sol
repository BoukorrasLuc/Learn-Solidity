// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Exercice {

    uint256 nombre;

    function setNombre(uint _nombre) public {

        require (_nombre != 10, "le nombre ne peut pas etre egal a 10");

        // Old version
        // if (_nombre ==  10) { 
        //  revert("le nombre ne peut pas etre egal a 10");
        // }
        
        nombre = _nombre;
    }
    function getNombre() public view returns (uint) {
        return nombre;
    }
}    