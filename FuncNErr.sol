// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FuncNErr {
    uint public num;

    function setNum(uint _num) public {
        require(_num > 10, "Input must be greater than 10");
        num = _num;
    }

    function forceNum() public {
        assert(num == num);
        num = 100;
    }

    function revertFunc(uint _num) public {
        if (_num == num) {
            num = 0;
            revert("Num must be different");
        }
        num = _num;
    }
}
