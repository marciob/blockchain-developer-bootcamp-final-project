// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title An Escrow contract
/// @author Marcio B.
/// @notice You can use this contract for only the most basic simulation

contract Escrow is ReentrancyGuard {
    /// @dev payer is the wallet address that will deposit money
    /// @dev payee is the wallet address that will receive the deposited money after it be released by the lawyer
    /// @dev lawyer is the wallet address that will be able to released the money and send it to payee address
    /// @dev amount is the amount to be paid
    address public payer;
    address payable public payee;
    address public lawyer;
    uint256 public amount;

    constructor(
        address _payer,
        address payable _payee,
        uint256 _amount
    ) {
        payer = _payer;
        payee = _payee;
        lawyer = msg.sender;
        amount = _amount;
    }

    /// @notice Deposits untill the entire amount be filled, it only can be called by the payer wallet
    function deposit() public payable {
        require(msg.sender == payer, "Sender must be the payer");

        require(
            address(this).balance <= amount,
            "Cant send more than escrow amount"
        );
    }

    /// @notice It releases all the amount deposited, it only can be called by the lawyer wallet
    function release() public nonReentrant {
        require(
            address(this).balance == amount,
            "cannot release funds before full amount is sent"
        );

        require(msg.sender == lawyer, "only lawyer can release funds");

        (bool success, ) = payee.call{value: amount}("");
        require(success, "Transfer failed.");
    }

    /// @notice It shows the balance of this contract
    /// @return the balance of this contract
    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }
}
