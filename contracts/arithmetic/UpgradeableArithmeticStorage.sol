pragma solidity ^0.5.1;

import './ArithmeticStorage.sol';
import '../proxy/UpgradeabilityStorage.sol';

contract UpgradeableArithmeticStorage is UpgradeabilityStorage, ArithmeticStorage {


}