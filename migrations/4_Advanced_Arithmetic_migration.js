const arithmeticAdvanced = artifacts.require('../contracts/advanced/ArithmeticAdvanced');

module.exports = async function(deployer, networks, accounts) {
 
  deployer.deploy(arithmeticAdvanced).then(async a => {
    console.log('arithmeticAdvanced contract is deployed : '+a.address);
    let con = new web3.eth.Contract(a.abi, a.address, { address: a.address });
    const arithmeticProxyAddress = a.address;
    console.log('deployed arithmeticAdvanced with address: '+arithmeticProxyAddress);
    const constructorData = con.methods.initialize('ArithmeticAdvancedLogic').encodeABI();
    console.log('deployed arithmeticAdvanced with constructor data: '+constructorData);
    });
};
//0x94998fC798F3B9F97e59D0b789AfA2423079BCc5
//0xf62d18880000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000f41726974686d657469634c6f6769630000000000000000000000000000000000
