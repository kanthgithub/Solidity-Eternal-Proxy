const arithmeticProxy = artifacts.require('../contracts/arithmetic/ArithmeticProxy');
const arithmetic = artifacts.require('../contracts/arithmetic/Arithmetic');
const arithmeticStorage = artifacts.require('../contracts/arithmetic/ArithmeticStorage');

module.exports = async function(deployer, networks, accounts) {
  const arithmeticStorage = await deployer.deploy(arithmeticStorage).then(async a => {
    console.log('arithmeticStorage contract is deployed : '+a.address);
    let con = new web3.eth.Contract(a.abi, a.address, { address: a.address });
    const arithmeticStorageAddress = a.address;
    console.log('deployed arithmeticStorage with address: '+arithmeticStorageAddress);
    });

  const arithmetic = await deployer.deploy(arithmetic).then(async a => {
    console.log('arithmeticProxy contract is deployed : '+a.address);
    let con = new web3.eth.Contract(a.abi, a.address, { address: a.address });
    const arithmeticAddress = a.address;
    console.log('deployed arithmeticProxy with address: '+arithmeticAddress);
    const constructorData = con.methods.initialize('ArithmeticLogic').encodeABI();
    console.log('deployed arithmeticProxy with constructor data: '+constructorData);
    });

  deployer.deploy(arithmeticProxy).then(async a => {
    console.log('arithmeticProxy contract is deployed : '+a.address);
    let con = new web3.eth.Contract(a.abi, a.address, { address: a.address });
    const arithmeticProxyAddress = a.address;
    console.log('deployed arithmeticProxy with address: '+arithmeticProxyAddress);
    const constructorData = con.methods.initialize('ArithmeticLogic').encodeABI();
    console.log('deployed arithmeticProxy with constructor data: '+constructorData);
    });
};
//0x246D996aA462b9ef1e2971c1105eE8cDdf24C123
//0xefc3b5db0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000f41726974686d657469634c6f6769630000000000000000000000000000000000
