
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
// This results in approximately 5,000 gas savings compared to the previous version.
contract StoragePointerOptimized {
    struct User {
        uint256 id;
        string name;
        uint256 lastSeen;
    }

    constructor() {
        users[0] = User(0, "John Doe", block.timestamp);
    }

    mapping(uint256 => User) public users;

    function returnLastSeenSecondsAgoOptimized(uint256 _id) public view returns (uint256) {
        User storage _user = users[_id]; 
        uint256 lastSeen = block.timestamp - _user.lastSeen;
        return lastSeen;
    }
}