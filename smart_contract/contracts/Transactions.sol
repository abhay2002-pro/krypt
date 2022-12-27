// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

// contract is similar to class
contract Transactions {
    uint256 transactionCount;

    // event is similar to methods
    event Transfer(address from, address reciever, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address reciever;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiever, uint amount, string memory message, string memory keyword) public { //message is stored in memory of the transaction.
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiever, amount, message, block.timestamp, keyword)); // msg is reieved automatically when a function is called in blockchain

        // to make transfer
        emit Transfer(msg.sender, receiever, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory){
        return transactions;
    }

    function getTransactionsCount() public view returns (uint256){
        return transactionCount;
    }
}
