// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    enum EscrowStatus { AWAITING_PAYMENT, FUNDS_DEPOSITED, FUNDS_RELEASED, FUNDS_REFUNDED }

    address public buyer;
    address payable public seller;
    EscrowStatus public status;

    constructor(address _buyer, address payable _seller) {
        buyer = _buyer;
        seller = _seller;
        status = EscrowStatus.AWAITING_PAYMENT;
    }

    function depositFunds() external payable {
        require(msg.sender == buyer, "Only the buyer can deposit funds.");

        status = EscrowStatus.FUNDS_DEPOSITED;
    }

    function releaseFunds(uint256 amount) external {
        require(msg.sender == buyer, "Only the buyer can release funds.");
        require(status == EscrowStatus.FUNDS_DEPOSITED, "Funds not yet deposited.");
        require(amount <= address(this).balance, "Insufficient funds.");

        seller.transfer(amount);
        status = EscrowStatus.FUNDS_RELEASED;
    }

    function refundFunds() external {
        require(msg.sender == seller, "Only the seller can refund funds.");
        require(status == EscrowStatus.FUNDS_RELEASED, "Funds are not released yet");

        payable(buyer).transfer(address(this).balance);
        status = EscrowStatus.FUNDS_REFUNDED;
    }
}
