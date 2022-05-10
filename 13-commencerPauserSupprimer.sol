// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


contract Owner {

    address owner;
    bool paused;
    // bool est toujours à false
    uint nombre;

    constructor()  {
        // Le owner est le premier utilisateur du contrat
        owner = msg.sender;
    }

    function setPaused(bool _paused) public {
        // On verifie que l'utilisateur qui appelle la fonction est bien le owner
        require (msg.sender == owner, "Vous n'etes pas le owner");
        paused = _paused;
    }

    function setNombre(uint _nombre) public {
        require(!paused, "Le contrat est en pause");
        require (msg.sender == owner, "Vous n'etes pas le owner");
        nombre = _nombre;

    }

    function getNombre() public view returns (uint) {
        require(!paused, "Le contrat est en pause");
        return nombre;
    }

    function destroy(address payable _to) public {
        require(msg.sender == owner, "Vous n'etes pas le owner");
        selfdestruct(_to);


}