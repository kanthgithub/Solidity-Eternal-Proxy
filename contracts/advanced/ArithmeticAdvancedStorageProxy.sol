pragma solidity ^0.5.1;

import './ArithmeticAdvancedStorage.sol';
import '../proxy/UpgradeabilityProxy.sol';

/**
 * @title ArithmeticAdvancedStorageProxy
 * @dev This proxy holds the storage of the ArithmeticAdvanced contract and
 * delegates every call to the current implementation set.
 * Besides, it allows to upgrade the ArithmeticAdvanced's behaviour towards further implementations,
 * and provides basic authorization control functionalities
 */
contract ArithmeticAdvancedStorageProxy is ArithmeticAdvancedStorage, UpgradeabilityProxy {

    
}