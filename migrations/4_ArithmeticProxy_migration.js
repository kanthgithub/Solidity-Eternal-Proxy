const arithmeticProxy = artifacts.require('../contracts/arithmetic/ArithmeticProxy');
const arithmetic = artifacts.require('../contracts/arithmetic/Arithmetic');
module.exports = async function(deployer, networks, accounts) {
  deployer.deploy(arithmeticProxy).then(async a => {
    console.log('arithmeticProxy contract is deployed : '+a.address);
    let con = new web3.eth.Contract(a.abi, a.address, { address: a.address });
    const arithmeticProxyAddress = a.address;
    console.log('deployed arithmeticProxy with address: '+arithmeticProxyAddress);
    });
};
//0x246D996aA462b9ef1e2971c1105eE8cDdf24C123

