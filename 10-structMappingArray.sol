// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


contract Exercice {


    struct eleve {
        string nom;
        uint[] notes;
    }
    mapping ( address => eleve ) Eleves;


    // ajouter une note à un élève
    function addNote(address _eleve, uint _note) public {
        Eleves[_eleve].notes.push(_note);
    }

    // recuperer la note d'un élève en fonction de son adresse 
    function getNote(address _eleve) public view returns (uint[] memory) {
        return Eleves[_eleve].notes;
    }

    // changer le nom de l'élève
    function setNom(address _eleve, string memory _nom) public {
        Eleves[_eleve].nom = _nom;
    }

    // retourner le nouveau nom de l'élève
    function getNom(address _eleve) public view returns (string memory) {
        return Eleves[_eleve].nom;
    }
}