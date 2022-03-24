// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

/*
*   @title Solidity Data Types
*   @author Miguel Payá
*   @notice A simple smart contract to demonstrate simple data types available in Solidity
*   s
*/

// Contrato para controlar los descuentos de una compra de 12 donuts
contract FlowControl {
    // Comprobar si compras 12 donuts tendrás un descuento
    function calcDozenDiscountIF (uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false; //Inicializar siempre las variables

        if (purchasedQty >= 12) {
            giveDozenPrice = true;

        }
        else {
            giveDozenPrice = false;
        
        }
        
        return (giveDozenPrice);
    }

    // Comprobar lo mismo que arriba pero haciendolo con un bucle. Obligando a comprar un mínimo de 12
    function calcDozenDiscountWHILE (uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false; // Variable local, se puede reusar
        uint numDonuts = 1;

        while (numDonuts < purchasedQty) {
            numDonuts++; //Aumenta la cantidad de donuts hasta llegar a 12, 

            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break; 
            }
        }

        return (giveDozenPrice);
    }

    // Probando a hacerlo con DO
    function calcDozenDiscountDO(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        do {
            numDonuts++;

            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }

        } while (numDonuts < purchasedQty);

        return (giveDozenPrice);
    }

    //Probando con bucle FOR
    function calcDozenDiscountFOR(uint purchasedQty) private pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        for (numDonuts =1; numDonuts <= purchasedQty; numDonuts++) {
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }

        return (giveDozenPrice);
    }
}
