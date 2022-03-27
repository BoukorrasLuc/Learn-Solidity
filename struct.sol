// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract structContract {

    struct balance {
        
        uint money;
        uint numPayments;   
    }

    mapping(address => balance) balances;

    function getBalance() public view returns (uint) {
        // retourner l'argent que l'utilisateur qui appeler la function à envoyer dans le smart contract.
        return balances[msg.sender].money;
    }
    function getNumPayments() public view returns (uint) {
       // retourner le nombre de paiement que l'utilisateur qui appeler la function à envoyer dans le smart contract.
         return balances[msg.sender].numPayments;
    }

    receive() external payable {
        // Ajouter l'argent à la balance du smart contract.
        balances[msg.sender].money += msg.value;
        //  Ajouter le nombre de paiement à la balance du smart contract.
        balances[msg.sender].numPayments++;
    }
}