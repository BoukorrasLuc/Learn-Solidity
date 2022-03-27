pragma solidity 0.8.13;

contract test {
     uint num;

     // Récupérer un nombre dans la blockchain.
     function getNum() public view returns (uint) {
        return num;
    }

    // changer un nombre dans la blockchain. 
     funtion setNum(unit _num) public {
         num = _num;
     }
}


// public = getNum sera accessible en dehors du contrat. 
// view = récuperer une donnée dans la blockchain. 
// unit = nombre entier non signé. 