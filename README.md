# Ethereum-Based Calculator

## Description

A Solidity smart contract implementing a simple calculator functionality on the Ethereum blockchain.

### Functions

- getTotal(): Returns the current total value stored in the contract.
- add(uint256 addamt1, uint256 addamt2): Adds two numbers and updates the total value.
- mul(uint256 mulamt1, uint256 mulamt2): Multiplies two numbers and updates the total value.
- div(uint256 divamt1, uint256 divamt2): Divides the first number by the second and updates the total value.

## Code Explanation

The smart contract is written in Solidity and provides basic arithmetic operations. Here's an explanation of the main components:

- *Constructor*: Initializes the contract with an initial balance.
- *getTotal() Function*: Returns the current total value stored in the contract.
- *Arithmetic Functions*: 
  - add(): Adds two numbers and updates the total value.
  - mul(): Multiplies two numbers and updates the total value.
  - div(): Divides the first number by the second and updates the total value.
- *Modifiers*: 
  - onlyOwner(): Ensures that only the owner of the contract can perform certain actions.

## Smart Contract

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Calculator {
    address payable public owner;
    uint256 public total;

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        total = initBalance;
    }

    function getTotal() public view returns(uint256){
        return total;
    }
    
    function add(uint256 addamt1, uint256 addamt2) public payable {
        require(msg.sender == owner, "You are not the owner of this account");
        total = addamt1 + addamt2;
    }


    function mul(uint256 mulamt1, uint256 mulamt2) public payable {
        require(msg.sender == owner, "You are not the owner of this account");
        total= mulamt1 * mulamt2;
    }

    function div(uint256 divamt1, uint256 divamt2) public {
        require(msg.sender == owner, "You are not the owner of this account");
        total = divamt1 / divamt2;
    }
'''

 ## Author

Thomas K Shiju - (mailto:thomaskshiju000@gmail.com)

 ## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
