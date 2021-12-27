# Design Pattern Decisions

## Inheritance

Escrow contract inherits from `OpenZeppelin's ReentrancyGuard.sol` contract to prevent reentrancy when releasing funds

## Optimizing Gas

Any smart contract that uses `transfer()` or `send()` is taking a hard dependency on gas costs by forwarding a fixed amount of gas: 2300. Escrow contract uses `.call` as a way to be more gas affordable, instead of use `transfer()` or `send()`. Source: <https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/>

Access Control
Escrow restricts the release function to the lawyer wallet address
Escrow restricts the deposit function to the payer wallet address

## Access Control Design Patterns

in `release()`, the funds only can be released by the lawer, as a way to prevent improper release in case of litigation.
