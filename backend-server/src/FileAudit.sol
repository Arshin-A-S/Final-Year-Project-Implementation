// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FileAudit {
    event AccessLogged(
        string username,
        string fileId,
        string action, // "DOWNLOAD_REQUEST"
        bool granted,
        string reason,
        uint256 timestamp
    );

    function logAccess(
        string memory _username,
        string memory _fileId,
        string memory _action,
        bool _granted,
        string memory _reason
    ) public {
        emit AccessLogged(_username, _fileId, _action, _granted, _reason, block.timestamp);
    }
}