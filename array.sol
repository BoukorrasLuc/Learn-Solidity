// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;


// Quand on declare une variable en dehors d'une fonction, elle est en storage automatiquement.

contract Arrays {

    // valeur par defaut de unit est 0. 

    uint[] num ; // Automatically stored in storage


    // ajouter une valeur dans le tableau
    function addValue(uint _value) public {
        num.push(_value);
    }

    // modifier une valeur dans le tableau
    function updateValue(uint _index, uint _value) public {
        num[_index] = _value;
    }


    // supprimer une valeur dans le tableau
    function deleteValue(uint _index) public {
       delete num[_index];
    }

    function getValue(uint _index) public view returns (uint) {
        return num[_index];
    }


    // Ce tableau numx2 est différent de num[] mais il est construit à partir de num[].
    // Cela signifie que les modifications de numx2 ne sont pas enregistrées dans le storage.
    // Car il est construit dans une function et il est de type Memory. 

    function getNumx2() public view returns (uint[] memory) {
        uint length = num.length;
        uint[] memory numx2 = new uint[](length);
        for (uint i = 0; i < length; i++) {
            numx2[i] = num[i] * 2;
        }
        return numx2;
    }

}