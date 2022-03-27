// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract transfertWallet {
    
    // structure de wallet 
    struct wallet {
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;





    // Recuperer le nombre d'argent dans ce smart contract.
    function getTotalBalance() public view returns (uint) {
        return address(this).balance;
    }

    function getBalance() public view returns (uint) {
        // retourner l'argent que l'utilisateur qui appeler la function à envoyer dans le smart contract.
        return Wallets[msg.sender].balance;
    }

    function withdrawAllMoney(address payable _to) public {
        // recuperer le nombre d'argent de l'utilisateur qui appel le smart contract.
        uint _amount = Wallets[msg.sender].balance;

        // Dire à l"utilisateur qu'il n'a plus cette argent.
         Wallets[msg.sender].balance = 0;

        // transferer l'argent de la wallet de l'utilisateur qui appeler la function vers la wallet de l'utilisateur qui a appeler la function.
        _to.transfer(_amount);

    }


    receive() external payable {
        // Ajouter l'argent à la balance du smart contract.
        Wallets[msg.sender].balance += msg.value;
        //  Ajouter le nombre de paiement à la balance du smart contract.
        Wallets[msg.sender].numPayments++;
    }
}