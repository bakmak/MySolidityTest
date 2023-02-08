// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

/*
0.  message to sign
1.  hash(message)
2.  sing(hash(message), private key) | offchain
3.  ecrecover(hash(message), signature) == signer
*/

contract VerifySig {
    //  验证函数
    //  _singer：签名人地址     _message：消息原文      _sig：签名结果
    function verify(address _signer, string memory _message, bytes memory _sig) external pure returns (bool) {
        bytes32 messageHash = getMessageHash(_message);
        bytes32 ethSignedMessageHsah = getEthSignerMessageHash(messageHash);

        return recover(ethSignedMessageHsah, _sig) == _signer;
    }

    //  将消息哈希运算
    //  _message：消息原文
    function getMessageHash(string memory _message) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_message));
    } 

    //  消息再进行一次哈希运算
    function getEthSignerMessageHash(bytes32 _messageHash) public pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", _messageHash));
    }

    //  恢复函数
    function recover(bytes32 _ethSignedMessageHsah, bytes memory _sig) public pure returns (address) {
        (bytes32 r, bytes32 s, uint8 v) = _split(_sig);
        return ecrecover(_ethSignedMessageHsah, v, r, s);
    }

    //  分割函数
    function _split(bytes memory _sig) internal pure returns (bytes32 r, bytes32 s, uint8 v) {
        require(_sig.length == 65,"invalid signature length");

        assembly {
            r := mload(add(_sig, 32))
            s := mload(add(_sig, 64))
            v := byte(0, mload(add(_sig, 96)))
        }
    }
}