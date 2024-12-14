
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
/// get(0) gas cost: 4860 
contract Array {
    uint256[] a;

    constructor() {
        a.push() = 1;
        a.push() = 2;
        a.push() = 3;
    }

    function get(uint256 index) external view returns(uint256) {
        return a[index];
    }
}