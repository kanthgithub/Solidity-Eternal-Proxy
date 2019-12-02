pragma solidity ^0.5.1;

import './ArithmeticStorage.sol';

contract Arithmetic is ArithmeticStorage {

    event addEvent(uint256 indexed sum, uint256 a, uint256 b);
    event subtractEvent(uint256 indexed substract, uint256 a, uint256 b);
     string public name;
     uint256 private result;

     function initialize(string memory  _name) public {
        name = _name;
    }

    function add(uint256 a, uint256 b) public returns(uint256) {
        result = a+b;
        emit addEvent(result,a,b);
        return result;
    }

    function subtract(uint256 a, uint256 b) public returns(uint256) {
        result = a-b;
        emit subtractEvent(result,a,b);
        return result;
    }
}
