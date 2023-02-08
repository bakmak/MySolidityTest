// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Access {
    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    //  role => account => bool
    mapping(bytes32 => mapping(address => bool)) public roles;

    // 0xf23ec0bb4210edd5cba85afd05127efcd2fc6a781bfed49188da1081670b22d8
    bytes32 constant private ADMIN = keccak256(abi.encodePacked("admin"));

    // 0xcb61ad33d3763aed2bc16c0f57ff251ac638d3d03ab7550adfd3e166c2e7adb6
    bytes32 constant private USER = keccak256(abi.encodePacked("user"));

    //  授权合约部署者 ADMIN 权限
    constructor() {
        _grantRole(ADMIN, msg.sender);
    }

    modifier onlyRole(bytes32 _role) {
        require(roles[_role][msg.sender], "not authorized");
        _;
    }

    //  内部使用
    function _grantRole(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit GrantRole(_role, _account);
    }

    //  授权    外部使用
    function grantRole(bytes32 _role, address _account) external onlyRole(ADMIN) {
        _grantRole(_role, _account);
    }

    //  撤销授权
    function revokeRole(bytes32 _role, address _account) external onlyRole(ADMIN) {
        roles[_role][_account] = false;
        emit RevokeRole(_role, _account);
    }
}