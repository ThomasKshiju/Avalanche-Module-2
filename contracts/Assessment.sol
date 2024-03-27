// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
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
}
