# blockchain-developer-bootcamp-final-project

Repository for Consensys Academy 2021 bootcamp

## Final Project - Escrow Dapp

An Escrow implementation on Ethereum blockchain, it can be used to handle a deal between two people (payer and payee), where the payer will deposit the value untill the complete amount be filled, after that, a lawyer (the deployer wallet) can release the funds that will be sent to the payee.

### How it works

The contract is used to receive deposits from a payer wallet untill the total amount be filled. The deposits can be made in installments, untill the total amount be reached. Only when the payment is complete, a lawyer address can release the funds that will be sent to a payee address.

#### Wallets and public variable are set in that way

- **Payer** (the wallet address in charge of the money to be deposited)
- **Payee** (the wallet address that will receive the deposited money after it be released)
- **Lawyer** (the wallet responsible to release the funds to be transferred to payee)
- **Amount** (the total amount that needs to be paid by the Payer)

#### if using local deployment on Ganache

- **Payer**: it is set to the second address of your account list (`accounts[1]`)
- **Payee**: it is set to the third address of your account list (`accounts[2]`)
- **Lawyer**: it is set to the deployer address of the smart contract (msg.sender)
- **Amount**: it is set to 1000 wei during deployment

#### if using public deployment

- **Payer**: you can set it on `/migrations/2_deploy_contracts.js` file
- **Payee**: you can set it on `/migrations/2_deploy_contracts.js` file
- **Lawyer**: it is automatically set to the deployer address of the smart contract (msg.sender)
- **Amount**: it is set to 1000 wei during deployment

### Screencast using the project

`xxxx`

### Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

#### Repository

First, you will need to `clone` or `fork` the repository into your Github account:

> git clone <https://github.com/miquelTC/nft-marketplace.git>

#### Installing

First, you will need to install the dependencies. Run the following command in your terminal after cloning the main repo:

> npm install

Then, you will need to install Truffle globally by running the following command int your terminal:

> npm install -g truffle

#### Running the Tests

First, you will have to compile the smart contracts by running the following command in your terminal:

> truffle compile

Then you will have to install and run Ganache to run your blockchain locally:

<https://www.trufflesuite.com/ganache>

Then, the tests that validate your solution can be executed by runing the following command:

> truffle test

#### Deployment on Local Blockchain

Deploy the contracts on your Ganache local blockchain by running the following command:

> truffle migrate

### Using the User Interface

First of all, it is required to install Metamask wallet as a browser extension: <https://metamask.io/>

Then you should configure Metamask to connect to your local blockchain run by Ganache. This requires the following:

- Open Metamask
- Open the Network Configuration panel
- Open Custom RPC
- Configure your private network by adding <http://localhost:7545> on the URL and 1337 as a chain ID.
- Import the first Ganache Account to Metamask by copying the Account Private Key from Ganache and pasting it on Metamask
- Finally you just need to run the following command in your terminal to open the User Interface:

> npm start

Make sure to reload the page each time when interacting with different wallet addresses, to update.

### Deployment on Public Network

In order to deploy your smart contract, you must create your .env file and specify:

- `PRIVATE_KEYS` --> Private Key of the account you are using to deploy (typically the first one in the list of Ganache)
- `INFURA_API_KEY` --> API key provided by Infura: <https://infura.io>
Then, you will need to run the following command (let's use the testnet Rinkeby in this example, remember to request some Ether for your account using a faucet):

> truffle migrate --network rinkeby

Finally you can run the following command to generate the build artifacts of your User Interface and then deploy to your favourite host:

> npm run build

### Contract Address on Rinkeby

**Rinkeby**: `xxxxxxx`

### Deployed application URL

`xxxxxx`
<https://www.xxxxxxxxxxx.com/>

### Ethereum account to receive NFT certification

`0xe8F866494A09126d83cF13A71C007aB4D5c5C3eA`

### Project Struct

`+─────────────────────────────────────────────────────────────────────────────────────────────────────────────+
│             Folder structure                                        Description                             │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────+
│                                                                                                             │
│     ├── contracts                                Contracts folder.                                          │
│     │   ├── Escrow.sol                           Escrow contract.                                           │
│     │   └── Migration.sol                        Migration contract.                                        │
│     ├── migrations                               Migration folder.                                          │
│     │   ├── 1_initial_migration.js               Initial migration file to help on deployment               │
│     │   └── 2_deploy_contracts.js                Deployment file                                            │
│     ├── public                                   Folder with files used on frontend deployment.             │
│     │   ├── favicon.ico                          Favicon to webpage                                         │
│     │   ├── index.html                           Index HTML page                                            │
│     │   └── manifest.json                        Tell the brownser simple information about the page        │
│     ├── src                                      Source code.                                               │
│     │   ├── contracts                            Folder with contracts ABI files                            │
│     │       ├── Escrow.json                      Escrow ABI file                                            │
│     │       └── Migrations.json                  Migrations ABI file                                        │
│     │   ├── App.js                               Main project component.                                    │
│     │   ├── index.js                             Project entry point.                                       │
│     │   └── utils.js                             Snippets to handle with web3 injection                     │
│     ├── test                                     Test directory.                                            │
│     │   └── escrow.js                            Test for Escrow.sol contract.                              │
│     ├── avoiding_common_attacks.md               List of smart contract weaknesses.                         │
│     ├── design_attern_decisions.md               Explanation of why the design patterns where used.         │
│     ├── package-lock.json                        Project dependencies detailed.                             │
│     ├── package.json                             Project dependencies.                                      │
│     ├── README.md                                Description and instruction about the project.             │
│     ├── deployed_address.txt                     Testnet address and network where it was deployed          │
│     ├── final-project-checklist.txt              Checklist for the final project                            │
│     └── truffle-config.js                        Truffle configuration.                                     │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────+`

### Technology stack

- Solidity
- React.js
- Truffle
- Web3.js
- Ganache
- Node.js
- Metamask
- Dotenv
- Infura
