// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

/*
*   @title Solidity Data Types
*   @author Miguel Payá
*   @notice A simple smart contract to demonstrate simple data types available in Solidity
*/

contract DataTypes {
    uint x = 9;
    int i = -68;
    uint8 j = 17;
    bool isEthereumCool = true;
    address ownerOfTheContract = msg.sender; //msg.sender is the Ethereum address of the account that sent this transaction
    bytes32 bMsg = "hello";
    string sMsg = "hello";

    function getStateVariable() public view returns (uint, int, uint, bool, address, bytes32, string memory) {
        return(x, i, j, isEthereumCool, ownerOfTheContract, bMsg, sMsg);
    }

    function setbMsg(bytes32 newValue) private returns (bytes32) {
        bMsg = newValue;
        return bMsg;
    }
}