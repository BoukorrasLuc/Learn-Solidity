// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


// enum = type défini par l'utilisateur 

contract Exercice {
    
    enum etape {commande,expedie,livraison}

    // SKU = Stock Keeping Unit = code d'identification unique d'un produit.
    struct produit {
       uint _SKU;
    // enum  savoir si le produit à été commandé,expédié ou livré ou pas.
       Exercice.etape _etape;
    }

    mapping ( address => produit ) CommandesClient;



    function addCommande(address _client, uint _SKU) public {
         produit memory p = produit(_SKU,etape.commande);
         CommandesClient[_client] = p;
    }

    function expedier(address _client) public {
        CommandesClient[_client]._etape = etape.expedie;
    }

    function getSKU (address _client) public view returns (uint) {
        return CommandesClient[_client]._SKU;
    }

    function getEtape (address _client) public view returns (etape) {
        return CommandesClient[_client]._etape;
    }
}