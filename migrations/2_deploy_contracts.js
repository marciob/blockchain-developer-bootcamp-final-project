var Escrow = artifacts.require("./Escrow.sol");

/*
deployer (account[0]) = lawyer (it is the deployer, the msg.sender address), he can release the funds
accounts[1] = payer
accounts[2] = payee (receiver)
*/

const payer = "0x06A096FD3D7E5Bb1970f7c618866F68B63404022";
const payee = "0x7240Bc8dE762D5d68B9069BCB43dE50924E5B553";

module.exports = function (deployer, _network, accounts) {

  if (accounts[1] != undefined && accounts[2] != undefined) {
    deployer.deploy(Escrow, accounts[1], accounts[2], 1000);
  } else {
    deployer.deploy(Escrow, payer, payee, 1000);
  }
};
