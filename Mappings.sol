// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

// Mappings est assigner des clefs à des valeurs.
  
contract Mappings {

    // Conaitre le nombre d'argent dans ce smart contract.
    mapping(address => uint) balances;


    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }

    function setBalance(address _address, uint _balance) public {
        balances[_address] = _balance;
    }

    receive() external payable {
        // Ajouter l'argent à la balance du smart contract.
        balances[msg.sender] = msg.value;
    }

}