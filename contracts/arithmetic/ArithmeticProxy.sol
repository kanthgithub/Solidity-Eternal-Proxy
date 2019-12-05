pragma solidity ^0.5.1;

import './Arithmetic.sol';
import '../proxy/UpgradeabilityProxy.sol';

/**
 * @title ArithmeticProxy
 * @dev This proxy holds the storage of the Arithmetic contract and
 * delegates every call to the current implementation set.
 * Besides, it allows to upgrade the Arithmetic's behaviour towards further implementations,
 * and provides basic authorization control functionalities
 */
contract ArithmeticProxy is Arithmetic, UpgradeabilityProxy {}