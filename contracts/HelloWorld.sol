// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string storeMsg;

    function set(string memory message) public {
        storeMsg = message;
    }

    function get() public view returns (string memory) {
        return storeMsg;
    }
}