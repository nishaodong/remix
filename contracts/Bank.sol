// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Bank {
    // 状态变量  immutable修饰的变量可以在构造函数中设置，但后续不能再更改
    address public immutable owner;
    // 事件
    event Deposit(address _ads, uint256 amount);
    event Withdraw(uint256 amount);
    // receive 接受外部发送的eth
    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }
    // 构造函数
    constructor() payable {
        owner = msg.sender;
    }
    // 取款操作
    function withdraw() external {
        require(msg.sender == owner, "Not Owner");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
        // payable(owner).transfer(address(this).balance);
    }
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}