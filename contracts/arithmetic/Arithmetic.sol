pragma solidity ^0.5.1;

import './ArithmeticStorage.sol';

contract Arithmetic is ArithmeticStorage {

    event addEvent(uint256 indexed sum, uint256 a, uint256 b);
    event subtractEvent(uint256 indexed substract, uint256 a, uint256 b);
     string public name;

     function initialize(string memory  _name) public {
        name = _name;
    }

    function add(uint256 a, uint256 b) public returns(uint256) {
        uint256 result = a+b;
        resultArray.push(result);
        emit addEvent(result,a,b);
        return result;
    }

    function subtract(uint256 a, uint256 b) public returns(uint256) {
        uint256 result = a-b;
        resultArray.push(result);
        emit subtractEvent(result,a,b);
        return result;
    }


    function div(uint256 a, uint256 b) public returns(uint256) {
        uint256 result = a/b;
        resultArray.push(result);
        return result;
    }


    function multiply(uint256 a, uint256 b) public returns(uint256) {
        uint256 result = a*b;
        resultArray.push(result);
        return result;
    }


    function doubleAdd(uint256 a, uint256 b) public returns(uint256) {
        uint256 result = 2*(a+b);
        resultArray.push(result);
        return result;
    }


    function getResult() public view returns(uint256[] memory){
        return resultArray;
    }
}
