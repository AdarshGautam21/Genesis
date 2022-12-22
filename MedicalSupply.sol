// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract constomer{

    uint256 public batchNumber;
    uint256 public transferNumber;
    uint256 public recievedNumber;

    mapping(address=>uint256) public userToBatchNumber;
    mapping(address=>uint256) public userToTransferNumber;
    mapping(address=>uint256) public userToRecievedNumber;

    function setBatchNumber(uint256 batchNo) public 
    {
        userToBatchNumber[msg.sender] = batchNo;
    }
    
    function setTransferNumber(uint256 batchNo) public 
    {
        userToTransferNumber[msg.sender] = batchNo;
    }

    function setRecievedNumber(uint256 batchNo) public 
    {
        userToRecievedNumber[msg.sender] = batchNo;
    }

    function getBatchNumber(address user) public view returns(uint256)
    {
        return userToBatchNumber[user];
    }
    
    function getTransferNumber(address user) public view returns(uint256)
    {
        return userToTransferNumber[user];
    }
    
    function getRecievedNumber(address user) public view returns(uint256)
    {
        return userToRecievedNumber[user];
    }
}