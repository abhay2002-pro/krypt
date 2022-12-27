require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/AEHHW0zvyNg2E-38XtucrFwawd9eyc4z',
      accounts: ['02bc32aee2d3352a9392b5cd24c91cdc0ba78375490d8ffdbcd3f408c8c97bab']
    }
  },
}

