# Functions-and-Errors-Project
## Description
The FuncNErr contract offers users the means to manipulate a numerical value, num, through the setNum, forceNum, and revertFunc functions. While setNum provides a secure way to set the value of num, forceNum requires further refinement to achieve its intended purpose. Lastly, revertFunc ensures that only distinct values can be assigned to num, maintaining data integrity. By understanding the functionality of these functions, users can effectively engage with the contract and manage the stored value.
### Setting Up

Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.

```javascript

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

```
1. Get the code from the Solidity file or copy the code above.
2. Use a Solidity compiler or development environment of your choosing to compile the Solidity code.
3. Use a tool which is Remix to release the built contract on the Ethereum network of your choosing.

The FuncNErr contract is a Solidity-based smart contract that facilitates the manipulation of a numerical value called num. The contract provides three key functions: setNum, forceNum, and revertFunc.
## Help

If you have any problems or queries when working with Solidity, see the relevant documentation for your compiler or development environment. Support from online Solidity developer groups or forums is also available.

## Authors

Mark Arceo - Mapua University
