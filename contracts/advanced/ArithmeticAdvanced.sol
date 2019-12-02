pragma solidity ^0.5.1;

import './ArithmeticAdvancedStorage.sol';

contract ArithmeticAdvanced is ArithmeticAdvancedStorage {
    event MultiplyEvent(uint256 indexed product, uint256 a, uint256 b);
    string public name;

     function initialize(string memory  _name) public {
        name = _name;
    }

    function multiply(uint256 a, uint256 b) public returns(uint256) {
        result = a*b;
        emit MultiplyEvent(result,a,b);
        return result;
    }
}
