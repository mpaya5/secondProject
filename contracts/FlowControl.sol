// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

/*
*   @title Solidity Data Types
*   @author Miguel Payá
*   @notice A simple smart contract to demonstrate simple data types available in Solidity
*/

contract FlowControl {
    function calcDozenDiscountIF (uint purchasedQty) public pure returns (bool) {
        bool giveDozenPrice = false;

        if (purchasedQty >= 12)
            giveDozenPrice = true;
        else
            giveDozenPrice = false;
        
        return (giveDozenPrice);
    }

    function calcDozenDiscountWHILE (uint purchasedQty) public pure returns (bool) {
        bool giveDozenPrice = false;
        uint numDonuts = 1;

        while (numDonuts < purchasedQty) {
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }

        return (giveDozenPrice);
    }
}