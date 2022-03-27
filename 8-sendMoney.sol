// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;


// Envoyer de l'argent à un autre utilisateur

contract sendMoney {

    // L'adresse de l'utilisateur qui envoie l'argent sur le smart contract.
    address lastPerson;
    // Montant de l'argent envoyé par l'utilisateur sur le smart contract.
    uint balance;


    function getLastPerson() public view returns (address) {
        return lastPerson;
    }

    
    function getBalance() public view returns (uint) {
        return balance;
    }


    // external est accessible en dehors du contrat.
    // Payable permet d'envoyer de l'argent.

    receive() external payable {
        lastPerson = msg.sender;
        balance =  balance + msg.value;
    }





}