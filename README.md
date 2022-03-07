# Epic NFTs
A sample project to create NFTs over Ethereum rinkeyby test network.
It uses the following components,

- [hardhat](https://hardhat.org/)
- [alchemi](https://dashboard.alchemyapi.io/) 
- [etherscan](https://etherscan.io/)
- [opensea](https://opensea.io/)

### Testing it out

- Running it on hardhat local blockchain
```
npx hardhat run scripts/run.js --verbose
```

- Deploy it on ethereum rinkeby test network
```
npx hardhat run scripts/deploy.js --network rinkeby --verbose --show-stack-traces
```

- Verify contract on etherscan
```
npx hardhat verify --contract contracts/MyEpicNFT.sol --network rinkeby
```
