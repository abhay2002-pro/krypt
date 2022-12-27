// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

// contract is similar to class
contract Transactions {
    uint256 transactionCounter;

    // event is similar to methods
    event Transfer(address from, address reciever, uint amount, string message, uint256 timestamp, string keyword);
}
