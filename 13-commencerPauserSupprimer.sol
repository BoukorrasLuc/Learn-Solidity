// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


contract Owner {

    address owner;
    uint nombre;

    constructor()  {
        // Le owner est le premier utilisateur du contrat
        owner = msg.sender;
    }

    function setNombre(uint _nombre) public {
        // On verifie que l'utilisateur qui appelle la fonction est bien le owner
        require (msg.sender == owner, "Vous n'etes pas le owner");
        nombre = _nombre;

    }

    function getNombre() public view returns (uint) {
        return nombre;
    }
    

}