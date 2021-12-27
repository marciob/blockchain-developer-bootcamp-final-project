# Avoiding Common Attacks

## SWC-100 - Function Default Visibility

> Functions that do not have a function visibility type specified are public by default. This can lead to a vulnerability if a developer forgot to set the visibility and a malicious user is able to make unauthorized or unintended state changes.

- All functions have specified visibility.

## SWC-102 - Outdated Compiler Version

> It is recommended to use a recent version of the Solidity compiler.

- Compiler used here is v0.8.9 which is one of the latest ones.

## SWC-103 (Floating pragma)

> Lock the pragma version and also consider known bugs (<https://github.com/ethereum/solidity/releases>) for the compiler version that is chosen.

- Pragma version is pointing to solidity version v0.8.9

## SWC-105 - Unprotected Ether Withdrawal

> Implement controls so withdrawals can only be triggered by authorized parties or according to the specs of the smart contract system.

- Thanks to access control pattern withdraw method `release()` can only be used by the lawyer of the contract.

## SWC-106 - Unprotected SELFDESTRUCT Instruction

> Consider removing the self-destruct functionality unless it is absolutely required. If there is a valid use-case, it is recommended to implement a multisig scheme so that multiple parties must approve the self-destruct action.

- self-destruct functionality is not being used.

## SWC-107 - Reentrancy Attack

> Use a reentrancy lock (ie. OpenZeppelin's ReentrancyGuard.

- Reentrancy attack is prevented by using `OpenZeppelin's ReentrancyGuard` contract

## SWC-108 - State Variable Default Visibility

> Variables can be specified as being public, internal or private. Explicitly define visibility for all state variables.

- All variables on the proeject have specific visibility.

## SWC-109 - Uninitialized Storage Pointer

> Check if the contract requires a storage object as in many situations this is actually not the case. If a local variable is sufficient, mark the storage location of the variable explicitly with the memory attribute. If a storage variable is needed then initialise it upon declaration and additionally specify the storage location storage.

- Note: As of compiler version 0.5.0 and higher this issue has been systematically resolved as contracts with uninitialised storage pointers do no longer compile.

## SWC-111 - Use of Deprecated Solidity Functions

> Solidity provides alternatives to the deprecated constructions. Most of them are aliases, thus replacing old constructions will not break current behavior.

- By using on of the latests versions of solidity this issue is being avoided.

## SWC-112 - Delegatecall to Untrusted Callee

> Use delegatecall with caution and make sure to never call into untrusted contracts. If the target address is derived from user input ensure to check it against a whitelist of trusted contracts.

- delegatecall is not being used.

## SWC-116 - Block values as a proxy for time

> Developers should write smart contracts with the notion that block values are not precise, and the use of them can lead to unexpected effects. Alternatively, they may make use oracles.

- block values are not being used.

## SWC-118 Incorrect Constructor Name

> Solidity version 0.4.22 introduces a new constructor keyword that make a constructor definitions clearer. It is therefore recommended to upgrade the contract to a recent version of the Solidity compiler and change to the new constructor declaration.

- v0.8.x of solidity has a clear way to declare constructors.

## SWC-121 - Missing Protection against Signature Replay Attacks

- Signature verification is not being performed

## SWC-122 - Lack of Proper Signature Verification

- Interaction with the contract doesn't require off-chain signatures.

## SWC-123 - Requirement Violation

> The Solidity require() construct is meant to validate external inputs of a function. In most cases, such external inputs are provided by callers, but they may also be returned by callees.

- `require()` is used to secure that certain functions can only be performed by the authorized address, such as the `release()` function that can releases funds only when called by the lawyer. It is also used to secure that the funds will be released only when the payment is totally done.

## SWC-128 - DoS With Block Gas Limit

> Caution is advised when you expect to have large arrays that grow over time. Actions that require looping across the entire data structure should be avoided.

- No array is being looped.

## SWC-131 - Presence of unused variables

> Remove all unused variables from the code base.

- There are not unused variables in the code base.

## SWC-134 - Message call with hardcoded gas amount

> Avoid the use of transfer() and send() and do not otherwise specify a fixed amount of gas when performing calls. Use .call.value(...)("") instead. Use the checks-effects-interactions pattern and/or reentrancy locks to prevent reentrancy attacks.

- transfer() and send() methods are not being used.
